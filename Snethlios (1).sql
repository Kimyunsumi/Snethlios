
use master

drop database SnethliosSneakers

create database SnethliosSneakers
go
use SnethliosSneakers
go
--create nhanvien
create table NHANVIEN(
	MANV varchar(50) PRIMARY KEY,
	HOTEN NVARCHAR(50) NOT NULL,
	VAITRO bit not null,
	NHIEMVU NVARCHAR(50) NOT NULL,
	MATKHAU NVARCHAR(50) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL,
	HINH VARCHAR(50) NOT NULL
)
go


--create table SANPHAM
use SnethliosSneakers
create table SANPHAM
(
	MASP varchar(20) primary key,
	TENSP nvarchar(50) not null,
	LOAI nvarchar(50) not null,
	DONGIA float not null,
	SOLUONG int not null,
	MAUSAC nvarchar(15) not null,
	KICHTHUOC int not null,
	HANG nvarchar(40) not null,
	HINH varchar(50) not null,
	NGAYNHAP date,
	MANV varchar(50) references NHANVIEN(MANV)
)
go

insert into SANPHAM values('AF11999','Giay Air force 1','Giay Sneakers',950000,2,'White',39,'Nike','nike.jpg','2022-11-17','HoanHD');
use SnethliosSneakers
CREATE TABLE GIOHANG(
	MASP varchar(20) primary key,
	TENSP nvarchar(50) not null,
	LOAI nvarchar(50) not null,
	DONGIA float not null,
	SOLUONG int not null,
	MAUSAC nvarchar(15) not null,
	KICHTHUOC int not null,
	HANG nvarchar(40) not null,
	HINH varchar(50) not null
)

se SneuthliosSneakers
select * from GIOHANG
insert into GIOHANG values('AF11999','Giay Air force 1','Giay Sneakers',950000,2,'White',39,'Nike','nike.jpg');

create table KHACHHANG
(
	MAKH nvarchar(50) primary key,
	TENKH nvarchar(50) not null,
	DIACHI nvarchar(40) not null,
	SDT varchar(10) not null,
	GIOITINH bit not null,
	GHICHU nvarchar(50) not null
)
go

--create table PHIEUXUAT(HOADON)
create table PHIEUXUAT
(
	SOPX int identity(1, 1) primary key,
	NGAYTAO date not null,
	LYDOHUY nvarchar(100) not null,
	TRANGTHAI nvarchar(100) not null,
	HINHTHUCTHANHTOAN nvarchar(100) not null,
	MANV varchar(50) references NHANVIEN(MANV),
	MAKH nvarchar(50) references KHACHHANG(MAKH)
)
go

--create table CTPX
create table CTPX
(
	SOPX int references PHIEUXUAT(SOPX),
	MASP varchar(20) references SANPHAM(MASP),
	GIABAN float not null,
	SOLUONG int
	CONSTRAINT CT PRIMARY KEY (SOPX, MASP)
)
go

--create table THANHVIEN
create table THANHVIEN
(
	MATV varchar(30) primary key,
	DIEM int not null,
	NGAYTAO date not null,
	NGAYHETHAN date not null,
	MAKH nvarchar(50) references KHACHHANG(MAKH)
)
go

--insert nhanvien
insert into NHANVIEN values('TeoNV', N'Nguyễn Văn Tèo', 1, 'Quản lý', CONVERT(VARCHAR(32), HashBytes('MD5', 'songlong'), 2), 'teonv@gmail.com', 'teo.jpg')
insert into NHANVIEN values('HoanHD', N'Huỳnh Đức Hoàn', 0, 'Nhân viên', CONVERT(VARCHAR(32), HashBytes('MD5', '123456'), 2), 'hoanhd@gmail.com', 'hoan.jpg')
insert into NhanVien values('HaiNV', N'Nguyễn Văn Hải', 0, 'Nhân viên', CONVERT(varchar(32), HashBytes('MD5', 'songlong'), 2), 'hainv@gmail.com', 'hinh1.png')
insert into NhanVien values('ThaiNA', N'Nguyễn Anh Thái', 0, 'Nhân viên', CONVERT(varchar(32), HashBytes('MD5', 'thaianhnguyen'), 2), 'thaina@gmail.com', 'hinh2.png')

--insert sanpham

insert into Sanpham values ('AD1', N'Giày Adidas', 39, N'Giày thể thao', 'Adidas', N'Đen', 20, '2022-6-17', 900000, 'adidas.jpg', 'TeoNV' )
insert into SanPham values ('NK1', N'Giày Nike', 41, N'Giày thể thao','Nike',N'Trắng', 10, '2022-3-17', 400000, 'adidas.jpg', 'HoanHD' )
insert into SanPham values ('PM1', N'Giày Puma', 40, N'Giày lười', 'Puma', N'Trắng', 30, '2021-6-17', 600000, 'adidas.jpg', 'HaiNV' )

--insert khachhang
insert into KhachHang values ('KH001',N'Lê Văn Quý',N'1660/48A Lê Hồng Phong,quận 2 TPHCM','0383099555',0,N'Giao vào buổi chiều')
insert into KhachHang values ('KH002',N'Nguyễn Xuân Quy',N'2210/68 quốc lộ 1A,quận 12 TPHCM','0353095455',1,N'Giao buổi sáng')
insert into KhachHang values ('KH003',N'Trần Quốc Kỳ',N'2310 Nguyễn Oanh,quận Gò Vấp TPHCM','0383255625',0,N'Gọi trước 30 phút')
insert into KhachHang values ('KH004',N'Lê Đặng Trung Anh',N'2356/12 Lê Đức Thọ,quận Gò Vấp TPHCM','0393233451',0,N'Giao sau chiều')

--insert phieuxuat
insert into PHIEUXUAT values('2022-9-15',N'Không',N'Đã giao',N'Đặt hàng', 'HoanHD','KH001')
insert into PHIEUXUAT values('2021-10-1',N'Không',N'Đã giao',N'Trực tiếp', 'HaiNV','KH002')
insert into PHIEUXUAT values('2020-6-25',N'Không',N'Đã giao',N'Trực tiếp', 'HoanHD','KH003')
insert into PHIEUXUAT values('2022-4-15',N'Không',N'Đã giao',N'Đặt hàng', 'ThaiNA','KH004')
insert into PHIEUXUAT values('2022-9-04',N'Không',N'Đã giao',N'Trực tiếp', 'ThaiNA','KH002')
insert into PHIEUXUAT values('2022-6-27',N'Không',N'Đã giao',N'Trực tiếp', 'HoanHD','KH003')

--CTPX
insert into CTPX values (1,'AD1',900000,1)
insert into CTPX values (2,'NK1',400000,5)
insert into CTPX values (3,'PM1',600000,3)
insert into CTPX values (4,'AF11999',100000,2)
insert into CTPX values (5,'NK1',400000,6)
insert into CTPX values (6,'PM1',600000,2)

--thanhvien
insert into ThanhVien values('TV01',2,'2022-9-11','2023-9-11','KH003')
insert into ThanhVien values('TV02',4,'2022-6-12','2023-6-12','KH004')
insert into ThanhVien values('TV03',18,'2022-10-11','2023-10-11','KH001')
insert into ThanhVien values('TV04',30,'2022-10-11','2023-10-11','KH002')


select * from nhanvien
select * from SANPHAM
select * from KhachHang
select * from PhieuXuat
select * from CTPX
select * from ThanhVien