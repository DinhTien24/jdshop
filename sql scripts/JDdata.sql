use JD
set dateformat dmy
--dữ liệu user
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('NguyenTien','23467323','',N'Nguyễn Thị Cẩm Tiên','27/3/2001','1283742934',1,N'72/23/Hòa  Bình','tiennnt228@gmail.com',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('NguyenTu','144668235','',N'Nguyễn Đình Tú','1/12/1894','1248250252',3,N'68 điện bien phủ','tu67234@gmail.com',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('TranLoan22','583435457','',N'Trần Thị Loan','1/12/1895','1639814263',2,N'chư sê, gia lai','234bajdvf@gmail.com',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('DinhTien','zgb4235','',N'Lê Đình Tiến','3/8/1887','1638762949',1,N'buôn mê thuột','15502880@gm.uit.edu.vn',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('LamLam123','sh64735vd','',N'Thái Bảo Duy Lâm','25/9/1893','1673945034',4,N'đắk nông','lamlam259@gmail.com',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('KietLe','sfhh56789','',N'Lê Viết Kiệt','30/4/1954','1282349595',4,N'đồng nai','kietleeeee@gmail.com',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('LoanLeNguyen','zxcv356','',N'Nguyễn Thị Loan Lê','17/12/1888','1249395345',2,N'Biên hòa','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('Tinhtran1209','agfjhgkrwey2435','',N'Trần Tinh','13/1/2000','9583453455',4,N'THủ dầu một','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('sauToan1997','zvxcvcnx 112','',N'Phạm Đình Toàn','18/5/1997','9038325855',3,N'6/34/12, long phước','ewr56ght@gm.vn',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('888TuLe','1230987352','',N'Lê Tú Thảo','26/10/1996','9048475345',2,N'Thủ  đức','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('DatHoang10','4236!325!','',N'Hoàng Bảo Đạt','16/10/1992','8347593345',4,N'cà mau','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('Tuan78chusu','fdhgfj@@@','',N'Phan Việt Tuấn','18/2/1997','123679878',3,N'Kiên giang','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('Chinsnnuocmam','fdhtu*24235','',N'Hoàng Mẫn','24/6/1995','2534634533',4,N'Tiền Giang','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('cakhothom','jksncmdsn','',N'Bành Thị Thơm','17/7/1997','1912482054',2,N'Mỹ Tho, Tiền Giang','thombanhthi@gmail.com',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('thiettinhle','ag3326hdbv','',N'Lê Thiết Tính','18/8/1998','12432543764',1,N'Long An','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('cacom76dung','dsfafsdv','',N'Mã Văn Dũng','18/8/1999','16836554893',3,N'Chư Bứ','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('beheokute','cca23456','',N'Phaạm Thị Heo','20/10/2011','16425992363',4,N'Pleiku','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('HoanThIenIn','2456hoan','',N'Mai Đào Thơm','18/4/1998','90724583458',2,N'Quận 1','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('NLhangHHH','NLhangHHH','',N'Mai Bảo Thắng','28/1/1997','24543364436',2,N'quận 2','',1)
INSERT INTO users(username,password,auth_key,name,dob,phone,role,address,email,status) values('admin','admin','',N'Phạm Thành Nghĩa','19/9/2000','36347456345',1,N'quận 7','nghia@gmail.com',1)

---dữ liệu sale_order
insert into sale_order(created_date,id_user) values('23-06-2017',6)
insert into sale_order(created_date,id_user) values('24-06-2017',7)
insert into sale_order(created_date,id_user) values('28-04-2017',7)
insert into sale_order(created_date,id_user) values('11-07-2017',15)
insert into sale_order(created_date,id_user) values('10-03-2017',3)
insert into sale_order(created_date,id_user) values('17-03-2017',2)
insert into sale_order(created_date,id_user) values('19-12-2017',7)
insert into sale_order(created_date,id_user) values('22-09-2017',7)
insert into sale_order(created_date,id_user) values('13-08-2017',17)
insert into sale_order(created_date,id_user) values('24-07-2017',20)
insert into sale_order(created_date,id_user) values('07-06-2017',5)
insert into sale_order(created_date,id_user) values('14-03-2017',8)
insert into sale_order(created_date,id_user) values('20-11-2017',18)
insert into sale_order(created_date,id_user) values('14-09-2017',5)
insert into sale_order(created_date,id_user) values('18-04-2017',19)
insert into sale_order(created_date,id_user) values('24-02-2017',3)
insert into sale_order(created_date,id_user) values('16-11-2017',2)
insert into sale_order(created_date,id_user) values('27-02-2017',20)
insert into sale_order(created_date,id_user) values('28-10-2017',9)
insert into sale_order(created_date,id_user) values('29-07-2017',15)
insert into sale_order(created_date,id_user) values('15-01-2017',3)
insert into sale_order(created_date,id_user) values('17-10-2017',18)
insert into sale_order(created_date,id_user) values('16-02-2017',2)
insert into sale_order(created_date,id_user) values('30-11-2017',15)
insert into sale_order(created_date,id_user) values('15-11-2017',19)
insert into sale_order(created_date,id_user) values('30-03-2017',13)
insert into sale_order(created_date,id_user) values('01-11-2017',19)
insert into sale_order(created_date,id_user) values('22-07-2017',5)
insert into sale_order(created_date,id_user) values('17-03-2017',21)
insert into sale_order(created_date,id_user) values('02-10-2017',11)
insert into sale_order(created_date,id_user) values('30-04-2017',18)
insert into sale_order(created_date,id_user) values('15-01-2017',15)
insert into sale_order(created_date,id_user) values('15-06-2017',11)
insert into sale_order(created_date,id_user) values('10-05-2017',20)
insert into sale_order(created_date,id_user) values('06-06-2017',9)
insert into sale_order(created_date,id_user) values('26-06-2017',4)
insert into sale_order(created_date,id_user) values('11-05-2017',12)
insert into sale_order(created_date,id_user) values('08-12-2017',2)
insert into sale_order(created_date,id_user) values('23-09-2017',8)
insert into sale_order(created_date,id_user) values('11-07-2017',6)
insert into sale_order(created_date,id_user) values('01-01-2017',10)
insert into sale_order(created_date,id_user) values('22-02-2017',3)
insert into sale_order(created_date,id_user) values('22-11-2017',2)
insert into sale_order(created_date,id_user) values('24-07-2017',12)
insert into sale_order(created_date,id_user) values('09-11-2017',7)
insert into sale_order(created_date,id_user) values('19-04-2017',18)
insert into sale_order(created_date,id_user) values('29-12-2017',2)
insert into sale_order(created_date,id_user) values('19-07-2017',18)
insert into sale_order(created_date,id_user) values('08-08-2017',19)

--dữ liệu type
insert into type(name,gender) values(N'Nhẫn',N'Nữ')
insert into type(name,gender) values(N'Bông tai',N'Nữ')
insert into type(name,gender) values(N'Dây chuyền',N'Nữ')
insert into type(name,gender) values(N'Lắc tay',N'Nữ')
insert into type(name,gender) values(N'Lắc chân',N'Nữ')
insert into type(name,gender) values(N'Nhẫn',N'Nam')
insert into type(name,gender) values(N'Bông tai',N'Nam')
insert into type(name,gender) values(N'Dây chuyền',N'Nam')
insert into type(name,gender) values(N'Bông tai',N'Trẻ em')
insert into type(name,gender) values(N'Dây chuyền',N'Trẻ em')
insert into type(name,gender) values(N'Lắc tay',N'Trẻ em')
insert into type(name,gender) values(N'Lắc chân',N'Trẻ em')
insert into type(name,gender) values(N'Trang sức cưới truyền thống',N'')
insert into type(name,gender) values(N'Trang sức cưới hiện đại',N'')
insert into type(name,gender) values(N'Quà tặng cầu hôn',N'')
insert into type(name,gender) values(N'Quà tặng sinh nhật',N'')
insert into type(name,gender) values(N'Quà tặng kỉ niệm',N'')

--dữ liệu product
insert into product(name, created_date, status, code, id_type,created_uid) values(N'NHẪN PNJ VÀNG TRẮNG 14K ĐÍNH NGỌC TRAI FRESHWATER','01/04/2018',1,'GNDRWB81716.602',1,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'NHẪN PNJ PHƯỢNG HOÀNG VÀNG TRẮNG 14K ĐÍNH ĐÁ RUBY','01/04/2018',1,'NTRWA81098.301',6,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'NHẪN PNJ PHƯỢNG HOÀNG VÀNG 18K ĐÍNH ĐÁ RUBY','01/04/2018',1,'NDRYB81098.600',6,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'NHẪN PNJ VÀNG TRẮNG 14K ĐÍNH ĐÁ SAPPHIRE','01/04/2018',1,'GNDRWA69857.600',1,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'NHẪN BẠC PNJSILVER ĐÍNH ĐÁ MÀU XANH','01/04/2018',1,'SND2KN08343.400',1,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'NHẪN BẠC DIY PNJSILVER ENAMEL HÌNH BÔNG HOA','01/04/2018',1,' SNNIKK14460.000',1,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'NHẪN BẠC DIY PNJSILVER ENAMEL','01/04/2018',1,'SNNIKK14459.000',1,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'NHẪN PNJ VÀNG 14K ĐÍNH NGỌC TRAI FRESHWATER','01/04/2018',1,'GNHRYB89607.601',1,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'NHẪN NAM PNJ VÀNG TRẮNG 14K ĐÍNH ĐÁ SAPHIRE','01/04/2018',1,'GNTRWA17581.600',6,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'BÔNG TAI PNJ PHƯỢNG HOÀNG VÀNG TRẮNG 14K ĐÍNH ĐÁ RUBY','01/04/2018',1,'GBDRWA81097.300',2,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'BÔNG TAI PNJ VÀNG 18K ĐÍNH ĐÁ CITRINE','01/04/2018',1,'GBDRCB87733.600',2,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'BÔNG TAI PNJ VÀNG 18K ĐÍNH ĐÁ CITRINE','01/04/2018',1,'GBDRYA72642.600',2,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'BÔNG TAI KIM CƯƠNG PNJ VÀNG TRẮNG 14K','01/04/2018',1,'GBDRWA57853.5A0',2,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'BÔNG TAI PNJ VÀNG 14K ĐÍNH NGỌC TRAI FRESHWATER','01/04/2018',1,'GBDRYB89604.601',2,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'BÔNG TAI PNJ VÀNG TRẮNG 14K ĐÍNH ĐÁ TOPAZ','01/04/2018',1,'MS: GBDRWB87739.600',2,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'ÔNG TAI KIM CƯƠNG PNJ VÀNG TRẮNG 14K','01/04/2018',1,'GBDRWA88371.5A0',2,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'BÔNG TAI BẠC HÌNH TRÁI TIM PNJSILVER FRIENDZONE BREAKER ĐÍNH NGỌC TRAI','01/04/2018',1,'SBD2KN14382.200',2,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'BÔNG TAI BẠC HÌNH TAM GIÁC PNJSILVER FRIENDZONE BREAKER ĐÍNH NGỌC TRAI','01/04/2018',1,'SBD2KN14410.200',2,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'LẮC TAY PNJ VÀNG TRẮNG 14K ĐÍNH ĐÁ SAPHIRE','01/04/2018',1,'GLDRWB81514.604',4,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'LẮC TAY BẠC Ý PNJSILVER','01/04/2018',1,'SLNIKK14531.000',4,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'VÒNG TAY BẠC DIY PNJSILVER ENAMEL HÌNH BÔNG HOA','01/04/2018',1,'SVNIKK14461.000',4,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'LẮC TAY PNJ PHƯỢNG HOÀNG VÀNG TRẮNG 14K ĐÍNH ĐÁ RUBY','01/04/2018',1,'GLTRWA81099.301',4,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'KIỀNG BẠC Ý PNJSILVER','01/04/2018',1,'SHNIKK14496.000',5,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'LẮC TAY BẠC Ý PNJSILVER','01/04/2018',1,'SLNIKK14520.000',4,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'LẮC TAY BẠC PNJSILVER ĐÍNH ĐÁ','01/04/2018',1,'SLNIKK14456.000',4,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'VÒNG TAY PNJ HOA HỒNG VÀNG TRẮNG 14K ĐÍNH NGỌC TRAI FRESHWATER','01/04/2018',1,'GVDRWB89466.601',4,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'VÒNG TAY PNJ VÀNG TRẮNG 14K ĐÍNH NGỌC TRAI AKOYA','01/04/2018',1,'GVDRWB87737.600',4,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'MẶT DÂY CHUYỀN PNJ VÀNG 18K ĐÍNH ĐÁ CITRINE','01/04/2018',1,'GMDRCB87732.600',3,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'DÂY CỔ PNJ PHƯỢNG HOÀNG VÀNG 18K ĐÍNH ĐÁ RUBY','01/04/2018',1,'GCDRYB81096.601',3,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'MẶT DÂY CHUYỀN PNJ VÀNG TRẮNG 14K ĐÍNH NGỌC TRAI AKOYA','01/04/2018',1,'GMDRWB85765.601',3,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'MẶT DÂY CHUYỀN KIM CƯƠNG PNJ VÀNG TRẮNG 14K','01/04/2018',1,'GMDRWA70133.5A1',3,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'MẶT DÂY CHUYỀN PNJ VÀNG TRẮNG 14K ĐÍNH ĐÁ TOPAZ','01/04/2018',1,'GMDRWB87738.600',3,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'MẶT DÂY CHUYỀN KIM CƯƠNG PNJ FIRST DIAMOND VÀNG 14K','01/04/2018',1,'GMDRHA87585.5A0',3,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'MẶT DÂY CHUYỀN BẠC HÌNH TRÁI TIM PNJSILVER FRIENDZONE BREAKER ĐÍNH NGỌC TRAI','01/04/2018',1,'SMD2KN14381.200',3,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'DÂY CỔ BẠC HÌNH TAM GIÁC PNJSILVER FRIENDZONE BREAKER ĐÍNH NGỌC TRAI','01/04/2018',1,'SCH2KK14409.200',3,21)
insert into product(name, created_date, status, code, id_type,created_uid) values(N'MẶT DÂY CHUYỀN BẠC PNJSILVER FRIENDZONE BREAKER ĐÍNH NGỌC TRAI','01/04/2018',1,'MS: SMD2KN14406.200',3,21)

--dữ liệu product_detail
INSERT INTO product_detail(size,price,amount,id_product) values (10,5815000,100,1)
INSERT INTO product_detail(size,price,amount,id_product) values (10.5,5942000,100,1)
INSERT INTO product_detail(size,price,amount,id_product) values (11,5959000,100,1)
INSERT INTO product_detail(size,price,amount,id_product) values (12,5980000,100,1)
INSERT INTO product_detail(size,price,amount,id_product) values (13,6029000,100,1)
INSERT INTO product_detail(size,price,amount,id_product) values (9,36526000,100,2)
INSERT INTO product_detail(size,price,amount,id_product) values (10,20170000,100,3)
INSERT INTO product_detail(size,price,amount,id_product) values (12,19770000,100,3)
INSERT INTO product_detail(size,price,amount,id_product) values (13,20195000,100,3)
INSERT INTO product_detail(size,price,amount,id_product) values (14,20037000,100,3)
INSERT INTO product_detail(size,price,amount,id_product) values (9,9530000,100,4)
INSERT INTO product_detail(size,price,amount,id_product) values (10,9645000,100,4)
INSERT INTO product_detail(size,price,amount,id_product) values (11,9799000,100,4)
INSERT INTO product_detail(size,price,amount,id_product) values (12,9894000,100,4)
INSERT INTO product_detail(size,price,amount,id_product) values (10,466000,100,5)
INSERT INTO product_detail(size,price,amount,id_product) values (10,680000,100,6)
INSERT INTO product_detail(size,price,amount,id_product) values (11,680000,100,6)
INSERT INTO product_detail(size,price,amount,id_product) values (12,680000,100,6)
INSERT INTO product_detail(size,price,amount,id_product) values (13,680000,100,6)
INSERT INTO product_detail(size,price,amount,id_product) values (14,680000,100,6)
INSERT INTO product_detail(size,price,amount,id_product) values (20,680000,100,6)
INSERT INTO product_detail(size,price,amount,id_product) values (10,720000,100,7)
INSERT INTO product_detail(size,price,amount,id_product) values (11,720000,100,7)
INSERT INTO product_detail(size,price,amount,id_product) values (12,720000,100,7)
INSERT INTO product_detail(size,price,amount,id_product) values (13,720000,100,7)
INSERT INTO product_detail(size,price,amount,id_product) values (13.5,720000,100,7)
INSERT INTO product_detail(size,price,amount,id_product) values (14,720000,100,7)
INSERT INTO product_detail(size,price,amount,id_product) values (15,720000,100,7)
INSERT INTO product_detail(size,price,amount,id_product) values (16,720000,100,7)
INSERT INTO product_detail(size,price,amount,id_product) values (20,720000,100,7)
INSERT INTO product_detail(size,price,amount,id_product) values (8,3879000,100,8)
INSERT INTO product_detail(size,price,amount,id_product) values (10,3831000,100,8)
INSERT INTO product_detail(size,price,amount,id_product) values (11,3967000,100,8)
INSERT INTO product_detail(size,price,amount,id_product) values (12,3986000,100,8)
INSERT INTO product_detail(size,price,amount,id_product) values (13,3995000,100,8)
INSERT INTO product_detail(size,price,amount,id_product) values (17,26573000,100,9)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,57381000,100,10)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,6008000,100,11)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,6030000,100,12)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,20927000,100,13)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,5843000,100,14)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,7599000,100,15)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,56652000,100,16)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,492000,100,17)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,475000,100,18)
INSERT INTO product_detail(size,price,amount,id_product) values (16,15388000,100,19)
INSERT INTO product_detail(size,price,amount,id_product) values (19,2890000,100,20)
INSERT INTO product_detail(size,price,amount,id_product) values (50,1661000,100,21)
INSERT INTO product_detail(size,price,amount,id_product) values (52,1661000,100,21)
INSERT INTO product_detail(size,price,amount,id_product) values (53,1661000,100,21)
INSERT INTO product_detail(size,price,amount,id_product) values (54,1661000,100,21)
INSERT INTO product_detail(size,price,amount,id_product) values (55,1661000,100,21)
INSERT INTO product_detail(size,price,amount,id_product) values (15,57156000,100,22)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,4590000,100,23)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,1990000,100,24)
INSERT INTO product_detail(size,price,amount,id_product) values (16,520000,100,25)
INSERT INTO product_detail(size,price,amount,id_product) values (17,520000,100,25)
INSERT INTO product_detail(size,price,amount,id_product) values (18,520000,100,25)
INSERT INTO product_detail(size,price,amount,id_product) values (19,520000,100,25)
INSERT INTO product_detail(size,price,amount,id_product) values (23,520000,100,25)
INSERT INTO product_detail(size,price,amount,id_product) values (24,520000,100,25)
INSERT INTO product_detail(size,price,amount,id_product) values (45,520000,100,25)
INSERT INTO product_detail(size,price,amount,id_product) values (49,17058000,100,26)
INSERT INTO product_detail(size,price,amount,id_product) values (51,17430000,100,26)
INSERT INTO product_detail(size,price,amount,id_product) values (52,17273000,100,26)
INSERT INTO product_detail(size,price,amount,id_product) values (53,17515000,100,26)
INSERT INTO product_detail(size,price,amount,id_product) values (54,19693000,100,26)
INSERT INTO product_detail(size,price,amount,id_product) values (50,16312000,100,27)
INSERT INTO product_detail(size,price,amount,id_product) values (51,16110000,100,27)
INSERT INTO product_detail(size,price,amount,id_product) values (52,16155000,100,27)
INSERT INTO product_detail(size,price,amount,id_product) values (53,16443000,100,27)
INSERT INTO product_detail(size,price,amount,id_product) values (54,16799000,100,27)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,6868000,100,28)
INSERT INTO product_detail(size,price,amount,id_product) values (42,150832000,100,29)
INSERT INTO product_detail(size,price,amount,id_product) values (43,150414000,100,29)
INSERT INTO product_detail(size,price,amount,id_product) values (45,148592000,100,29)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,13760000,100,30)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,33128000,100,31)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,5142000,100,32)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,4758000,100,33)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,436000,100,34)
INSERT INTO product_detail(size,price,amount,id_product) values (40,649000,100,35)
INSERT INTO product_detail(size,price,amount,id_product) values (41,649000,100,35)
INSERT INTO product_detail(size,price,amount,id_product) values (42,649000,100,35)
INSERT INTO product_detail(size,price,amount,id_product) values (43,649000,100,35)
INSERT INTO product_detail(size,price,amount,id_product) values (44,649000,100,35)
INSERT INTO product_detail(size,price,amount,id_product) values (45,649000,100,35)
INSERT INTO product_detail(size,price,amount,id_product) values (NULL,507000,100,36)

--dữ liệu order_line
insert into order_line(amount,id_product,id_bill) values (2,14,1)
insert into order_line(amount,id_product,id_bill) values (1,3,2)
insert into order_line(amount,id_product,id_bill) values (2,11,3)
insert into order_line(amount,id_product,id_bill) values (1,11,4)
insert into order_line(amount,id_product,id_bill) values (1,19,5)
insert into order_line(amount,id_product,id_bill) values (2,8,6)
insert into order_line(amount,id_product,id_bill) values (1,2,7)
insert into order_line(amount,id_product,id_bill) values (1,4,8)
insert into order_line(amount,id_product,id_bill) values (1,27,9)
insert into order_line(amount,id_product,id_bill) values (1,3,10)
insert into order_line(amount,id_product,id_bill) values (1,19,11)
insert into order_line(amount,id_product,id_bill) values (1,29,12)
insert into order_line(amount,id_product,id_bill) values (2,22,13)
insert into order_line(amount,id_product,id_bill) values (1,4,14)
insert into order_line(amount,id_product,id_bill) values (1,24,15)
insert into order_line(amount,id_product,id_bill) values (2,29,16)
insert into order_line(amount,id_product,id_bill) values (1,17,17)
insert into order_line(amount,id_product,id_bill) values (1,30,18)
insert into order_line(amount,id_product,id_bill) values (1,34,19)
insert into order_line(amount,id_product,id_bill) values (1,6,20)
insert into order_line(amount,id_product,id_bill) values (1,30,21)
insert into order_line(amount,id_product,id_bill) values (1,30,22)
insert into order_line(amount,id_product,id_bill) values (2,6,23)
insert into order_line(amount,id_product,id_bill) values (2,32,24)
insert into order_line(amount,id_product,id_bill) values (2,33,25)
insert into order_line(amount,id_product,id_bill) values (2,24,26)
insert into order_line(amount,id_product,id_bill) values (2,17,27)
insert into order_line(amount,id_product,id_bill) values (1,20,28)
insert into order_line(amount,id_product,id_bill) values (1,20,29)
insert into order_line(amount,id_product,id_bill) values (2,16,30)
insert into order_line(amount,id_product,id_bill) values (1,13,31)
insert into order_line(amount,id_product,id_bill) values (1,33,32)
insert into order_line(amount,id_product,id_bill) values (1,31,33)
insert into order_line(amount,id_product,id_bill) values (2,23,34)
insert into order_line(amount,id_product,id_bill) values (2,5,35)
insert into order_line(amount,id_product,id_bill) values (2,1,36)
insert into order_line(amount,id_product,id_bill) values (2,22,37)
insert into order_line(amount,id_product,id_bill) values (2,35,38)
insert into order_line(amount,id_product,id_bill) values (1,32,39)
insert into order_line(amount,id_product,id_bill) values (1,20,40)
insert into order_line(amount,id_product,id_bill) values (1,21,41)
insert into order_line(amount,id_product,id_bill) values (1,16,42)
insert into order_line(amount,id_product,id_bill) values (2,27,43)
insert into order_line(amount,id_product,id_bill) values (1,36,44)
insert into order_line(amount,id_product,id_bill) values (2,30,45)
insert into order_line(amount,id_product,id_bill) values (1,17,46)
insert into order_line(amount,id_product,id_bill) values (1,30,47)
insert into order_line(amount,id_product,id_bill) values (2,19,48)
insert into order_line(amount,id_product,id_bill) values (1,13,49)
insert into order_line(amount,id_product,id_bill) values (1,19,31)
insert into order_line(amount,id_product,id_bill) values (1,24,8)
insert into order_line(amount,id_product,id_bill) values (1,27,23)
insert into order_line(amount,id_product,id_bill) values (2,17,31)
insert into order_line(amount,id_product,id_bill) values (1,2,14)
insert into order_line(amount,id_product,id_bill) values (2,18,30)
insert into order_line(amount,id_product,id_bill) values (1,16,34)
insert into order_line(amount,id_product,id_bill) values (1,25,12)
insert into order_line(amount,id_product,id_bill) values (1,26,36)
insert into order_line(amount,id_product,id_bill) values (2,22,45)
insert into order_line(amount,id_product,id_bill) values (2,24,30)
insert into order_line(amount,id_product,id_bill) values (2,22,32)
insert into order_line(amount,id_product,id_bill) values (1,27,46)
insert into order_line(amount,id_product,id_bill) values (2,23,26)
insert into order_line(amount,id_product,id_bill) values (1,23,49)
insert into order_line(amount,id_product,id_bill) values (1,35,34)
insert into order_line(amount,id_product,id_bill) values (2,14,1)
insert into order_line(amount,id_product,id_bill) values (1,8,19)
insert into order_line(amount,id_product,id_bill) values (1,5,20)
insert into order_line(amount,id_product,id_bill) values (2,15,49)
insert into order_line(amount,id_product,id_bill) values (2,28,17)
insert into order_line(amount,id_product,id_bill) values (1,26,28)
insert into order_line(amount,id_product,id_bill) values (1,23,8)
insert into order_line(amount,id_product,id_bill) values (2,1,10)
insert into order_line(amount,id_product,id_bill) values (1,10,39)
insert into order_line(amount,id_product,id_bill) values (1,32,14)
insert into order_line(amount,id_product,id_bill) values (1,26,1)
insert into order_line(amount,id_product,id_bill) values (2,21,37)
insert into order_line(amount,id_product,id_bill) values (1,35,2)
insert into order_line(amount,id_product,id_bill) values (1,13,23)
insert into order_line(amount,id_product,id_bill) values (1,23,22)
insert into order_line(amount,id_product,id_bill) values (2,20,2)
insert into order_line(amount,id_product,id_bill) values (2,2,17)
insert into order_line(amount,id_product,id_bill) values (2,16,45)
insert into order_line(amount,id_product,id_bill) values (1,23,35)
insert into order_line(amount,id_product,id_bill) values (1,33,26)
insert into order_line(amount,id_product,id_bill) values (2,30,42)
insert into order_line(amount,id_product,id_bill) values (1,32,6)
insert into order_line(amount,id_product,id_bill) values (2,18,21)
insert into order_line(amount,id_product,id_bill) values (2,27,23)
insert into order_line(amount,id_product,id_bill) values (2,3,44)
insert into order_line(amount,id_product,id_bill) values (2,8,30)
insert into order_line(amount,id_product,id_bill) values (2,1,24)
insert into order_line(amount,id_product,id_bill) values (1,14,13)
insert into order_line(amount,id_product,id_bill) values (1,29,16)
insert into order_line(amount,id_product,id_bill) values (2,16,11)
insert into order_line(amount,id_product,id_bill) values (2,30,20)
insert into order_line(amount,id_product,id_bill) values (1,28,16)
insert into order_line(amount,id_product,id_bill) values (2,12,12)
insert into order_line(amount,id_product,id_bill) values (2,12,32)
insert into order_line(amount,id_product,id_bill) values (2,12,10)
insert into order_line(amount,id_product,id_bill) values (1,7,45)
insert into order_line(amount,id_product,id_bill) values (1,1,9)
insert into order_line(amount,id_product,id_bill) values (1,32,27)
insert into order_line(amount,id_product,id_bill) values (2,24,10)
insert into order_line(amount,id_product,id_bill) values (2,35,27)
insert into order_line(amount,id_product,id_bill) values (2,6,25)
insert into order_line(amount,id_product,id_bill) values (1,33,42)
insert into order_line(amount,id_product,id_bill) values (1,30,3)
insert into order_line(amount,id_product,id_bill) values (1,35,41)
insert into order_line(amount,id_product,id_bill) values (2,22,19)
insert into order_line(amount,id_product,id_bill) values (1,30,48)
insert into order_line(amount,id_product,id_bill) values (2,20,46)
insert into order_line(amount,id_product,id_bill) values (2,25,19)
insert into order_line(amount,id_product,id_bill) values (1,1,8)
insert into order_line(amount,id_product,id_bill) values (2,25,10)
insert into order_line(amount,id_product,id_bill) values (2,10,46)
insert into order_line(amount,id_product,id_bill) values (1,27,9)
insert into order_line(amount,id_product,id_bill) values (2,11,46)
insert into order_line(amount,id_product,id_bill) values (2,16,20)
insert into order_line(amount,id_product,id_bill) values (1,34,47)
insert into order_line(amount,id_product,id_bill) values (1,36,43)
insert into order_line(amount,id_product,id_bill) values (2,18,1)
insert into order_line(amount,id_product,id_bill) values (2,27,19)
insert into order_line(amount,id_product,id_bill) values (1,9,39)
insert into order_line(amount,id_product,id_bill) values (2,24,9)
insert into order_line(amount,id_product,id_bill) values (2,9,38)
insert into order_line(amount,id_product,id_bill) values (1,23,49)
insert into order_line(amount,id_product,id_bill) values (1,27,8)
insert into order_line(amount,id_product,id_bill) values (1,26,16)
insert into order_line(amount,id_product,id_bill) values (2,21,13)
insert into order_line(amount,id_product,id_bill) values (1,36,31)
insert into order_line(amount,id_product,id_bill) values (2,2,32)
insert into order_line(amount,id_product,id_bill) values (1,10,47)
insert into order_line(amount,id_product,id_bill) values (2,25,49)
insert into order_line(amount,id_product,id_bill) values (2,2,44)
insert into order_line(amount,id_product,id_bill) values (1,17,18)
insert into order_line(amount,id_product,id_bill) values (1,21,48)
insert into order_line(amount,id_product,id_bill) values (2,29,32)
insert into order_line(amount,id_product,id_bill) values (2,15,31)
insert into order_line(amount,id_product,id_bill) values (2,17,28)
insert into order_line(amount,id_product,id_bill) values (2,17,14)
insert into order_line(amount,id_product,id_bill) values (2,21,4)
insert into order_line(amount,id_product,id_bill) values (1,22,27)
insert into order_line(amount,id_product,id_bill) values (1,4,18)
insert into order_line(amount,id_product,id_bill) values (1,2,7)
insert into order_line(amount,id_product,id_bill) values (1,4,18)
insert into order_line(amount,id_product,id_bill) values (1,16,1)
insert into order_line(amount,id_product,id_bill) values (1,27,11)
insert into order_line(amount,id_product,id_bill) values (2,5,11)
insert into order_line(amount,id_product,id_bill) values (1,27,10)
insert into order_line(amount,id_product,id_bill) values (2,4,13)
insert into order_line(amount,id_product,id_bill) values (2,10,6)
insert into order_line(amount,id_product,id_bill) values (1,25,8)
insert into order_line(amount,id_product,id_bill) values (1,21,23)
insert into order_line(amount,id_product,id_bill) values (1,8,33)
insert into order_line(amount,id_product,id_bill) values (1,8,1)
insert into order_line(amount,id_product,id_bill) values (2,13,31)
insert into order_line(amount,id_product,id_bill) values (2,11,15)
insert into order_line(amount,id_product,id_bill) values (2,24,35)
insert into order_line(amount,id_product,id_bill) values (1,32,27)
insert into order_line(amount,id_product,id_bill) values (2,18,5)
insert into order_line(amount,id_product,id_bill) values (1,25,49)
insert into order_line(amount,id_product,id_bill) values (2,27,31)
insert into order_line(amount,id_product,id_bill) values (2,17,10)
insert into order_line(amount,id_product,id_bill) values (2,36,11)
insert into order_line(amount,id_product,id_bill) values (1,16,21)
insert into order_line(amount,id_product,id_bill) values (2,23,33)
insert into order_line(amount,id_product,id_bill) values (1,29,20)
insert into order_line(amount,id_product,id_bill) values (2,22,7)
insert into order_line(amount,id_product,id_bill) values (2,4,41)
insert into order_line(amount,id_product,id_bill) values (2,15,44)
insert into order_line(amount,id_product,id_bill) values (2,28,2)
insert into order_line(amount,id_product,id_bill) values (1,21,35)
insert into order_line(amount,id_product,id_bill) values (1,11,12)
insert into order_line(amount,id_product,id_bill) values (2,2,32)
insert into order_line(amount,id_product,id_bill) values (2,16,12)
insert into order_line(amount,id_product,id_bill) values (1,16,42)
insert into order_line(amount,id_product,id_bill) values (1,4,16)
insert into order_line(amount,id_product,id_bill) values (2,5,16)
insert into order_line(amount,id_product,id_bill) values (1,35,41)
insert into order_line(amount,id_product,id_bill) values (1,22,46)
insert into order_line(amount,id_product,id_bill) values (2,28,1)
insert into order_line(amount,id_product,id_bill) values (1,7,31)
insert into order_line(amount,id_product,id_bill) values (1,3,36)
insert into order_line(amount,id_product,id_bill) values (1,27,27)
insert into order_line(amount,id_product,id_bill) values (1,14,33)
insert into order_line(amount,id_product,id_bill) values (1,4,12)
insert into order_line(amount,id_product,id_bill) values (1,36,28)
insert into order_line(amount,id_product,id_bill) values (2,8,18)
insert into order_line(amount,id_product,id_bill) values (1,23,36)
insert into order_line(amount,id_product,id_bill) values (2,22,11)
insert into order_line(amount,id_product,id_bill) values (1,30,4)
insert into order_line(amount,id_product,id_bill) values (2,35,33)
insert into order_line(amount,id_product,id_bill) values (1,34,9)
insert into order_line(amount,id_product,id_bill) values (1,29,36)
insert into order_line(amount,id_product,id_bill) values (2,19,14)
insert into order_line(amount,id_product,id_bill) values (2,11,20)
insert into order_line(amount,id_product,id_bill) values (1,15,23)
insert into order_line(amount,id_product,id_bill) values (2,1,5)