USE [Assignment_Java4_Final]
GO
/****** Object:  Table [dbo].[ChiTietSP]    Script Date: 23/07/2023 1:29:42 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSP](
	[Id] [uniqueidentifier] NOT NULL,
	[IdSP] [uniqueidentifier] NULL,
	[IdNsx] [uniqueidentifier] NULL,
	[IdMauSac] [uniqueidentifier] NULL,
	[IdDongSP] [uniqueidentifier] NULL,
	[NamBH] [int] NULL,
	[MoTa] [nvarchar](50) NULL,
	[SoLuongTon] [int] NULL,
	[GiaNhap] [decimal](20, 0) NULL,
	[GiaBan] [decimal](20, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 23/07/2023 1:29:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 23/07/2023 1:29:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongSP]    Script Date: 23/07/2023 1:29:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongSP](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 23/07/2023 1:29:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[Id] [uniqueidentifier] NOT NULL,
	[IdKH] [uniqueidentifier] NULL,
	[IdNV] [uniqueidentifier] NULL,
	[Ma] [varchar](20) NULL,
	[NgayTao] [date] NULL,
	[NgayThanhToan] [date] NULL,
	[NgayShip] [date] NULL,
	[NgayNhan] [date] NULL,
	[TinhTrang] [int] NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonChiTiet]    Script Date: 23/07/2023 1:29:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonChiTiet](
	[IdHoaDon] [uniqueidentifier] NOT NULL,
	[IdChiTietSP] [uniqueidentifier] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](20, 0) NULL,
 CONSTRAINT [PK_HoaDonCT] PRIMARY KEY CLUSTERED 
(
	[IdHoaDon] ASC,
	[IdChiTietSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 23/07/2023 1:29:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[NgaySinh] [date] NULL,
	[Sdt] [varchar](30) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuocGia] [nvarchar](50) NULL,
	[MatKhau] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MauSac]    Script Date: 23/07/2023 1:29:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MauSac](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 23/07/2023 1:29:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
	[TenDem] [nvarchar](30) NULL,
	[Ho] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Sdt] [varchar](30) NULL,
	[MatKhau] [varchar](max) NULL,
	[IdCH] [uniqueidentifier] NULL,
	[IdCV] [uniqueidentifier] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSX]    Script Date: 23/07/2023 1:29:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSX](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 23/07/2023 1:29:43 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[Id] [uniqueidentifier] NOT NULL,
	[Ma] [varchar](20) NULL,
	[Ten] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'3cda7aeb-502d-4f7a-89d9-07df90f87334', N'821d4700-fe8f-42c6-ad73-02caea199c74', N'00da335e-4588-4207-97f6-f65ede61c6ba', N'9c524c0e-1276-402b-88d3-653b6cea44c3', N'6c1ca645-985d-455d-9ad7-9c801d8d196b', 2024, N'Sữa mới', 111, CAST(28000 AS Decimal(20, 0)), CAST(34000 AS Decimal(20, 0)))
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'536cccfb-1450-4763-95fc-784d16370857', N'0c3cdf45-5005-4a16-b65c-5d7d237fc5bb', N'2b3506b0-8dd9-4845-a2a8-6b19ed38adfe', N'9c524c0e-1276-402b-88d3-653b6cea44c3', N'2f7a82f9-1f3c-4c0e-8755-b38281dfe2bd', 2024, N'', 111, CAST(22222 AS Decimal(20, 0)), CAST(33333 AS Decimal(20, 0)))
INSERT [dbo].[ChiTietSP] ([Id], [IdSP], [IdNsx], [IdMauSac], [IdDongSP], [NamBH], [MoTa], [SoLuongTon], [GiaNhap], [GiaBan]) VALUES (N'0fc633a4-f40a-4902-89be-be691f46b65b', N'7de76b9d-041b-4cc6-ab30-20198f1803a1', N'862c1a0b-156e-45c5-a69d-521c5871a307', N'efe47cb5-51ca-414d-bf31-f29ec8714397', N'0995a0df-1259-4a4d-9409-f9692c949213', 2024, N'Trà mới', 234, CAST(35000 AS Decimal(20, 0)), CAST(45000 AS Decimal(20, 0)))
GO
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'09521c9c-71f9-4e86-895d-c57615b7dc96', N'PO01', N'Manager')
INSERT [dbo].[ChucVu] ([Id], [Ma], [Ten]) VALUES (N'25fb8b5e-8519-45c2-9d42-e3f47c07f9ba', N'C100', N'Staff')
GO
INSERT [dbo].[CuaHang] ([Id], [Ma], [Ten], [DiaChi], [ThanhPho], [QuocGia]) VALUES (N'619fbd05-fa9a-44ec-8dfe-e62af0b7a1d4', N'CH01', N'Winmart Chương Mỹ', N'Chương Mỹ', N'Hà Nội', N'Việt Nam')
GO
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'6c1ca645-985d-455d-9ad7-9c801d8d196b', N'CTG3', N'Milk')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'2f7a82f9-1f3c-4c0e-8755-b38281dfe2bd', N'C02', N'Cake')
INSERT [dbo].[DongSP] ([Id], [Ma], [Ten]) VALUES (N'0995a0df-1259-4a4d-9409-f9692c949213', N'C102', N'Tea')
GO
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'58d23795-3f40-4acd-b448-1370d2f19b4e', N'1d938ac0-8b55-4078-a192-820042465337', N'11586633-4c4e-4c5a-b5df-898198695993', N'HD1', CAST(N'2023-07-19' AS Date), CAST(N'2023-07-18' AS Date), CAST(N'2023-07-21' AS Date), CAST(N'2023-07-21' AS Date), 1, N'Người nhận', N'Địa chỉ', N'0375773850')
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'b5e033cd-c18c-40ec-ad27-36fbd7ef2558', N'a791c798-715e-4e70-9f04-24c74754c359', N'eecf9c0b-b49e-4d43-a3e3-1149c373e421', N'HD-827277909', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-19' AS Date), CAST(N'2023-07-21' AS Date), CAST(N'2023-07-21' AS Date), 1, N'Huy', N'a', N'0375773850')
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'85f7ede2-3401-4380-a421-643919e072e1', NULL, NULL, N'HD-737594949', CAST(N'2023-07-22' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'b6af0ab3-2122-466b-bd47-65d4a5951d66', N'a791c798-715e-4e70-9f04-24c74754c359', N'eecf9c0b-b49e-4d43-a3e3-1149c373e421', N'HD-365980409', CAST(N'2023-07-21' AS Date), CAST(N'2023-07-21' AS Date), CAST(N'2023-07-21' AS Date), CAST(N'2023-07-21' AS Date), 1, N'Huy', N'a', N'0375773850')
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'fe124f3f-a014-4ce7-a99e-b028f02eb865', NULL, NULL, N'HD-977958081', CAST(N'2023-07-22' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'c3b58e7a-a86b-4a06-8a93-b58c50d6a6a2', NULL, NULL, N'HD-1708658998', CAST(N'2023-07-22' AS Date), NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'46b2bf63-d84b-45f0-bbe0-bdb2746d2835', N'a791c798-715e-4e70-9f04-24c74754c359', N'eecf9c0b-b49e-4d43-a3e3-1149c373e421', N'HD-1223774003', CAST(N'2023-07-22' AS Date), CAST(N'2023-07-22' AS Date), CAST(N'2023-07-22' AS Date), CAST(N'2023-07-22' AS Date), 1, N'123', N'address', N'0375773850')
INSERT [dbo].[HoaDon] ([Id], [IdKH], [IdNV], [Ma], [NgayTao], [NgayThanhToan], [NgayShip], [NgayNhan], [TinhTrang], [TenNguoiNhan], [DiaChi], [Sdt]) VALUES (N'3170bddf-9047-4996-9178-e0735870c738', N'a791c798-715e-4e70-9f04-24c74754c359', N'eecf9c0b-b49e-4d43-a3e3-1149c373e421', N'HD-172367051', CAST(N'2023-07-20' AS Date), CAST(N'2023-07-20' AS Date), CAST(N'2023-07-20' AS Date), CAST(N'2023-07-20' AS Date), 1, N'Huy', N'address', N'0375773850')
GO
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'58d23795-3f40-4acd-b448-1370d2f19b4e', N'3cda7aeb-502d-4f7a-89d9-07df90f87334', 2, CAST(34000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'58d23795-3f40-4acd-b448-1370d2f19b4e', N'536cccfb-1450-4763-95fc-784d16370857', 1, CAST(33333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'b5e033cd-c18c-40ec-ad27-36fbd7ef2558', N'3cda7aeb-502d-4f7a-89d9-07df90f87334', 7, CAST(34000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'b6af0ab3-2122-466b-bd47-65d4a5951d66', N'536cccfb-1450-4763-95fc-784d16370857', 10, CAST(33333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'b6af0ab3-2122-466b-bd47-65d4a5951d66', N'0fc633a4-f40a-4902-89be-be691f46b65b', 5, CAST(45000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'46b2bf63-d84b-45f0-bbe0-bdb2746d2835', N'3cda7aeb-502d-4f7a-89d9-07df90f87334', 2, CAST(34000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'46b2bf63-d84b-45f0-bbe0-bdb2746d2835', N'536cccfb-1450-4763-95fc-784d16370857', 1, CAST(33333 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'3170bddf-9047-4996-9178-e0735870c738', N'3cda7aeb-502d-4f7a-89d9-07df90f87334', 3, CAST(34000 AS Decimal(20, 0)))
INSERT [dbo].[HoaDonChiTiet] ([IdHoaDon], [IdChiTietSP], [SoLuong], [DonGia]) VALUES (N'3170bddf-9047-4996-9178-e0735870c738', N'536cccfb-1450-4763-95fc-784d16370857', 2, CAST(33333 AS Decimal(20, 0)))
GO
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (N'a791c798-715e-4e70-9f04-24c74754c359', N'KH01', N'Hùng', N'Việt', N'Dương', CAST(N'2003-01-30' AS Date), N'0375773850', N'Chương Mỹ', N'Hà Nội', N'Việt Nam', N'12345')
INSERT [dbo].[KhachHang] ([Id], [Ma], [Ten], [TenDem], [Ho], [NgaySinh], [Sdt], [DiaChi], [ThanhPho], [QuocGia], [MatKhau]) VALUES (N'1d938ac0-8b55-4078-a192-820042465337', N'KH02', N'Trần', N'Ngọc ', N'Anh', CAST(N'2023-07-20' AS Date), N'0000000000', N'address', N'Hà Nội', N'Việt Nam', N'12345')
GO
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'9c524c0e-1276-402b-88d3-653b6cea44c3', N'CL04', N'White')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'869a3f47-88a2-4867-a93c-b1349cecc807', N'CL05', N'Blue')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'1dcda25a-ae84-40e6-9de0-bab456422b68', N'C1001', N'Đỏ')
INSERT [dbo].[MauSac] ([Id], [Ma], [Ten]) VALUES (N'efe47cb5-51ca-414d-bf31-f29ec8714397', N'CL01', N'Hồng')
GO
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [TrangThai]) VALUES (N'eecf9c0b-b49e-4d43-a3e3-1149c373e421', N'NV1', N'An', N'Văn', N'Nguyễn', N'Male', CAST(N'2023-07-17' AS Date), N'', N'0375773850', N'@an', N'619fbd05-fa9a-44ec-8dfe-e62af0b7a1d4', N'25fb8b5e-8519-45c2-9d42-e3f47c07f9ba', 1)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [TrangThai]) VALUES (N'11586633-4c4e-4c5a-b5df-898198695993', N'NV03', N'Thúy', N'Thị', N'Bùi', N'Female', CAST(N'2023-07-20' AS Date), N'', N'0000000000', N'12345', N'619fbd05-fa9a-44ec-8dfe-e62af0b7a1d4', N'25fb8b5e-8519-45c2-9d42-e3f47c07f9ba', 1)
INSERT [dbo].[NhanVien] ([Id], [Ma], [Ten], [TenDem], [Ho], [GioiTinh], [NgaySinh], [DiaChi], [Sdt], [MatKhau], [IdCH], [IdCV], [TrangThai]) VALUES (N'86ad2b46-7c44-4b3d-aceb-a3b6813257a8', N'NV02', N'Tuấn', N'Ngọc', N'Hà', N'Male', CAST(N'2023-07-20' AS Date), N'', N'0375773850', N'12345', N'619fbd05-fa9a-44ec-8dfe-e62af0b7a1d4', N'25fb8b5e-8519-45c2-9d42-e3f47c07f9ba', 1)
GO
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'd3b01ee1-c327-4cee-9d5c-41ce4e097dba', N'NXS04', N'Cozy')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'862c1a0b-156e-45c5-a69d-521c5871a307', N'NXS03', N'Lipton')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'2b3506b0-8dd9-4845-a2a8-6b19ed38adfe', N'NSX1', N'Hùng')
INSERT [dbo].[NSX] ([Id], [Ma], [Ten]) VALUES (N'00da335e-4588-4207-97f6-f65ede61c6ba', N'NXS02', N'TH truemilk')
GO
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'821d4700-fe8f-42c6-ad73-02caea199c74', N'SP02', N'Trà lipton túi lọc 20x15g')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'7de76b9d-041b-4cc6-ab30-20198f1803a1', N'SP01', N'Sữa TH truemlik 180ml')
INSERT [dbo].[SanPham] ([Id], [Ma], [Ten]) VALUES (N'0c3cdf45-5005-4a16-b65c-5d7d237fc5bb', N'SP100', N'Lavie')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChucVu__3214CC9EEC1963A3]    Script Date: 23/07/2023 1:29:43 CH ******/
ALTER TABLE [dbo].[ChucVu] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__CuaHang__3214CC9EA9F89734]    Script Date: 23/07/2023 1:29:43 CH ******/
ALTER TABLE [dbo].[CuaHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DongSP__3214CC9E1C88F40C]    Script Date: 23/07/2023 1:29:43 CH ******/
ALTER TABLE [dbo].[DongSP] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HoaDon__3214CC9E5695FA69]    Script Date: 23/07/2023 1:29:43 CH ******/
ALTER TABLE [dbo].[HoaDon] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__3214CC9E8893433B]    Script Date: 23/07/2023 1:29:43 CH ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__MauSac__3214CC9E2D31C2BE]    Script Date: 23/07/2023 1:29:43 CH ******/
ALTER TABLE [dbo].[MauSac] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__3214CC9EDDCCE8A8]    Script Date: 23/07/2023 1:29:43 CH ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NSX__3214CC9E8EBA3A18]    Script Date: 23/07/2023 1:29:43 CH ******/
ALTER TABLE [dbo].[NSX] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SanPham__3214CC9E936A3888]    Script Date: 23/07/2023 1:29:43 CH ******/
ALTER TABLE [dbo].[SanPham] ADD UNIQUE NONCLUSTERED 
(
	[Ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (NULL) FOR [NamBH]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT (NULL) FOR [MoTa]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT ((0)) FOR [GiaNhap]
GO
ALTER TABLE [dbo].[ChiTietSP] ADD  DEFAULT ((0)) FOR [GiaBan]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChucVu] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [ThanhPho]
GO
ALTER TABLE [dbo].[CuaHang] ADD  DEFAULT (NULL) FOR [QuocGia]
GO
ALTER TABLE [dbo].[DongSP] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayThanhToan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayShip]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [NgayNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [TenNguoiNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[HoaDonChiTiet] ADD  DEFAULT ((0)) FOR [DonGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [TenDem]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Ho]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [ThanhPho]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [QuocGia]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[MauSac] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Ten]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [TenDem]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Ho]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [Sdt]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (NULL) FOR [MatKhau]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[NSX] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdDongSP])
REFERENCES [dbo].[DongSP] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdMauSac])
REFERENCES [dbo].[MauSac] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdNsx])
REFERENCES [dbo].[NSX] ([Id])
GO
ALTER TABLE [dbo].[ChiTietSP]  WITH CHECK ADD FOREIGN KEY([IdSP])
REFERENCES [dbo].[SanPham] ([Id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdKH])
REFERENCES [dbo].[KhachHang] ([Id])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([IdNV])
REFERENCES [dbo].[NhanVien] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK1] FOREIGN KEY([IdHoaDon])
REFERENCES [dbo].[HoaDon] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK1]
GO
ALTER TABLE [dbo].[HoaDonChiTiet]  WITH CHECK ADD  CONSTRAINT [FK2] FOREIGN KEY([IdChiTietSP])
REFERENCES [dbo].[ChiTietSP] ([Id])
GO
ALTER TABLE [dbo].[HoaDonChiTiet] CHECK CONSTRAINT [FK2]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdCH])
REFERENCES [dbo].[CuaHang] ([Id])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([IdCV])
REFERENCES [dbo].[ChucVu] ([Id])
GO
