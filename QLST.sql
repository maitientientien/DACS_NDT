USE [master]
GO
/****** Object:  Database [QLST]    Script Date: 6/10/2022 2:55:39 AM ******/
CREATE DATABASE [QLST]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLST', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLST.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLST_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLST_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLST] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLST].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLST] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLST] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLST] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLST] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLST] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLST] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLST] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLST] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLST] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLST] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLST] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLST] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLST] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLST] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLST] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLST] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLST] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLST] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLST] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLST] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLST] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLST] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLST] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLST] SET  MULTI_USER 
GO
ALTER DATABASE [QLST] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLST] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLST] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLST] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLST] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLST] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLST] SET QUERY_STORE = OFF
GO
USE [QLST]
GO
/****** Object:  Table [dbo].[cthd]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cthd](
	[MaHD] [varchar](50) NOT NULL,
	[MaSP] [varchar](50) NOT NULL,
	[TenSP] [varchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ctpn]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctpn](
	[MaPN] [varchar](50) NULL,
	[MaSP] [varchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaNhap] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giohang]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giohang](
	[MaSP] [varchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[MaHD] [varchar](50) NOT NULL,
	[MaNV] [varchar](50) NOT NULL,
	[NgayXuat] [varchar](50) NOT NULL,
	[TongTien] [float] NOT NULL,
	[MaKH] [varchar](50) NOT NULL,
	[MaKM] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[MaKH] [varchar](50) NOT NULL,
	[HoTen] [varchar](50) NOT NULL,
	[SDT] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyenmai]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyenmai](
	[MaKM] [varchar](50) NOT NULL,
	[TenCT] [varchar](50) NOT NULL,
	[NgayBD] [varchar](50) NOT NULL,
	[NgayKT] [varchar](50) NOT NULL,
	[PhanTram] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguoidung]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguoidung](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[MaNV] [varchar](50) NOT NULL,
	[HoTen] [varchar](50) NULL,
	[NgaySinh] [varchar](50) NULL,
	[GioiTinh] [varchar](50) NULL,
	[DiaChi] [varchar](50) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[TinhTrang] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC,
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhacungcap]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcap](
	[MaNCC] [varchar](50) NOT NULL,
	[TenNCC] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phanloai]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanloai](
	[MaLoai] [varchar](50) NOT NULL,
	[TenLoai] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieunhap]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieunhap](
	[MaPN] [varchar](50) NOT NULL,
	[MaNV] [varchar](50) NOT NULL,
	[NgayNhap] [varchar](50) NOT NULL,
	[TongTien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 6/10/2022 2:55:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[MaSP] [varchar](50) NOT NULL,
	[TenSP] [varchar](50) NOT NULL,
	[MaLoai] [varchar](50) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonViTinh] [varchar](50) NOT NULL,
	[DonGia] [float] NOT NULL,
	[TenNhaSX] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[nguoidung] ADD  DEFAULT (NULL) FOR [HoTen]
GO
ALTER TABLE [dbo].[nguoidung] ADD  DEFAULT (NULL) FOR [NgaySinh]
GO
ALTER TABLE [dbo].[nguoidung] ADD  DEFAULT (NULL) FOR [GioiTinh]
GO
ALTER TABLE [dbo].[nguoidung] ADD  DEFAULT (NULL) FOR [DiaChi]
GO
ALTER TABLE [dbo].[nguoidung] ADD  DEFAULT (NULL) FOR [SoDienThoai]
GO
ALTER TABLE [dbo].[nguoidung] ADD  DEFAULT (NULL) FOR [Email]
GO
USE [master]
GO
ALTER DATABASE [QLST] SET  READ_WRITE 
GO
