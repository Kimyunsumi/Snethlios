USE [master]
GO
/****** Object:  Database [Snethlios(main)]    Script Date: 11/11/2022 12:47:05 PM ******/
CREATE DATABASE [Snethlios(main)]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Snethlios(main)', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Snethlios(main).mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Snethlios(main)_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Snethlios(main)_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Snethlios(main)] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Snethlios(main)].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Snethlios(main)] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Snethlios(main)] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Snethlios(main)] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Snethlios(main)] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Snethlios(main)] SET ARITHABORT OFF 
GO
ALTER DATABASE [Snethlios(main)] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Snethlios(main)] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Snethlios(main)] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Snethlios(main)] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Snethlios(main)] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Snethlios(main)] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Snethlios(main)] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Snethlios(main)] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Snethlios(main)] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Snethlios(main)] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Snethlios(main)] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Snethlios(main)] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Snethlios(main)] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Snethlios(main)] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Snethlios(main)] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Snethlios(main)] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Snethlios(main)] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Snethlios(main)] SET RECOVERY FULL 
GO
ALTER DATABASE [Snethlios(main)] SET  MULTI_USER 
GO
ALTER DATABASE [Snethlios(main)] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Snethlios(main)] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Snethlios(main)] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Snethlios(main)] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Snethlios(main)] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Snethlios(main)', N'ON'
GO
USE [Snethlios(main)]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 11/11/2022 12:47:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ChucVu](
	[MaCV] [varchar](10) NOT NULL,
	[TenCV] [nvarchar](30) NULL,
	[NhiemVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[MaCV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 11/11/2022 12:47:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](50) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](40) NULL,
	[SDT] [varchar](11) NULL,
	[GioiTinh] [bit] NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 11/11/2022 12:47:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [varchar](30) NOT NULL,
	[TenNCC] [nvarchar](30) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](10) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/11/2022 12:47:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[MaCV] [varchar](10) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Hinh] [nvarchar](20) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 11/11/2022 12:47:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [varchar](20) NOT NULL,
	[MaNV] [int] NOT NULL,
	[MaNCC] [varchar](30) NULL,
	[NgayNhap] [date] NULL,
	[HinhThucThanhToan] [nvarchar](30) NULL,
 CONSTRAINT [PK_PhieuNhap] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuXuat]    Script Date: 11/11/2022 12:47:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuXuat](
	[SoPX] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [varchar](20) NULL,
	[MaNV] [int] NULL,
	[MaKH] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[GiaBan] [float] NULL,
 CONSTRAINT [PK_PhieuXuat] PRIMARY KEY CLUSTERED 
(
	[SoPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 11/11/2022 12:47:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](20) NOT NULL,
	[MaPN] [varchar](20) NULL,
	[TenSP] [nvarchar](50) NULL,
	[KichThuoc] [int] NULL,
	[Loai] [nvarchar](50) NULL,
	[Hang] [nvarchar](40) NULL,
	[MauSac] [nvarchar](15) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 11/11/2022 12:47:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaTV] [varchar](30) NOT NULL,
	[MaKH] [nvarchar](50) NULL,
	[Diem] [int] NULL,
	[NgayTao] [date] NULL,
	[NgayHetHan] [date] NULL,
 CONSTRAINT [PK_ThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [NhiemVu]) VALUES (N'BV009', N'Bảo vệ', N'Trông coi tư trang cửa hàng')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [NhiemVu]) VALUES (N'CHT010', N'Cửa hàng trưởng', N'Chịu trách nhiệm quản lý cửa hàng kho')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [NhiemVu]) VALUES (N'KK006', N'Kiểm kho', N'Kiểm tra số lượng hàng hóa trong kho')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [NhiemVu]) VALUES (N'NV007', N'Nhân viên', N'Quản lý tài chính cửa hàng')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [NhiemVu]) VALUES (N'QLK01', N'Quản lý kho', N'Chịu trách nhiệm bảo quản kho')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [NhiemVu]) VALUES (N'TN002', N'Thu ngân', N'Thanh toán sản phẩm')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [NhiemVu]) VALUES (N'TV001', N'Tư vấn', N'Tư vấn bán hàng')
INSERT [dbo].[ChucVu] ([MaCV], [TenCV], [NhiemVu]) VALUES (N'TV003', N'Tư vấn', N'Tư vấn bán hàng trên web')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [GioiTinh], [GhiChu]) VALUES (N'KH001', N'Lê Văn Quý', N'1660/48A Lê Hồng Phong,quận 2 TPHCM', N'0383099555', 0, N'Giao vào buổi chiều')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [GioiTinh], [GhiChu]) VALUES (N'KH002', N'Nguyễn Xuân Quy', N'2210/68 quốc lộ 1A,quận 12 TPHCM', N'0353095455', 1, N'Giao buổi sáng')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [GioiTinh], [GhiChu]) VALUES (N'KH003', N'Trần Quốc Kỳ', N'2310 Nguyễn Oanh,quận Gò Vấp TPHCM', N'0383255625', 0, N'Gọi trước 30 phút')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [GioiTinh], [GhiChu]) VALUES (N'KH004', N'Lê Đặng Trung Anh', N'2356/12 Lê Đức Thọ,quận Gò Vấp TPHCM', N'0393233451', 0, N'Giao sau chiều')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [GioiTinh], [GhiChu]) VALUES (N'KH005', N'Nguyễn Thị Xuân', N'126/12 Lê Lữ, quận Tân Phú TPHCM', N'0384757576', 0, N'Giao vào buổi sáng và gọi trước 15p')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [GioiTinh], [GhiChu]) VALUES (N'KH006', N'Nguyễn Ngọc Bảo Anh', N'2360/24A Tân Kỳ Tân Quý,Tân Phú HCM', N'0389485554', 0, N'Đường khó vào nên gọi để anh khách rước')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [GhiChu]) VALUES (N'CHN1', N'Quảng Châu', N'Kho Tứ Xuyên, thành phố Tô Châu, tỉnh Quảng Nam', N'8135526552', N'28-3-2022')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [GhiChu]) VALUES (N'KH1', N'Khách hàng', N'2210/68 quốc lộ 1A,quận 12 TPHCM', N'0383955778', N'Adid 39,40')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [GhiChu]) VALUES (N'KH2', N'Store Giày SDK', N'241/2 Tân Kỳ Tân Quý,Tân Phú HCM', N'8135526552', N'28-3-2022')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [GhiChu]) VALUES (N'TH1', N'Thái Lan', N'Bangkok capital', N'51955255', N'9-11-2022')
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([MaNV], [MaCV], [HoTen], [MatKhau], [Hinh]) VALUES (1, N'TV001', N'Nguyễn Văn Hải', N'37732380436F156186F70FC5390ACDB6', N'hinh1.png')
INSERT [dbo].[NhanVien] ([MaNV], [MaCV], [HoTen], [MatKhau], [Hinh]) VALUES (2, N'KK006', N'Nguyễn Anh Thái', N'ADAC648EFB887E1A3E27B0D5AB412410', N'hinh2.png')
INSERT [dbo].[NhanVien] ([MaNV], [MaCV], [HoTen], [MatKhau], [Hinh]) VALUES (3, N'QLK01', N'Nguyễn Đức Cường', N'B36E9E2012DBB46C939F8D65B07D5A5D', N'hinh3.png')
INSERT [dbo].[NhanVien] ([MaNV], [MaCV], [HoTen], [MatKhau], [Hinh]) VALUES (4, N'CHT010', N'Nguyễn Văn Hải', N'61ACB6BAEDC2A4A70ACC4F6B8A174E41', N'hinh4.png')
INSERT [dbo].[NhanVien] ([MaNV], [MaCV], [HoTen], [MatKhau], [Hinh]) VALUES (5, N'TN002', N'Trần Xuân Quỳnh', N'779B9B03F066D872709F314DC8D0C624', N'hinh5.png')
INSERT [dbo].[NhanVien] ([MaNV], [MaCV], [HoTen], [MatKhau], [Hinh]) VALUES (6, N'TV003', N'TLê Thái Hậu', N'1B1D25EDCC9EE632063F7A6E712E009C', N'hinh6.png')
INSERT [dbo].[NhanVien] ([MaNV], [MaCV], [HoTen], [MatKhau], [Hinh]) VALUES (7, N'BV009', N'Nguyễn Lê Hải Xuân', N'B9405CF8B10BBF9F4030E2DBEF59312F', N'hinh7.png')
INSERT [dbo].[NhanVien] ([MaNV], [MaCV], [HoTen], [MatKhau], [Hinh]) VALUES (8, N'NV007', N'Lê Văn Hải', N'B09E9E3FACF90980FC3774603DF245E7', N'hinh8.png')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNV], [MaNCC], [NgayNhap], [HinhThucThanhToan]) VALUES (N'PN001', 3, N'CHN1', CAST(N'2022-03-28' AS Date), N'Chuyển khoản')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNV], [MaNCC], [NgayNhap], [HinhThucThanhToan]) VALUES (N'PN002', 4, N'KH1', CAST(N'2022-02-10' AS Date), N'Chuyển khoản')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNV], [MaNCC], [NgayNhap], [HinhThucThanhToan]) VALUES (N'PN003', 1, N'CHN1', CAST(N'2023-04-28' AS Date), N'Chuyển khoản')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNV], [MaNCC], [NgayNhap], [HinhThucThanhToan]) VALUES (N'PN004', 4, N'TH1', CAST(N'2022-01-30' AS Date), N'Chuyển khoản')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNV], [MaNCC], [NgayNhap], [HinhThucThanhToan]) VALUES (N'PN005', 5, N'KH2', CAST(N'2022-08-30' AS Date), N'Chuyển khoản')
SET IDENTITY_INSERT [dbo].[PhieuXuat] ON 

INSERT [dbo].[PhieuXuat] ([SoPX], [MaSP], [MaNV], [MaKH], [SoLuong], [GiaBan]) VALUES (2, N'AD1', 3, N'KH002', 1, 500)
INSERT [dbo].[PhieuXuat] ([SoPX], [MaSP], [MaNV], [MaKH], [SoLuong], [GiaBan]) VALUES (3, N'Vs1', 5, N'KH005', 2, 1500)
INSERT [dbo].[PhieuXuat] ([SoPX], [MaSP], [MaNV], [MaKH], [SoLuong], [GiaBan]) VALUES (4, N'AD1', 4, N'KH001', 1, 750)
INSERT [dbo].[PhieuXuat] ([SoPX], [MaSP], [MaNV], [MaKH], [SoLuong], [GiaBan]) VALUES (5, N'AD1', 1, N'KH003', 3, 1750)
INSERT [dbo].[PhieuXuat] ([SoPX], [MaSP], [MaNV], [MaKH], [SoLuong], [GiaBan]) VALUES (7, N'JD1', 1, N'KH004', 3, 375)
INSERT [dbo].[PhieuXuat] ([SoPX], [MaSP], [MaNV], [MaKH], [SoLuong], [GiaBan]) VALUES (9, N'JD1', 1, N'KH004', 3, 375)
INSERT [dbo].[PhieuXuat] ([SoPX], [MaSP], [MaNV], [MaKH], [SoLuong], [GiaBan]) VALUES (13, N'PM1', 2, N'KH005', 1, 760)
SET IDENTITY_INSERT [dbo].[PhieuXuat] OFF
INSERT [dbo].[SanPham] ([MaSP], [MaPN], [TenSP], [KichThuoc], [Loai], [Hang], [MauSac]) VALUES (N'AD1', N'PN001', N'Giày Adidas', 39, N'Giày thể thao', N'Adidas', N'Đen')
INSERT [dbo].[SanPham] ([MaSP], [MaPN], [TenSP], [KichThuoc], [Loai], [Hang], [MauSac]) VALUES (N'JD1', N'PN005', N'Giày Jordan', 39, N'Giày cổ cao', N'Jordan', N'Trắng')
INSERT [dbo].[SanPham] ([MaSP], [MaPN], [TenSP], [KichThuoc], [Loai], [Hang], [MauSac]) VALUES (N'NK1', N'PN002', N'Giày Nike', 39, N'Giày thể thao', N'Nike', N'Trắng')
INSERT [dbo].[SanPham] ([MaSP], [MaPN], [TenSP], [KichThuoc], [Loai], [Hang], [MauSac]) VALUES (N'PM1', N'PN003', N'Giày Puma', 39, N'Giày lười', N'Puma', N'Trắng')
INSERT [dbo].[SanPham] ([MaSP], [MaPN], [TenSP], [KichThuoc], [Loai], [Hang], [MauSac]) VALUES (N'Vs1', N'PN004', N'Giày Vans', 39, N'Giày thể thao', N'Vans', N'Trắng')
INSERT [dbo].[ThanhVien] ([MaTV], [MaKH], [Diem], [NgayTao], [NgayHetHan]) VALUES (N'TV01', N'KH003', 2, CAST(N'2022-09-11' AS Date), CAST(N'2023-09-11' AS Date))
INSERT [dbo].[ThanhVien] ([MaTV], [MaKH], [Diem], [NgayTao], [NgayHetHan]) VALUES (N'TV02', N'KH004', 4, CAST(N'2022-06-12' AS Date), CAST(N'2023-06-12' AS Date))
INSERT [dbo].[ThanhVien] ([MaTV], [MaKH], [Diem], [NgayTao], [NgayHetHan]) VALUES (N'TV03', N'KH001', 8, CAST(N'2022-10-11' AS Date), CAST(N'2023-10-11' AS Date))
INSERT [dbo].[ThanhVien] ([MaTV], [MaKH], [Diem], [NgayTao], [NgayHetHan]) VALUES (N'TV04', N'KH006', 1, CAST(N'2022-03-20' AS Date), CAST(N'2023-03-20' AS Date))
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([MaCV])
REFERENCES [dbo].[ChucVu] ([MaCV])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhanVien]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_KhachHang]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_NhanVien]
GO
ALTER TABLE [dbo].[PhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuXuat_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[PhieuXuat] CHECK CONSTRAINT [FK_PhieuXuat_SanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_PhieuNhap]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_KhachHang]
GO
USE [master]
GO
ALTER DATABASE [Snethlios(main)] SET  READ_WRITE 
GO
