﻿-- Cycle deadlock
-- kịch bản
-- ----------- XOACHITIETHOADON
-- xoá chi tiết hoá đơn [order_line]
-- cập nhật hoá đơn [sale_order] 
-------------- CAPNHATTRANGTHAIHOADON
-- cập nhật trạng thái hoá đơn [sale_order]  từ 1,2,3 -> 0, 4->0
-- xoá chi tiết [order_line]

USE JD
-----------------------------------------------------------------------
-- Mô tả Xoá chi tiết hoá đơn --
-----------------------------------------------------------------------
-- Lấy id hoá đơn, xoá đi chi tiết hoá đơn
-- Tính lại tổng thành tiền của hoá đơn
-- kiếm tra tổng thành tiền 
-- Nếu bằng 0 thì chuyển trạng thái hoá đơn thành huỷ
-- Nếu khác 0 thì cập nhật lại tổng thành tiền cho hoá đơn
-----------------------------------------------------------------------

Drop procedure XOACHITIETHOADON
go
create PROCEDURE XOACHITIETHOADON 
@ID_ORDER_LINE INT
AS
BEGIN
		DECLARE @ID_SALE_ORDER INT
		DECLARE @PRICE INT
		SET @PRICE = 0
			--SET TRANSACTION ISOLATION LEVEL Serializable ---- deadlock
			BEGIN TRAN 
				SELECT @ID_SALE_ORDER =  [order_line].[id_bill] FROM [order_line] WHERE [order_line].[id] = @ID_ORDER_LINE
				DELETE FROM [order_line] WHERE  [order_line].[id] = @ID_ORDER_LINE   
		
				SELECT @PRICE = SUM([order_line].[sum_price]) FROM [order_line] WHERE [order_line].[id_bill] = @ID_SALE_ORDER 
				--PRINT @ID_SALE_ORDER
				--PRINT @PRICE
				IF @PRICE = 0
					BEGIN
						waitfor delay '00:00:10'
						UPDATE [sale_order] SET [sale_order].[status] = 0 WHERE [sale_order].[id] = @ID_SALE_ORDER
						PRINT @PRICE
					END
				ELSE
					BEGIN
						waitfor delay '00:00:10'
						UPDATE [sale_order]
						SET [sale_order].[total_price] = @PRICE
						WHERE [sale_order].[id] = @ID_SALE_ORDER
						PRINT @PRICE
					END
			commit Tran
END




-----------------------------------------------------------------------
---Chú thích trạng thái của sale-order
---1: Giỏ hàng (Tạo bởi khách hàng)
---2: Nháp (Tạo bởi admin)
---3: Đơn hàng
---4: Đã thanh toán
---0: Hủy
-----------------------------------------------------------------------
---- Cập nhật trạng thái hoá đơn --
--TH1:  Nếu trạng thái cũ là 4 HOẶC 0 HOẶC Nếu trạng thái mới bằng trạng thái cũ thì roll back.
--TH2: Nếu trạng thái mới khác 0 và trạng thái cũ khác 4 thì chỉ cập nhật trạng thái.(từ thanh toán qua huỷ)
--TH3: Nếu trạng thái mới là 0 và trạng thái cũ là  1,2,3 thì xoá hết chi tiết hoá đơn của hoá đơn đó.
-----------------------------------------------------------------------
Drop procedure CAPNHATTRANGTHAIHOADON
go
create PROCEDURE CAPNHATTRANGTHAIHOADON
@ID_SALE_ORDER INT, @STATUS_NEW INT
AS
BEGIN
	BEGIN TRY  
		DECLARE @STATUS_OLD INT 
		SET TRANSACTION ISOLATION LEVEL Serializable
		BEGIN TRAN T2
			SELECT @STATUS_OLD = [sale_order].[status] FROM [sale_order] WHERE  [sale_order].[id] = @ID_SALE_ORDER   
			IF @STATUS_OLD = 4 OR @STATUS_OLD = 0 OR @STATUS_NEW = @STATUS_OLD
			BEGIN 
				ROLLBACK TRAN
				PRINT 'TRƯỜNG HỢP 1' 
			END
			IF @STATUS_NEW != 0 AND ( @STATUS_OLD != 4 OR @STATUS_OLD != 0 ) -- chặn 0 nếu 0 thì phải xoá order_line
			BEGIN 
				UPDATE [sale_order] SET [sale_order].[status] = @STATUS_NEW WHERE [sale_order].[id] = @ID_SALE_ORDER  
				PRINT 'TRƯỜNG HỢP 2' 
			END
			IF @STATUS_NEW =0  AND @STATUS_OLD != 4
			BEGIN
				 waitfor delay '00:00:10'
				 UPDATE [sale_order] SET [sale_order].[status] = @STATUS_NEW WHERE [sale_order].[id] = @ID_SALE_ORDER
				
				 DELETE FROM [order_line] WHERE  [order_line].[id_bill] = @ID_SALE_ORDER  
				 PRINT 'TRƯỜNG HỢP 3' 
			END 
		COMMIT TRAN T2
	END TRY  
	BEGIN CATCH  
		print 'ER'
	END CATCH  
END

DROP PROC CAPNHATTRANGTHAIHOADON

EXEC CAPNHATTRANGTHAIHOADON 1,0
--------------------------------------------------------------------
SELECT TOP 1000 [total_price]
      ,[id]
      ,[bill_code]
      ,[status]
      ,[created_date]
      ,[id_user]
  FROM [JD].[dbo].[sale_order]


SELECT TOP 1000 [id]
      ,[amount]
      ,[size_product]
      ,[sum_price]
      ,[code_color]
      ,[id_product]
      ,[id_bill]
  FROM [JD].[dbo].[order_line]


  SELECT SUM([order_line].[sum_price]) FROM [order_line] WHERE [order_line].[id_bill] = 4

  ------------------------------------- Test deadlock -----------------------------------


  -- Dữ liệu test --
  SET IDENTITY_INSERT [sale_order] off
  INSERT INTO [sale_order] ([total_price],[id],[status],[created_date],[id_user])
  VALUES ('40000',1000,1,NULL,10)
  -----------------
  SET IDENTITY_INSERT [order_line] on
  -----------------------------------
  INSERT INTO [order_line] ([id],[amount],[size_product],[sum_price],[id_product],[id_bill])
  VALUES (1000,100,9,20000,4,1000)
  INSERT INTO [order_line] ([id],[amount],[size_product],[sum_price],[id_product],[id_bill])
  VALUES (1001,100,9,10000,3,1000)
  INSERT INTO [order_line] ([id],[amount],[size_product],[sum_price],[id_product],[id_bill])
  VALUES (1002,100,9,15000,2,1000)
  -------------------------------------------------------------------------------
  UPDATE [sale_order] SET [sale_order].[status] = 1 WHERE [sale_order].[id] = 1000
  -------------------------------------------------------------------------------
  -- Kịch bản test
  -- cập nhật hoá đơn 
 
  EXEC XOACHITIETHOADON 1001
  -- chạy song song 
   EXEC CAPNHATTRANGTHAIHOADON 1000,0
  --Msg 1205, Level 13, State 51, Procedure XOACHITIETHOADON, Line 22
  --Transaction (Process ID 51) was deadlocked on lock resources with another process and has been chosen as the deadlock victim. Rerun the transaction.
--------------------------------------------------------------------
SELECT  [total_price]
      ,[id]
      ,[status]
      ,[created_date]
      ,[id_user]
  FROM [JD].[dbo].[sale_order]
  WHERE [id] = 1000
--------------------------------------------------------------------

SELECT TOP 1000 [id]
      ,[amount]
      ,[size_product]
      ,[sum_price]
      ,[id_product]
      ,[id_bill]
  FROM [JD].[dbo].[order_line]
  WHERE [id] IN (1000,1001,1002)

