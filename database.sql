USE [master]
GO
/****** Object:  Database [DuAn1Web]    Script Date: 7/31/2024 10:51:41 PM ******/
CREATE DATABASE [DuAn1Web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DuAn1Web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\DuAn1Web.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DuAn1Web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS01\MSSQL\DATA\DuAn1Web_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DuAn1Web] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DuAn1Web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DuAn1Web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DuAn1Web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DuAn1Web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DuAn1Web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DuAn1Web] SET ARITHABORT OFF 
GO
ALTER DATABASE [DuAn1Web] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DuAn1Web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DuAn1Web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DuAn1Web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DuAn1Web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DuAn1Web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DuAn1Web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DuAn1Web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DuAn1Web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DuAn1Web] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DuAn1Web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DuAn1Web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DuAn1Web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DuAn1Web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DuAn1Web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DuAn1Web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DuAn1Web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DuAn1Web] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DuAn1Web] SET  MULTI_USER 
GO
ALTER DATABASE [DuAn1Web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DuAn1Web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DuAn1Web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DuAn1Web] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DuAn1Web] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DuAn1Web] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DuAn1Web] SET QUERY_STORE = OFF
GO
USE [DuAn1Web]
GO
/****** Object:  Table [dbo].[Chatlieu]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chatlieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tenchatlieu] [nvarchar](50) NOT NULL,
	[Motachatlieu] [nvarchar](30) NOT NULL,
	[Trangthai] [int] NOT NULL,
 CONSTRAINT [PK_ChatLieu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitietsanpham]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietsanpham](
	[Id_Chitietsanpham] [int] IDENTITY(1,1) NOT NULL,
	[Tensanpham] [nvarchar](20) NOT NULL,
	[Id_Size] [int] NOT NULL,
	[Id_Danhmucsanpham] [int] NOT NULL,
	[Gia] [int] NOT NULL,
	[Id_Mausac] [int] NOT NULL,
	[Anhsanpham] [nvarchar](50) NULL,
	[Id_Thuonghieu] [int] NOT NULL,
	[Id_Chatlieu] [int] NOT NULL,
	[Id_Trongluong] [int] NOT NULL,
	[Soluong] [int] NOT NULL,
	[Trangthai] [int] NULL,
	[Ghichu] [nvarchar](100) NULL,
 CONSTRAINT [PK_ChiTietSanPham] PRIMARY KEY CLUSTERED 
(
	[Id_Chitietsanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danhmucsp]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danhmucsp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tendanhmuc] [nvarchar](50) NULL,
	[Trangthai] [int] NULL,
 CONSTRAINT [PK_DanhMucSP] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mausac]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mausac](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tenmausac] [nvarchar](20) NOT NULL,
	[Trangthai] [int] NOT NULL,
 CONSTRAINT [PK_MauSac] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tensize] [nvarchar](10) NOT NULL,
	[Motasize] [nvarchar](10) NULL,
	[Trangthai] [int] NOT NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Thuonghieu]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Thuonghieu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Tenthuonghieu] [nvarchar](10) NOT NULL,
	[Motathuonghieu] [nvarchar](10) NULL,
	[Trangthai] [int] NOT NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trongluong]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trongluong](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Trongluong] [nvarchar](50) NULL,
	[Trangthai] [int] NULL,
 CONSTRAINT [PK_TrongLuong] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_ChiTietSanPham]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ChiTietSanPham]
AS
SELECT 
    ctp.ID_ChiTietSanPham AS idchitietsanpham,
    ctp.Tensanpham AS Tensanpham,
    dm.Tendanhmuc AS Danhmuc,
    ms.Tenmausac AS Mausac,
    sz.Tensize AS Size,
    th.Tenthuonghieu AS Thuonghieu,
    cl.Tenchatlieu AS Chatlieu,
    tl.Trongluong AS TrongLuong,
    ctp.Gia,
    ctp.Anhsanpham,
    ctp.Soluong,
    ctp.Trangthai,
    ctp.Ghichu
FROM 
    dbo.Chitietsanpham ctp
INNER JOIN 
    dbo.Chatlieu cl ON ctp.ID_ChatLieu = cl.ID
INNER JOIN 
    dbo.Danhmucsp dm ON ctp.Id_Danhmucsanpham = dm.ID
INNER JOIN 
    dbo.Mausac ms ON ctp.Id_Mausac = ms.ID
INNER JOIN 
    dbo.Size sz ON ctp.ID_Size = sz.ID
INNER JOIN 
    dbo.Thuonghieu th ON ctp.Id_Thuonghieu = th.ID
INNER JOIN 
    dbo.Trongluong tl ON ctp.Id_Trongluong = tl.ID;
GO
/****** Object:  View [dbo].[vw_viewsanpham]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_viewsanpham]
AS
SELECT 
    ctp.ID_ChiTietSanPham AS idchitietsanpham,
    ctp.Tensanpham AS Tensanpham,
    dm.Tendanhmuc AS Danhmuc,
    ms.Tenmausac AS Mausac,
    sz.Tensize AS Size,
    th.Tenthuonghieu AS Thuonghieu,
    cl.Tenchatlieu AS Chatlieu,
    tl.Trongluong AS TrongLuong,
    ctp.Gia,
    ctp.Anhsanpham,
    ctp.Soluong,
    ctp.Trangthai,
    ctp.Ghichu
FROM 
    dbo.Chitietsanpham ctp
INNER JOIN 
    dbo.Chatlieu cl ON ctp.ID_ChatLieu = cl.ID
INNER JOIN 
    dbo.Danhmucsp dm ON ctp.Id_Danhmucsanpham = dm.ID
INNER JOIN 
    dbo.Mausac ms ON ctp.Id_Mausac = ms.ID
INNER JOIN 
    dbo.Size sz ON ctp.ID_Size = sz.ID
INNER JOIN 
    dbo.Thuonghieu th ON ctp.Id_Thuonghieu = th.ID
INNER JOIN 
    dbo.Trongluong tl ON ctp.Id_Trongluong = tl.ID;
GO
/****** Object:  Table [dbo].[anhsanpham]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anhsanpham](
	[Id] [nvarchar](50) NOT NULL,
	[Id_Chitietsanpham] [int] NOT NULL,
	[Tenfiileanh] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AnhSanPham] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitiethoadon]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitiethoadon](
	[Id_Cthd] [int] IDENTITY(1,1) NOT NULL,
	[Id_Hoadon] [int] NOT NULL,
	[Id_Chitietsanpham] [int] NOT NULL,
	[Soluong] [int] NOT NULL,
	[Gia] [int] NOT NULL,
	[Trangthai] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[Id_Cthd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chucvu]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chucvu](
	[Id_Chucvu] [int] IDENTITY(1,1) NOT NULL,
	[Tenquyen] [nvarchar](10) NULL,
 CONSTRAINT [PK_QuyenHan] PRIMARY KEY CLUSTERED 
(
	[Id_Chucvu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[Id_Hoadon] [int] IDENTITY(1,1) NOT NULL,
	[Mahoadon] [nvarchar](50) NOT NULL,
	[Id_Khachhang] [int] NULL,
	[Tenkhachhang] [nvarchar](30) NULL,
	[Diachi] [nvarchar](30) NULL,
	[Sodienthoai] [int] NULL,
	[Id_Nhanvien] [int] NOT NULL,
	[Ngaylaphd] [date] NOT NULL,
	[Tongtien] [int] NOT NULL,
	[Ghichu] [nvarchar](30) NULL,
	[Trangthai] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[Id_Hoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khachhang]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khachhang](
	[Id_Khachhang] [int] IDENTITY(1,1) NOT NULL,
	[Tenkhachhang] [nvarchar](30) NOT NULL,
	[Diachi] [nvarchar](30) NULL,
	[Sodienthoai] [int] NULL,
	[Ghichu] [nvarchar](30) NULL,
	[Trangthai] [int] NOT NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[Id_Khachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 7/31/2024 10:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[Id_Nhanvien] [int] IDENTITY(1,1) NOT NULL,
	[Tennhanvien] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
	[Tendangnhap] [nvarchar](30) NULL,
	[Matkhau] [nvarchar](30) NULL,
	[Id_Chucvu] [int] NULL,
	[Trangthai] [int] NOT NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Id_Nhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[anhsanpham] ([Id], [Id_Chitietsanpham], [Tenfiileanh]) VALUES (N'1', 1, N'10')
INSERT [dbo].[anhsanpham] ([Id], [Id_Chitietsanpham], [Tenfiileanh]) VALUES (N'2', 1, N'hasd')
GO
SET IDENTITY_INSERT [dbo].[Chatlieu] ON 

INSERT [dbo].[Chatlieu] ([Id], [Tenchatlieu], [Motachatlieu], [Trangthai]) VALUES (2, N'Vải nỉ', N'Vải nỉ mềm', 1)
INSERT [dbo].[Chatlieu] ([Id], [Tenchatlieu], [Motachatlieu], [Trangthai]) VALUES (3, N'Da bò', N'da thật 100%', 1)
INSERT [dbo].[Chatlieu] ([Id], [Tenchatlieu], [Motachatlieu], [Trangthai]) VALUES (4, N'Da', N'da thật 0.001%', 1)
INSERT [dbo].[Chatlieu] ([Id], [Tenchatlieu], [Motachatlieu], [Trangthai]) VALUES (5, N'Vải nỉ', N'Đạt mông to', 0)
INSERT [dbo].[Chatlieu] ([Id], [Tenchatlieu], [Motachatlieu], [Trangthai]) VALUES (6, N'Da bò', N'da thật 100%', 1)
INSERT [dbo].[Chatlieu] ([Id], [Tenchatlieu], [Motachatlieu], [Trangthai]) VALUES (7, N'Da', N'da thật 99%', 1)
INSERT [dbo].[Chatlieu] ([Id], [Tenchatlieu], [Motachatlieu], [Trangthai]) VALUES (8, N'Tơ', N'Tơ Tằm', 1)
INSERT [dbo].[Chatlieu] ([Id], [Tenchatlieu], [Motachatlieu], [Trangthai]) VALUES (9, N'da1', N'good', 1)
SET IDENTITY_INSERT [dbo].[Chatlieu] OFF
GO
SET IDENTITY_INSERT [dbo].[Chitietsanpham] ON 

INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (2, N'Hello Kitty', 1, 1, 20000000, 14, N'1badtz-maru.png', 1, 2, 3, 199, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (4, N'Cinamonroll', 1, 10, 12332, 6, N'1', 1, 2, 1, 199, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (21, N'Gau', 3, 4, 123212, 8, N'1', 1, 3, 3, 199, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (28, N'Kuromi	', 3, 6, 1232133, 14, NULL, 1, 4, 3, 199, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (29, N'Kuromi	', 3, 3, 1232133, 14, NULL, 1, 4, 3, 199, 0, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (30, N'Pocchacco	', 1, 1, 10, 6, NULL, 1, 2, 1, 199, 0, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (31, N'Pocchacco	', 1, 10, 10, 6, NULL, 1, 2, 1, 199, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (32, N'Pocchacco@@Pinamon', 1, 4, 1000000, 6, NULL, 1, 4, 1, 199, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (33, N'Gau om', 3, 4, 10000000, 10, NULL, 1, 4, 3, 1991, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (70, N'Hello Kitty', 1, 1, 1000000, 5, N'Anh1size1', 1, 2, 1, 199, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (71, N'Cinamonroll', 1, 1, 1000000, 8, N'Anh2size1', 1, 2, 1, 199, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (72, N'HelloKitty', 2, 1, 2500000, 5, N'Anh1size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (73, N'HelloKitty', 3, 1, 4000000, 5, N'Anh1size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (74, N'Cinamonroll', 2, 1, 2500000, 8, N'Anh2size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (75, N'Cinamonroll', 3, 1, 4000000, 8, N'Anh2size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (82, N'Pochacco', 1, 1, 1000000, 15, N'Anh5size1', 1, 3, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (83, N'Pochacco', 2, 1, 2500000, 15, N'Anh5size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (84, N'Pochacco', 3, 1, 4000000, 15, N'Anh5size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (85, N'Pompompurin', 1, 1, 1000000, 9, N'Anh6size1', 1, 3, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (86, N'Pompompurin', 2, 1, 2500000, 9, N'Anh6size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (87, N'Pompompurin', 3, 1, 4000000, 9, N'Anh6size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (91, N'My Melody', 1, 1, 1000000, 5, N'Anh8size1', 1, 3, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (92, N'My Melody', 2, 1, 2500000, 5, N'Anh8size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (93, N'My Melody', 3, 1, 4000000, 5, N'Anh8size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (94, N'Pekkle', 1, 1, 1000000, 10, N'Anh9size1', 1, 3, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (95, N'Pekkle', 2, 1, 2500000, 10, N'Anh9size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (96, N'Pekkle', 3, 1, 4000000, 10, N'Anh9size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (97, N'Little twin stars', 1, 1, 1000000, 9, N'Anh10size1', 1, 3, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (98, N'Little twin stars', 2, 1, 2500000, 9, N'Anh10size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (99, N'Little twin stars', 3, 1, 4000000, 9, N'Anh10size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (100, N'Gudetama', 1, 1, 1000000, 9, N'Anh11size', 1, 2, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (101, N'Gudetama', 2, 1, 2500000, 9, N'Anh11size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (102, N'Gudetama', 3, 1, 4000000, 9, N'Anh11size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (103, N'Tuxedo sam', 1, 1, 1000000, 10, N'Anh12size1', 1, 2, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (104, N'Tuxedo sam', 2, 1, 2500000, 10, N'Anh12size2', 1, 2, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (105, N'Tuxedo sam', 3, 1, 4000000, 10, N'Anh12size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (106, N'Hello Kitty', 1, 1, 1000000, 5, N'Anh1size1', 1, 2, 1, 1, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (107, N'Cinamonroll', 1, 1, 1000000, 8, N'Anh2size1', 1, 2, 1, 10, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (108, N'HelloKitty', 2, 1, 2500000, 5, N'Anh1size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (109, N'HelloKitty', 3, 1, 4000000, 5, N'Anh1size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (110, N'Cinamonroll', 2, 1, 2500000, 8, N'Anh2size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (111, N'Cinamonroll', 3, 1, 4000000, 8, N'Anh2size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (118, N'Pochacco', 1, 1, 1000000, 15, N'Anh5size1', 1, 3, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (119, N'Pochacco', 2, 1, 2500000, 15, N'Anh5size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (120, N'Pochacco', 3, 1, 4000000, 15, N'Anh5size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (121, N'Pompompurin', 1, 1, 1000000, 9, N'Anh6size1', 1, 3, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (122, N'Pompompurin', 2, 1, 2500000, 9, N'Anh6size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (123, N'Pompompurin', 3, 1, 4000000, 9, N'Anh6size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (127, N'My Melody', 1, 1, 1000000, 5, N'Anh8size1', 1, 3, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (128, N'My Melody', 2, 1, 2500000, 5, N'Anh8size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (129, N'My Melody', 3, 1, 4000000, 5, N'Anh8size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (130, N'Pekkle', 1, 1, 1000000, 10, N'Anh9size1', 1, 3, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (131, N'Pekkle', 2, 1, 2500000, 10, N'Anh9size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (132, N'Pekkle', 3, 1, 4000000, 10, N'Anh9size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (133, N'Little twin stars', 1, 1, 1000000, 9, N'Anh10size1', 1, 3, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (134, N'Little twin stars', 2, 1, 2500000, 9, N'Anh10size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (135, N'Little twin stars', 3, 1, 4000000, 9, N'Anh10size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (136, N'Gudetama', 1, 1, 1000000, 9, N'Anh11size', 1, 2, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (137, N'Gudetama', 2, 1, 2500000, 9, N'Anh11size2', 1, 3, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (138, N'Gudetama', 3, 1, 4000000, 9, N'Anh11size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (139, N'Tuxedo sam', 1, 1, 1000000, 10, N'Anh12size1', 1, 2, 1, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (140, N'Tuxedo sam', 2, 1, 2500000, 10, N'Anh12size2', 1, 2, 2, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (141, N'Tuxedo sam', 3, 1, 4000000, 10, N'Anh12size3', 1, 3, 3, 100, 1, NULL)
INSERT [dbo].[Chitietsanpham] ([Id_Chitietsanpham], [Tensanpham], [Id_Size], [Id_Danhmucsanpham], [Gia], [Id_Mausac], [Anhsanpham], [Id_Thuonghieu], [Id_Chatlieu], [Id_Trongluong], [Soluong], [Trangthai], [Ghichu]) VALUES (142, N'Gau bong Ten Huyen', 1, 1, 1, 5, NULL, 1, 2, 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Chitietsanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[Chitiethoadon] ON 

INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (56, 35, 2, 1, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (57, 35, 2, 1, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (59, 35, 2, 1, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (60, 35, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (61, 35, 32, 1, 1000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (64, 35, 2, 1, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (65, 35, 4, 4, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (66, 35, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (67, 35, 2, 1, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (69, 35, 2, 1, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (70, 35, 2, 1, 300000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (73, 36, 2, 10, 1000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (85, 38, 2, 10, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (86, 38, 4, 2, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (87, 38, 21, 13, 123212, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (94, 1, 2, 4, 400000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (95, 1, 21, 1, 123212, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (96, 1, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (97, 34, 2, 3, 300000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (98, 36, 21, 3, 369636, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (99, 27, 2, 1, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (100, 26, 2, 1, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (101, 27, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (102, 25, 2, 2, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (103, 36, 30, 4, 10, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (105, 36, 4, 6, 73992, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (106, 40, 2, 37, 3700000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (108, 43, 2, 4, 400000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (109, 43, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (115, 24, 71, 1, 1000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (116, 24, 31, 1, 10, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (117, 24, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (118, 24, 2, 1, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (119, 37, 141, 1, 4000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (120, 37, 140, 2, 5000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (122, 23, 2, 3, 300000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (124, 40, 21, 32, 3942784, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (125, 40, 4, 33, 406956, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (127, 40, 31, 2, 20, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (128, 41, 2, 6, 600000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (129, 20, 2, 2001, 200100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (135, 44, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (145, 46, 2, 2, 200000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (146, 46, 4, 2, 24664, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (148, 47, 29, 6, 7392798, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (149, 47, 2, 6, 600000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (153, 47, 21, 4, 492848, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (154, 47, 138, 1, 4000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (155, 47, 136, 1, 1000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (156, 47, 137, 1, 2500000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (160, 47, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (161, 45, 2, 1, 100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (162, 48, 4, 7, 86324, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (163, 48, 2, 9, 900000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (164, 48, 28, 100, 123213300, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (165, 50, 2, 21, 2100000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (167, 50, 28, 2, 2464266, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (168, 73, 2, 3, 60000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (169, 84, 2, 2, 40000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (170, 84, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (172, 89, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (173, 89, 2, 4, 80000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (174, 89, 21, 1, 123212, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (175, 89, 29, 1, 1232133, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (176, 85, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (177, 85, 29, 2, 2464266, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (178, 85, 21, 1, 123212, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (179, 85, 30, 1, 10, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (180, 83, 2, 6, 120000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (181, 83, 4, 2, 24664, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (182, 83, 21, 3, 369636, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (183, 83, 29, 4, 4928532, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (184, 83, 30, 4, 40, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (185, 83, 28, 3, 3696399, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (186, 88, 21, 1, 123212, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (187, 88, 4, 3, 36996, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (188, 88, 29, 1, 1232133, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (189, 88, 30, 1, 10, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (190, 82, 4, 1, 12332, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (191, 82, 2, 1, 20000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (192, 82, 21, 1, 123212, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (193, 82, 28, 1, 1232133, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (194, 82, 30, 1, 10, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (195, 81, 33, 2, 20000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (196, 81, 32, 2, 2000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (197, 79, 70, 3, 3000000, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (198, 77, 30, 1, 10, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (199, 77, 29, 1, 1232133, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (200, 77, 28, 1, 1232133, 1)
INSERT [dbo].[Chitiethoadon] ([Id_Cthd], [Id_Hoadon], [Id_Chitietsanpham], [Soluong], [Gia], [Trangthai]) VALUES (201, 77, 21, 1, 123212, 1)
SET IDENTITY_INSERT [dbo].[Chitiethoadon] OFF
GO
SET IDENTITY_INSERT [dbo].[Chucvu] ON 

INSERT [dbo].[Chucvu] ([Id_Chucvu], [Tenquyen]) VALUES (1, N'Qly')
INSERT [dbo].[Chucvu] ([Id_Chucvu], [Tenquyen]) VALUES (2, N'LaoCong')
INSERT [dbo].[Chucvu] ([Id_Chucvu], [Tenquyen]) VALUES (5, N'Admin')
SET IDENTITY_INSERT [dbo].[Chucvu] OFF
GO
SET IDENTITY_INSERT [dbo].[Danhmucsp] ON 

INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (1, N'Gấu ôm', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (2, N'GauCao', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (3, N'Ga?', 0)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (4, N'Gấu này ôm thôi đừng làm gì', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (6, N'Gấu cao 2m', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (8, N'gấu ôm cổ', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (10, N'Gấu ngủ', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (15, N'Gấu ôm', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (16, N'Gaubong', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (17, N'Gấu nằm', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (18, N'Gấu đứng', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (20, N'gấu ngồi', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (21, N'gấu vải', 1)
INSERT [dbo].[Danhmucsp] ([Id], [Tendanhmuc], [Trangthai]) VALUES (25, N'KO ny', 0)
SET IDENTITY_INSERT [dbo].[Danhmucsp] OFF
GO
SET IDENTITY_INSERT [dbo].[Hoadon] ON 

INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (1, N'HD01', 1, N'KhanhPham', N'HP', 91323123, 7, CAST(N'2023-11-05' AS Date), 112332, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (20, N'HD02', 1, N'KhanhPham', N'HP', 9923432, 7, CAST(N'2024-02-20' AS Date), 124664, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (23, N'HD03', 3, N'tiendat', N'hp ', 981230912, 7, CAST(N'2023-11-05' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (24, N'HD04', 3, N'tiendat', N'hp ', 981230912, 7, CAST(N'2023-11-05' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (25, N'HD05', 3, N'tiendat', N'hp ', 981230912, 7, CAST(N'2023-11-05' AS Date), 0, N'', 2)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (26, N'HD06', 5, N'qq', N'qq', 2114, 7, CAST(N'2023-11-05' AS Date), 0, N'', 2)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (27, N'HD07', 5, N'qq', N'qq', 2114, 7, CAST(N'2024-02-20' AS Date), 212332, N'
', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (28, N'cd1', 1, N'km', N'das', 93192, 7, CAST(N'2023-12-01' AS Date), 0, N'sv', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (29, N'cd1', 3, N'tiendat', N'hp ', 981230912, 7, CAST(N'2023-12-01' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (30, N'PD01', 3, N'tiendat', N'hp ', 981230912, 7, CAST(N'2023-12-01' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (32, N'pc01', 3, N'tiendat', N'hp ', 981230912, 7, CAST(N'2023-12-01' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (33, N'PC01', 5, N'qq', N'qq', 2114, 7, CAST(N'2023-12-01' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (34, N'Cd01', 3, N'Datkun', N'hp ', 981230912, 7, CAST(N'2023-12-01' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (35, N'hd01', 1, N'KhanhPham', N'HP', 913231239, 7, CAST(N'2023-12-01' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (36, N'HD09', 1, N'KhanhPham', N'HP', 913231239, 7, CAST(N'2024-02-20' AS Date), 3381461, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (37, N'PCD01', 9, N'TrungPham', NULL, 0, 7, CAST(N'2024-02-20' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (38, N'JK10', 1, N'KhanhPham', N'HP', 913231239, 7, CAST(N'2024-02-20' AS Date), 724664, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (40, N'ssas', 8, N'daccauaoi', N'HP', 91323123, 7, CAST(N'2024-02-21' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (41, N'NDP01', 1, N'KhanhPham', N'HP', 913231239, 7, CAST(N'2024-02-21' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (42, N'mp01', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-02-22' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (43, N'mp01', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-02-22' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (44, N'HD144', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-02-24' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (45, N'HDtest', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-01' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (46, N'HD_UILDA_8779', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-01' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (47, N'HD_LNANO_5106', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-01' AS Date), 224664, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (48, N'HD_DMZOU_0582', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 15997978, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (49, N'HD_ZQULF_8232', 3, N'Datkun', N'hp ', 981230912, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (50, N'HD_CLKJP_4143', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 124199624, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (51, N'HD_AAMJX_5643', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 4564266, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (52, N'HD_RXOHQ_7787', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (53, N'HD_AOIJI_2503', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (54, N'HD_BAIUJ_1637', 6, N'daccautulen', N'HP', 91323123, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (55, N'HD_ZDFTS_3947', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (56, N'HD_AOHOM_0071', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (57, N'HD_IMILE_4249', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (58, N'HD_LBLJZ_7874', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (59, N'HD_CZRAB_1109', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (60, N'HD_AAMJX_5643', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (61, N'HD_AAMJX_5643', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (62, N'HD_UIZOZ_6992', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (63, N'HD_KATFK_6769', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (64, N'HD_OZURR_1799', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (65, N'HD_UHQSF_3365', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (68, N'HD_AAMJX_5643', 4, N'Khanhnguyen', N'hp', 8232983, 12, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (69, N'HD_AAMJX_5643', 4, N'Khanhnguyen', N'hp', 8232983, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (70, N'HD006', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (71, N'HD007', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (72, N'HD007', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (73, N'12312123', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (74, N'3213', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (75, N'HD999', 1, N'KhanhPham', N'HP', 981230912, 7, CAST(N'2024-03-02' AS Date), 100000, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (76, N'HD9991', 1, N'KhanhPham', N'HP', 981230912, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (77, N'HoaDonMoi1', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (78, N'HoaDonMoi2', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (79, N'HoaDOn11', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (80, N'HoaDOn12', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (81, N'123121hh', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 60000000, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (82, N'newShit', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (83, N'newShit2344', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (84, N'newh002', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, N'', 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (85, N'hoadonnew003', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-02' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (86, N'HD_BSFAT_9147', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-07' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (87, N'HD_CHEXF_6555', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-07' AS Date), 0, NULL, 0)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (88, N'HD_NKCPI_4520', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-03-07' AS Date), 0, N'', 1)
INSERT [dbo].[Hoadon] ([Id_Hoadon], [Mahoadon], [Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Id_Nhanvien], [Ngaylaphd], [Tongtien], [Ghichu], [Trangthai]) VALUES (89, N'HD_IXZFB_5401', 1, N'KhanhPham', N'HP', 0, 7, CAST(N'2024-04-03' AS Date), 0, N'', 1)
SET IDENTITY_INSERT [dbo].[Hoadon] OFF
GO
SET IDENTITY_INSERT [dbo].[Khachhang] ON 

INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (1, N'KhanhPham', N'HP', 0, NULL, 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (3, N'Datkun', N'hp ', 981230912, N'null', 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (4, N'Khanhnguyen', N'hp', 8232983, N'', 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (5, N'qq', N'qq', 2114, N'', 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (6, N'daccautulen', N'HP', 91323123, N'null', 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (7, N'daccaulili', NULL, NULL, NULL, 0)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (8, N'daccauaoi', N'HP', 91323123, N'null', 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (9, N'TrungPham', NULL, NULL, NULL, 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (10, N'Lê vinh', N'HP', 9321231, N'daccau', 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (11, N'Lê vinh', N'HP', 338086647, N'?', 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (12, N'qq', N'qq', 2114, N'', 0)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (13, N'Lê quang vinh', N'Hn', 931233213, N'sex', 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (14, N'hhh', N'qq', 123456789, N'aa', 1)
INSERT [dbo].[Khachhang] ([Id_Khachhang], [Tenkhachhang], [Diachi], [Sodienthoai], [Ghichu], [Trangthai]) VALUES (15, N'hhh', N'qq', 123456789, N'aa', 0)
SET IDENTITY_INSERT [dbo].[Khachhang] OFF
GO
SET IDENTITY_INSERT [dbo].[Mausac] ON 

INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (5, N'Hồng', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (6, N'Tím', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (8, N'Trắng', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (9, N'Vàng khè', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (10, N'Xanh da trời', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (14, N'Xanh lá mạ', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (15, N'Xanh nước biển', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (16, N'Nâu xám', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (17, N'Xanh đen', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (18, N'Tím mộng mơ', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (19, N'Hồng mộng mơ', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (20, N'Đỏ Đậm', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (21, N'Đỏ đen ', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (22, N'Giàu nghèo có số', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (23, N'Xanh da trời', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (24, N'Đen', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (25, N'Xanh lục', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (26, N'Đỏ', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (27, N'Hồng', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (28, N'Tím', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (29, N'Trắng', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (30, N'Vàng ', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (31, N'vàng đen', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (32, N'vàng đen', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (33, N'tím than', 1)
INSERT [dbo].[Mausac] ([Id], [Tenmausac], [Trangthai]) VALUES (34, N'Không màu', 1)
SET IDENTITY_INSERT [dbo].[Mausac] OFF
GO
SET IDENTITY_INSERT [dbo].[Nhanvien] ON 

INSERT [dbo].[Nhanvien] ([Id_Nhanvien], [Tennhanvien], [Email], [Tendangnhap], [Matkhau], [Id_Chucvu], [Trangthai]) VALUES (7, N'khanh', N'khanh@gmail.com', N'1', N'123', 1, 1)
INSERT [dbo].[Nhanvien] ([Id_Nhanvien], [Tennhanvien], [Email], [Tendangnhap], [Matkhau], [Id_Chucvu], [Trangthai]) VALUES (10, N'KhanhPham', N'khanh@gmail.com', N'khanhz110', N'khanhz110', 2, 1)
INSERT [dbo].[Nhanvien] ([Id_Nhanvien], [Tennhanvien], [Email], [Tendangnhap], [Matkhau], [Id_Chucvu], [Trangthai]) VALUES (11, N'KhanhPham', N'khanh@gmail.com', N'khanhz110', N'khanhz110', 2, 1)
INSERT [dbo].[Nhanvien] ([Id_Nhanvien], [Tennhanvien], [Email], [Tendangnhap], [Matkhau], [Id_Chucvu], [Trangthai]) VALUES (12, N'Khánh phạm', N'khanhpham@gmail.com@gmail.com', N'1', N'123', 1, 1)
INSERT [dbo].[Nhanvien] ([Id_Nhanvien], [Tennhanvien], [Email], [Tendangnhap], [Matkhau], [Id_Chucvu], [Trangthai]) VALUES (13, N'Khánh phạm', N'khanhpham@gmail.com@gmail.com', N'1', N'123', 1, 1)
SET IDENTITY_INSERT [dbo].[Nhanvien] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([Id], [Tensize], [Motasize], [Trangthai]) VALUES (1, N'Size M', N'28 x 38mm', 1)
INSERT [dbo].[Size] ([Id], [Tensize], [Motasize], [Trangthai]) VALUES (2, N'Size L', N'30 x 20 cm', 1)
INSERT [dbo].[Size] ([Id], [Tensize], [Motasize], [Trangthai]) VALUES (3, N'Size XL', N'50 x 25cm', 1)
INSERT [dbo].[Size] ([Id], [Tensize], [Motasize], [Trangthai]) VALUES (8, N'Size XXL', N'80 x 40cm', 1)
INSERT [dbo].[Size] ([Id], [Tensize], [Motasize], [Trangthai]) VALUES (9, N'Size XXXL', N'1m x 50cm', 1)
INSERT [dbo].[Size] ([Id], [Tensize], [Motasize], [Trangthai]) VALUES (10, N'Size XXXXL', N'1m2 x 75cm', 1)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Thuonghieu] ON 

INSERT [dbo].[Thuonghieu] ([Id], [Tenthuonghieu], [Motathuonghieu], [Trangthai]) VALUES (1, N'HelloKitty', N'Bangau', 1)
INSERT [dbo].[Thuonghieu] ([Id], [Tenthuonghieu], [Motathuonghieu], [Trangthai]) VALUES (2, N'3123', N'CTY BanGau', 1)
INSERT [dbo].[Thuonghieu] ([Id], [Tenthuonghieu], [Motathuonghieu], [Trangthai]) VALUES (3, N'3123', N'Bangau', 0)
INSERT [dbo].[Thuonghieu] ([Id], [Tenthuonghieu], [Motathuonghieu], [Trangthai]) VALUES (4, N'PULL', N'Bangau', 1)
INSERT [dbo].[Thuonghieu] ([Id], [Tenthuonghieu], [Motathuonghieu], [Trangthai]) VALUES (5, N'HelloKitty', N'Donlau', 0)
INSERT [dbo].[Thuonghieu] ([Id], [Tenthuonghieu], [Motathuonghieu], [Trangthai]) VALUES (6, N'HelloKitty', N'Donlau', 0)
INSERT [dbo].[Thuonghieu] ([Id], [Tenthuonghieu], [Motathuonghieu], [Trangthai]) VALUES (7, N'Sanrio', N'Usa', 0)
SET IDENTITY_INSERT [dbo].[Thuonghieu] OFF
GO
SET IDENTITY_INSERT [dbo].[Trongluong] ON 

INSERT [dbo].[Trongluong] ([Id], [Trongluong], [Trangthai]) VALUES (1, N'1kg', 1)
INSERT [dbo].[Trongluong] ([Id], [Trongluong], [Trangthai]) VALUES (2, N'1.5kg', 1)
INSERT [dbo].[Trongluong] ([Id], [Trongluong], [Trangthai]) VALUES (3, N'3.6kg', 1)
SET IDENTITY_INSERT [dbo].[Trongluong] OFF
GO
ALTER TABLE [dbo].[Chitietsanpham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_ChatLieu] FOREIGN KEY([Id_Chatlieu])
REFERENCES [dbo].[Chatlieu] ([Id])
GO
ALTER TABLE [dbo].[Chitietsanpham] CHECK CONSTRAINT [FK_ChiTietSanPham_ChatLieu]
GO
ALTER TABLE [dbo].[Chitietsanpham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_DanhMucSP] FOREIGN KEY([Id_Danhmucsanpham])
REFERENCES [dbo].[Danhmucsp] ([Id])
GO
ALTER TABLE [dbo].[Chitietsanpham] CHECK CONSTRAINT [FK_ChiTietSanPham_DanhMucSP]
GO
ALTER TABLE [dbo].[Chitietsanpham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_MauSac] FOREIGN KEY([Id_Mausac])
REFERENCES [dbo].[Mausac] ([Id])
GO
ALTER TABLE [dbo].[Chitietsanpham] CHECK CONSTRAINT [FK_ChiTietSanPham_MauSac]
GO
ALTER TABLE [dbo].[Chitietsanpham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_Size] FOREIGN KEY([Id_Size])
REFERENCES [dbo].[Size] ([Id])
GO
ALTER TABLE [dbo].[Chitietsanpham] CHECK CONSTRAINT [FK_ChiTietSanPham_Size]
GO
ALTER TABLE [dbo].[Chitietsanpham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_ThuongHieu] FOREIGN KEY([Id_Thuonghieu])
REFERENCES [dbo].[Thuonghieu] ([Id])
GO
ALTER TABLE [dbo].[Chitietsanpham] CHECK CONSTRAINT [FK_ChiTietSanPham_ThuongHieu]
GO
ALTER TABLE [dbo].[Chitietsanpham]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietSanPham_TrongLuong] FOREIGN KEY([Id_Trongluong])
REFERENCES [dbo].[Trongluong] ([Id])
GO
ALTER TABLE [dbo].[Chitietsanpham] CHECK CONSTRAINT [FK_ChiTietSanPham_TrongLuong]
GO
ALTER TABLE [dbo].[Chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_ChiTietSanPham] FOREIGN KEY([Id_Chitietsanpham])
REFERENCES [dbo].[Chitietsanpham] ([Id_Chitietsanpham])
GO
ALTER TABLE [dbo].[Chitiethoadon] CHECK CONSTRAINT [FK_ChiTietHoaDon_ChiTietSanPham]
GO
ALTER TABLE [dbo].[Chitiethoadon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon1] FOREIGN KEY([Id_Hoadon])
REFERENCES [dbo].[Hoadon] ([Id_Hoadon])
GO
ALTER TABLE [dbo].[Chitiethoadon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon1]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([Id_Khachhang])
REFERENCES [dbo].[Khachhang] ([Id_Khachhang])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([Id_Nhanvien])
REFERENCES [dbo].[Nhanvien] ([Id_Nhanvien])
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[Nhanvien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_ChucVu] FOREIGN KEY([Id_Chucvu])
REFERENCES [dbo].[Chucvu] ([Id_Chucvu])
GO
ALTER TABLE [dbo].[Nhanvien] CHECK CONSTRAINT [FK_NhanVien_ChucVu]
GO
USE [master]
GO
ALTER DATABASE [DuAn1Web] SET  READ_WRITE 
GO
