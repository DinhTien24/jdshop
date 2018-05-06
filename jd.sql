﻿CREATE DATABASE JD
USE JD
drop database jd

drop table type
drop table product
drop table image_product
drop table discount_detail
drop table discount_product
drop table order_line
drop table sale_order

CREATE TABLE users
(
  id INT IDENTITY(1,1),
  username nvarchar(100) ,
  password nvarchar(200) ,
  auth_key nvarchar(200),
  name nvarchar(200) ,
  dob date ,
  phone nvarchar(200) ,
  role INT ,
  address nvarchar(200) ,
  email nvarchar(200) ,
  status INT ,
  PRIMARY KEY (id)
);

--- EXEC sp_RENAME 'users.addpress' , 'address', 'COLUMN'  -- sửa tên addpress -> address

CREATE TABLE type
(
  id INT IDENTITY(1,1),
  name NVARCHAR(100) ,
  gender NVARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE discount_product
(
  id INT IDENTITY(1,1),
  info NVARCHAR(100) ,
  discount INT ,
  created_date datetime ,
  begin_date DATE ,
  end_date DATE ,
  created_uid INT ,
  PRIMARY KEY (id),
  FOREIGN KEY (created_uid) REFERENCES users(id)
);

CREATE TABLE product
(
  id INT IDENTITY(1,1),
  name varchar(100) ,
  price INT ,
  created_date datetime ,
  status INT ,
  code NVARCHAR(100) ,
  size INT ,
  amount INT ,
  info NVARCHAR(900) ,
  id_type INT ,
  created_uid INT ,
  id_discount INT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_type) REFERENCES type(id),
  FOREIGN KEY (created_uid) REFERENCES users(id),
  FOREIGN KEY (id_discount) REFERENCES discount_product(id)
);

CREATE TABLE image_product
(
  id INT IDENTITY(1,1),
  link NVARCHAR(200) ,
  id_product INT ,
  PRIMARY KEY (id),
  FOREIGN KEY (id_product) REFERENCES product(id)
);

CREATE TABLE sale_order
(
  total_price INT ,
  id INT IDENTITY(1,1),
  bill_code NVARCHAR(20) ,
  status INT ,
  created_date datetime ,
  id_user INT ,
  PRIMARY KEY (id),
  FOREIGN KEY (id_user) REFERENCES users(id)
);

CREATE TABLE order_line
(
  id INT IDENTITY(1,1),
  amount INT ,
  size_product INT ,
  sum_price INT ,
  code_color INT ,
  id_product INT ,
  id_bill INT ,
  PRIMARY KEY (id),
  FOREIGN KEY (id_product) REFERENCES product(id),
  FOREIGN KEY (id_bill) REFERENCES sale_order(id)
);
-- Bỏ discount_detail

--CREATE TABLE discount_detail
--(
--	id INT IDENTITY(1,1),
--	id_discount INT ,
--	id_product INT ,
--	PRIMARY KEY (id),
--	FOREIGN KEY (id_discount) REFERENCES discount_product(id),
--	FOREIGN KEY (id_product) REFERENCES product(id)
--);


---Chú thích trạng thái của sale-order
---1: Nháp
---2: Đơn hàng
---3: Đã thanh toán
---4: Hủy

---Chú thích trạng thái của user
-- 1 : admin
-- 2 : quản lý
-- 3 : nhân viên 
-- 4 : khách hàng

---- Demo -- hệ quản trị CSDL

-- 1 .  Mất dữ liệu cập nhật (Lost update)
-- Tình trạng này xảy ra khi có nhiều hơn một giao tác cùng thực hiện cập nhật
-- trên 1 đơn vị dữ liệu. Khi đó, tác dụng của giao tác cập nhật thực hiện sau
-- sẽ đè lên tác dụng của thao tác cập nhật trước.
-- => Kịch bản : 2 admin cùng cập nhật lại số tiền của một sản phẩm, hoặc thông tin
-- khuyến mãi cho nhiều sản phẩm
-- Vd : nhận yêu cầu giảm giá tiền của sản phầm A bớt đi 100k.

