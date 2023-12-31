USE [master]
GO
/****** Object:  Database [QuanLyThuCung]    Script Date: 4/5/2023 5:49:42 PM ******/
CREATE DATABASE [QuanLyThuCung]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyThuCung', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyThuCung.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyThuCung_log', FILENAME = N'E:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyThuCung_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyThuCung] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyThuCung].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyThuCung] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyThuCung] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyThuCung] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyThuCung] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyThuCung] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyThuCung] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyThuCung] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyThuCung] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyThuCung] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyThuCung] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyThuCung] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyThuCung] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyThuCung', N'ON'
GO
ALTER DATABASE [QuanLyThuCung] SET QUERY_STORE = OFF
GO
USE [QuanLyThuCung]
GO
/****** Object:  Table [dbo].[CT_HoaDon]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_HoaDon](
	[SoHD] [nvarchar](128) NOT NULL,
	[MaDT] [varchar](128) NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_CT_HoaDon] PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC,
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CT_PhieuDat]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CT_PhieuDat](
	[SoPD] [nvarchar](128) NOT NULL,
	[MaDT] [varchar](128) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_CT_PhieuDat] PRIMARY KEY CLUSTERED 
(
	[SoPD] ASC,
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[MaDV] [varchar](128) NOT NULL,
	[TenDV] [nvarchar](500) NULL,
 CONSTRAINT [PK_DichVu] PRIMARY KEY CLUSTERED 
(
	[MaDV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoDungTC]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoDungTC](
	[MaDD] [varchar](128) NOT NULL,
	[TenDD] [nvarchar](500) NULL,
	[MaLoaiTC] [varchar](128) NULL,
	[MaNSX] [nvarchar](128) NOT NULL,
	[MaLoaiDD] [nvarchar](128) NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_DoDungTC] PRIMARY KEY CLUSTERED 
(
	[MaDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoiTuongKD]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoiTuongKD](
	[MaDT] [varchar](128) NOT NULL,
	[DonGia] [decimal](18, 0) NULL,
	[TrangThai] [bit] NULL,
	[GiamGia] [decimal](18, 0) NULL,
	[MoTa] [nvarchar](500) NULL,
	[ChiTiet] [ntext] NULL,
	[AnhDaiDien] [varchar](max) NULL,
	[MaPLDTKD] [varchar](500) NULL,
 CONSTRAINT [PK_SPKD] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[Id] [nvarchar](128) NOT NULL,
	[MaDT] [varchar](128) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangSX]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangSX](
	[MaNSX] [nvarchar](128) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SuatXu] [nvarchar](50) NULL,
 CONSTRAINT [PK_HangSX] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhThucThanhToan]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucThanhToan](
	[MaHT] [int] IDENTITY(1,1) NOT NULL,
	[TenHT] [nvarchar](100) NULL,
 CONSTRAINT [PK_HinhThucThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaHT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[SoHD] [nvarchar](128) NOT NULL,
	[NgayLap] [nchar](10) NULL,
	[TongThanhTien] [money] NULL,
	[MaNS] [nvarchar](128) NULL,
	[TenNguoiNhan] [nvarchar](50) NULL,
	[DiaChiGiao] [nvarchar](100) NULL,
	[IdNguoiDung] [nvarchar](128) NULL,
	[MaHT] [int] NULL,
	[SDTNguoiNhan] [varchar](50) NULL,
	[EmailNguoiNhan] [nvarchar](256) NULL,
	[GhiChu] [ntext] NULL,
 CONSTRAINT [PK_HoaDon_1] PRIMARY KEY CLUSTERED 
(
	[SoHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDD]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDD](
	[MaLoaiDD] [nvarchar](128) NOT NULL,
	[TenLoaiDD] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiDD] PRIMARY KEY CLUSTERED 
(
	[MaLoaiDD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThuCung]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThuCung](
	[MaLoaiTC] [varchar](128) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
 CONSTRAINT [PK_LoaiThuCung] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanSU]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanSU](
	[MaNS] [nvarchar](128) NOT NULL,
	[TenNS] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[LoaiTK] [bit] NOT NULL,
	[MaCV] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanSU] PRIMARY KEY CLUSTERED 
(
	[MaNS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanLoaiDTKD]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanLoaiDTKD](
	[MaPLDTKD] [varchar](500) NOT NULL,
	[TenLoai] [nvarchar](500) NULL,
 CONSTRAINT [PK_PhanLoaiDTKD] PRIMARY KEY CLUSTERED 
(
	[MaPLDTKD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDat]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDat](
	[SoPD] [nvarchar](128) NOT NULL,
	[NgayLap] [datetime] NULL,
	[SoTienCoc] [money] NULL,
	[HinhThucCoc] [nvarchar](50) NULL,
	[NgayHen] [nchar](10) NULL,
	[IdNguoiDung] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_PhieuDat] PRIMARY KEY CLUSTERED 
(
	[SoPD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuCung]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuCung](
	[MaTC] [varchar](128) NOT NULL,
	[TenTC] [nvarchar](500) NULL,
	[MaLoaiTC] [varchar](128) NULL,
	[GioiTinh] [bit] NULL,
	[KichCo] [nvarchar](50) NULL,
	[TiemPhong] [bit] NULL,
 CONSTRAINT [PK_ThuCung] PRIMARY KEY CLUSTERED 
(
	[MaTC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnhDTKD]    Script Date: 4/5/2023 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnhDTKD](
	[MaHA] [varchar](128) NOT NULL,
	[MaDT] [varchar](128) NOT NULL,
	[TenHA] [varchar](max) NULL,
	[DuongDan] [varchar](max) NULL,
 CONSTRAINT [PK_HinhAnhDTKD] PRIMARY KEY CLUSTERED 
(
	[MaHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[DichVu] ([MaDV], [TenDV]) VALUES (N'08ebbdda-af3c-43fd-aa7b-4094d7e50e66', N'Khánh Sạn Gâu Meo')
INSERT [dbo].[DichVu] ([MaDV], [TenDV]) VALUES (N'3b0f195c-4298-4c49-8d6d-110804711f80', N'Cắt Móng Meo Meo')
INSERT [dbo].[DichVu] ([MaDV], [TenDV]) VALUES (N'a34d44b8-22a2-4550-b886-1bc1d9ed49f4', N'Tắm Gâu Meo')
INSERT [dbo].[DichVu] ([MaDV], [TenDV]) VALUES (N'f0d009a4-2fd6-46d4-abf2-4feb52e58444', N'Tỉa Lông Gâu Gâu')
GO
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'09460557-ea1f-4430-b9e2-14999ac035fb', N'Thức ăn cho chó hạt mềm vị thịt bò JERHIGH Beef Recipe', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'099402e2-b329-4203-94c9-271f40042104', N'Thức ăn cho chó Poodle con ROYAL CANIN Poodle Puppy', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'0c55c175-b829-4b68-8e34-11c55f45b818', N'Ổ đệm cho chó mèo PAW hình con cá mập', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'13706d9f-6ea0-4229-8684-6c4fbcd1942a', N'Khay vệ sinh cho chó MAKAR Dog Toilet Trays Medium', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'15cd93e1-2c26-4055-9056-eefdbeb3696a', N'Nhà cây cho mèo Cat Tree QQ80324-7', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'1688b3e0-2415-4d54-adff-cd40133565a7', N'Túi đựng chó mèo ANIME hình họa tiết Dark Cats', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'1e3d5bed-7bd8-4a80-b927-ede51448a0d4', N'Thuốc nhỏ gáy trị ve rận cho mèo MERIAL Frontline Plus', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'21e06e9d-152e-46a8-906d-597cd78b9cc2', N'Pate cho chó vị thịt bò cà rốt JERHIGH Beef Grilled Carrot Gravy', N'2', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'21fb177a-17b8-4a0c-b95c-c0195d93c837', N'Lồng vận chuyển chó mèo IRIS ATC Dog & Cat Kennel', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'22f7f2e7-2f5b-43a3-b0c2-91dc69c38209', N'Thức ăn cho mèo giúp loại bỏ búi lông ZENITH Cat Hairball', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'25e1d592-e5c8-4123-b43f-67b1cc2f0447', N'Pate cho mèo vị nước sốt cá ngừ WHISKAS Tuna Flavour Sauce', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'27b0ae35-077c-458b-bf46-2e8e4b61211d', N'Ổ đệm cho chó mèo PAW hình quả chuối', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'29f948c7-71bd-46e0-82bb-37bcf885abbe', N'Ổ đệm cho chó mèo chấm bi ELITE', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'2a72d35a-22cd-489a-b908-8331b231976d', N'Túi đựng chó mèo ANIME hình họa tiết White Cats', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'2f960151-6d62-4632-9ce9-914ada29a039', N'Thức ăn cho chó con cỡ nhỏ ROYAL CANIN Mini Puppy', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'343ea24a-f37d-4213-9d7e-b109f97ef9c5', N'Vòng cổ trị ve rận cho mèo BIOLINE Flea and Tick Collar for Cats', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'34412cec-b42c-404a-bcbb-3190571a1a17', N'Thức ăn cho chó con PURINA PRO PLAN Small & Mini Puppy', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'37551014-566c-479c-99ee-313c3dc95aa3', N'Pate cho chó nước sốt vị thịt bò PEDIGREE Pouch Beef', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'375dab77-c036-4e51-8116-0607975109c4', N'Vòng cổ trị ve rận cho mèo Magic Herbal Collar For Cat', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'39765b16-589d-40eb-b9e5-05d93263662d', N'Pate cho chó vị thịt bò IRIS One Care Beef', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'3a636289-96f1-4d16-8211-7029b0fd9b23', N'Pate cho mèo vị cá ngừ CAT SEA FISH Pure Tuna Meat', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'3ab0999e-64d7-4c16-8ef2-b47a3a878805', N'Khay vệ sinh cho chó thành cao SAWYER PET Toilet', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'3c50b0aa-3b11-4b94-8b99-e602bad7e282', N'Nhà cây cho mèo Cat Tree F3032', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'3eabc688-3f27-4366-841f-95e6745fe5ef', N'Khay vệ sinh cho chó MAKAR Dog Toilet Trays Small', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'404a0646-564f-4d66-815e-6cb548f47025', N'Vòng cổ cho chó cỡ nhỏ PAW bằng da đính cườm cao cấp', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'4a2bf620-aaa7-4eb4-b82e-4b511a3b12f1', N'Lược chải lông chó mèo bấm nút DELE M006 Round Head', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'4acadd56-0e07-44a7-a114-b472e463fb18', N'Lọ sữa tắm hương hoa JOYCE & DOLLS dùng thử cho chó mèo', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'4cd846c4-577e-46dd-ada4-aebce03f30c8', N'Vòng cổ chó mèo kèm dây dắt cỡ mini HAND IN HAND', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'527e2420-cdc1-4356-98ea-d3c64c661ddf', N'Bàn cào móng cho mèo dạng cong lượn sóng', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'53320b6a-ca93-4f4c-bbe5-5fbc6c9da1d8', N'Khay vệ sinh cho chó thành cao IRIS TRT650', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'5a872d48-9dfb-4360-9e3d-92e58f0fab7f', N'Pate cho mèo vị cá cơm CAT SEA FISH Tuna with Anchovy', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'5b15a812-c3cd-46ef-8902-415d7ca5f837', N'Cát vệ sinh thủy tinh cho mèo TRIXIE Silikatstreu', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'5b34c591-7ebc-433f-93ee-473672e2340d', N'Sữa tắm cho chó mèo hương hoa hồng JOYCE & DOLLS Rose Dew', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'5f3b6c16-4b9d-4ddb-bcf4-04113531ce67', N'Cát vệ sinh hữu cơ cho mèo CAT’S BEST Smart Peppets', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'6876e781-7e83-428c-9645-35df6820739d', N'Pate cho mèo mẹ và mèo con CATIDEA Mother & Baby Cat', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'76d13cc7-617a-4d6a-abad-bd1bdbd8639b', N'Lược chải lông chó mèo đầu lưỡi mềm BOBO Pet Comb', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'7a6794a8-0309-46f8-b3ef-9280c935ce26', N'Thức ăn cho mèo mẹ và mèo con CATIDEA Fairy Chef Mother & Baby', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'7bdb9041-db16-4296-adad-425dd6c5ce39', N'Sữa tắm khô cho chó mèo JOYCE & DOLLS Waterless Cleansing Foam', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'7dde8ed3-9a14-4b40-a900-2fc77322cb7e', N'Cát vệ sinh cho mèo bột gỗ IRIS Woody Fresh WF70', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'80905639-f252-4bb9-832d-158511977e4b', N'Balo đựng chó mèo Dogismile PETISMILE', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'810626ee-20cc-4efc-849a-505d0b1046cf', N'Thức ăn cho chó Poodle MKB All Life Stages Formula Nutrition', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'863cd6df-6f6f-4f2b-94f3-2fe2ca256c9e', N'Quần áo cho chó mèo AMBABY PET 2JXF164', N'2', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'9104e1a8-43bd-409e-9382-2764679de2cd', N'Bánh thưởng cho mèo thịt thật CATIDEA Fairy Chef Freeze Dried Raw 6in1', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'999c9a75-bb44-4829-bdb5-f9796ee5e239', N'Ổ đệm cho chó mèo PAW hình dưa hấu', N'2', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'9d867fac-ac0d-4d2d-82a4-f0ed1fc5bf7b', N'Thức ăn cho chó hạt mềm vị thịt bò ORIGI-7 Beef', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'9ff6cdf1-729c-461c-b850-f98df4ec3356', N'Thức ăn cho mèo mọi lứa tuổi CATIDEA Basic Meat Freeze Dried', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'a5b83090-5073-4144-a2db-ce2d4b3796d5', N'Pate cho chó hỗ trợ chức năng gan và sáng mắt IRIS Benefit For Eyes & Liver', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'a5f2bbfd-aaca-4376-8215-97f881630d88', N'Khay vệ sinh cho chó thành cao IRIS TRT500', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'aa24a4bb-88b8-4599-b52c-335205147514', N'Cát vệ sinh cho mèo than hoạt tính IRIS Charcoal SNS70', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'abd7dfb7-60ee-4059-a35c-59a8cb638a5b', N'Thức ăn cho chó con hạt mềm ZENITH Puppy Chicken Potato', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'b4355dde-9b1b-4b08-8df2-a247cf341004', N'Khay vệ sinh cho chó đi đúng chỗ IRIS FTT', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'ba11631f-09d2-49ae-b2b8-1f0e985f74ef', N'Cát vệ sinh cho mèo siêu vón IRIS KFAG100', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'ba6f8f63-bad2-4500-8bfd-8836d792b40e', N'Lược chải lông chó mèo nút bấm KUDI Pet Grooming Slicker Brushes', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'be7a5e66-75a8-403b-ae3d-d5e30545889c', N'Nhà cây cho mèo Cat Tree QQ80618-1', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'bf59d12c-9d78-451a-a6d1-fa766b1ac2ae', N'Xẻng xúc phân chó mèo PAW bằng nhựa cao cấp đủ màu', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'c6da68b6-91bb-48b6-bba0-66211ef50131', N'Cát vệ sinh hữu cơ cho mèo CAT’S BEST Original', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'c731e72c-917b-42a0-8370-305d49800118', N'Thuốc xổ giun cho mèo BAYER Drontal Cat', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'cf982526-4753-4ae8-81c4-556d70ab3978', N'Trụ cào móng cho mèo kèm đồ chơi QQ60060B', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'd088188d-e11b-47c2-948a-7114461c780c', N'Trụ cào móng cho mèo kèm đồ chơi QQ60064A', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'd28cd57c-2d78-4be9-a563-d80cc103cb4e', N'Quần áo cho chó mèo AMBABY PET 2JXF216', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'd9dd2e9b-01ab-4941-9e50-758bfa4e8046', N'Balo đựng chó mèo PETISMILE Dis78 Favorite Space', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 13)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'e5e9b818-295e-4ed5-8486-6a67be1df714', N'Xích cho chó đai ngực cỡ mini HAND IN HAND', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'e87c600b-372a-4135-9906-a0120ec04ec0', N'Thuốc xịt trị ve rận cho chó mèo MERIAL Frontline Spray Treatment', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'ea8dde4a-3357-4d78-815b-813ac314e35f', N'Vòng cổ cho chó mèo kèm dây dắt AMBABY PET 1JXS017', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'eaa115ff-1a0b-4f20-a316-2ee0b0e791b0', N'Lồng vận chuyển chó mèo AUPET BP27 Pet Kennel', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'f2fbc19d-aa3f-4097-b69a-4db28b141015', N'Thức ăn cho mèo con ROYAL CANIN Kitten', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'f68b9470-a67f-486d-9e30-6eff2ddd35ec', N'Pate cho chó vị thịt bò trộn rau củ IRIS Chicken Beef Vegetable', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'f796ae5d-3c13-494e-81ec-8de73d1dce09', N'Nệm cho chó mèo BOBBY PET DS14OB', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'f9b092c5-6380-432a-8ba6-188f2328a349', N'Khay vệ sinh cho chó MAKAR Dog Toilet Trays Large', N'2', N'86b9c534-106f-456e-a140-2eb7faf3db41', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'f9e8e7ce-7d11-4130-9f98-f3f5cf46cf18', N'Lồng vận chuyển chó mèo cỡ đại AUPET Travel Box Kennel', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
INSERT [dbo].[DoDungTC] ([MaDD], [TenDD], [MaLoaiTC], [MaNSX], [MaLoaiDD], [SoLuong]) VALUES (N'fe974dc3-8408-4b1c-a81f-e612ee059ee2', N'Vòng cổ chó mèo hình bàn chân HAND IN HAND Pet Collar', N'1', N'23899e08-6005-4b26-92fe-7f3e380f7343', NULL, 12)
GO
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'08ebbdda-af3c-43fd-aa7b-4094d7e50e66', CAST(200000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Mama , Papa đi chơi bỏ con ở nhà hả :<<<. Thoi con đừng buồn, đến đây chơi với cô chú và các bạn con sẽ không cô đơn nữa nè.', N'Mama , Papa đi chơi bỏ con ở nhà hả :<<<. Thoi con đừng buồn, đến đây chơi với cô chú và các bạn con sẽ không cô đơn nữa nè.', N'~/ImagesProduct/DichVu/se5.png', N'DV')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'09460557-ea1f-4430-b9e2-14999ac035fb', CAST(275000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thức ăn cho chó hạt mềm vị thịt bò JERHIGH Beef Recipe (Meat As Meals) dành cho tất cả các giống chó từ bé đến trưởng thành.', N'JERHIGH Beef Recipe mang lại cho thú cưng sự hưng phấn và ăn ngon hơn mỗi ngày. Các thành phần nguyên liệu được sản xuất dựa trên công thức đặc biệt. Giúp cân bằng dinh dưỡng cho vật nuôi. Bổ sung protein chất lượng cao duy trì năng lượng mỗi ngày. Omega 3 và 6 trong cá và các loại thảo mộc giúp bổ sung chất dinh dưỡng cho da và lông.', N'~/ImagesProduct/DoDung/HKCCho1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'099402e2-b329-4203-94c9-271f40042104', CAST(175000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thức ăn cho chó Poodle con ROYAL CANIN Poodle Puppy dành riêng cho tất cả các giống chó Teacup, Tiny Poodle, Toy Poodle, Standard Poodle dưới 10 tháng tuổi.', N'Thức ăn cho chó Poodle con ROYAL CANIN Poodle Puppy với công thức đặc chế riêng cho nhu cầu dinh dưỡng của chó Poodle trong giai đoạn mới cai sữa. Sản phẩm được chế biến theo công thức hỗ trợ phát triển toàn diện, tăng sức đề kháng của chó con. Đồng thời tăng khả năng tư duy, vận động của chó con, đẩy nhanh quá trình phát triển võng mạc của chó.', N'~/ImagesProduct/DoDung/HKCCho2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'0c55c175-b829-4b68-8e34-11c55f45b818', CAST(580000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Ổ đệm cho chó mèo PAW hình con cá mập với thiết kế độc đáo. Hình dáng ngôi nhà hình cá mập mang tới chiếc giường ấm áp, an toàn cho thú cưng của bạn.', N'Ổ đệm cho chó mèo PAW hình con cá mập với chất liệu vải nhung mềm mại, cao cấp an toàn cho thú cưng. Cho thú cưng một cảm giác êm ái khi nằm trên nệm. Với sắc xanh nổi bật. Được thiết kế cách điệu vô cùng đáng yêu. Mang tới những phút giây thư giãn và nghỉ ngơi cho thú cưng của bạn. Ổ đệm được làm từ chất liệu vải cao cấp. Bao gồm lớp vải mỏng bên ngoài, bên trong là lớp lông cừu dày, êm. Đặc biệt rất dễ để vệ sinh và làm sạch khi bẩn. Phù hợp với không gian ngôi nhà của bạn. Bạn cũng có thể thoải mái di chuyển nệm tới bất kì vị trí nào mà bạn mong muốn.', N'~/ImagesProduct/DoDung/DemTham4.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'13706d9f-6ea0-4229-8684-6c4fbcd1942a', CAST(290000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Khay vệ sinh cho chó MAKAR Dog Toilet Trays Medium với thiết kế thông minh được làm từ 100% nhựa tổng hợp cao cấp an toàn với thú cưng và môi trường. Phù hợp với tất cả các giống chó và giới tính đực cái có trọng lượng dưới 10kg.', N'Khay vệ sinh cho chó MAKAR Dog Toilet Trays Medium với tấm lưới lót để nước tiểu không bị vung vãi khắp nhà và làm ướt lông thú cưng. Phần khay lưới bên dưới chắc và không bị ăn mòn. Những chú chó con có thể đứng trên khay để đi vệ sinh dễ dàng và thuận tiện. Phần thành cao chống lại vi khuẩn, côn trùng và ngăn nước tiểu bắn ra ngoài. Đặc biệt, cún con sẽ đánh hơi được dễ dàng và xác định được vị trí để thải ra nhanh hơn. Dễ dàng trong việc hướng dẫn và huấn luyện.', N'~/ImagesProduct/DoDung/KhayVeSinh1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'15cd93e1-2c26-4055-9056-eefdbeb3696a', CAST(700000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Nhà cây cho mèo Cat Tree QQ80324-7 với hình dáng gọn gàng, trụ vuông với hình bàn chân mèo đáng yêu. Kết hợp với cổng vòm sẽ là nơi lý tưởng cho chú mèo con nằm ngủ. Trụ cào móng với đồ chơi quả bóng sẽ khiến cho chú mèo của bạn thích thú hơn bao giờ hết. Chúng có thể chơi cả ngày mà không thấy buồn chán. Phù hợp với tất cả các giống mèo.', N'Nhà cây cho mèo Cat Tree QQ80324-7 hay còn gọi là Cat Stand, Cat Condo. Có thể hiểu như một ngôi nhà, một sân chơi, một phòng tập thể hình dành cho mèo yêu tận hưởng những giây phút thư giãn, giải trí. Mèo có thể ngủ 14 tiếng một ngày trong cat tree. Thậm chí chơi đùa không biết mệt mỏi với những món đồ lúc lắc treo trên đỉnh tháp. Hoặc có thể leo lên leo xuống như bạn tập trên máy chạy bộ.', N'~/ImagesProduct/DoDung/NhaCMeo1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'1688b3e0-2415-4d54-adff-cd40133565a7', CAST(300000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Túi đựng chó mèo ANIME hình họa tiết Dark Cats phù hợp với tất cả giống chó và mèo.', N'Chất liệu túi không thấm nước và dễ làm vệ sinh làm sạch. Dễ dàng tháo gấp gọn lại khi cần.
Màu sắc, kích thước & kiểu dáng đa dạng để khách hàng lựa chọn.', N'~/ImagesProduct/DoDung/Balo1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'1e3d5bed-7bd8-4a80-b927-ede51448a0d4', CAST(210000 AS Decimal(18, 0)), NULL, CAST(0 AS Decimal(18, 0)), N'Thuốc nhỏ gáy trị ve rận cho mèo MERIAL Frontline Plus For Cats của Boehringer Ingelheim được sử dụng được cho mèo từ 2 tháng tuổi trở lên. Sản phẩm có khả năng diệt sạch tất cả các loại bọ chét lớn, trứng bọ chét, ấu trùng và bọ ve không thể trốn thoát.', N'Chỉ cần tách phần lông trên lưng mèo ra, để lộ da. Nhỏ thuốc nhỏ gáy trị ve rận cho mèo MERIAL Frontline Plus lên trên da. Dần dần thuốc sẽ thấm thấu vào tuyến bã nhờn. Vì thế cho dù tắm rửa sẽ không ảnh hưởng đến công dụng của thuốc. Để thú cưng phát triển khỏe mạnh nhất, chúng tôi khuyên chủ nhân nên sử dụng thuốc Frontline mỗi tháng một lần.', N'~/ImagesProduct/DoDung/Thuoc4.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'21e06e9d-152e-46a8-906d-597cd78b9cc2', CAST(35000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Pate cho chó vị thịt bò cà rốt JERHIGH Beef Grilled Carrot Gravy dành cho tất cả các giống chó.', N'Pate cho chó vị thịt bò cà rốt JERHIGH Beef Grilled Carrot Gravy được sử dụng nguồn nguyên liệu nguyên chất 100%. Sản phẩm được sản xuất dựa trên các tiêu chuẩn thực phẩm an toàn của con người mang lại những giá trị dinh dưỡng cho vật nuôi. Sản phẩm gồm có thành phần: Thịt bò, thịt gà, bột biến tính. Gan gà, cà rốt, chất tạo đông Carrageenan. Chất điều vị, Gluten lúa mì, vị thịt, vị xông khói. Đường, muối, Omega 3 và 6. Khoáng chất kẽm và chất điều vị Glycine, chất tạo màu tự nhiên.', N'~/ImagesProduct/DoDung/NSCCho1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'21fb177a-17b8-4a0c-b95c-c0195d93c837', CAST(600000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Lồng vận chuyển chó mèo IRIS ATC Dog & Cat Kennel sử dụng chính trong việc vận chuyển đường bộ, hàng không hoặc khi cần di chuyển thú cưng một cách an toàn, thuận tiện. Sản phẩm bằng nhựa cao cấp nhập khẩu từ Nhật có nhiều kích thước để lựa chọn, phù hợp với tất cả các giống chó và mèo.', N'Lồng vận chuyển chó mèo IRIS ATC Dog & Cat Kennel với chất liệu tốt, không kích ứng da lông, bền, đẹp. Chất liệu nhựa, có tay cầm dễ di chuyển khắp mọi nơi. Thiết kế 4 bên cửa gió khiến thú cưng luôn thoải mái. Giúp bạn đi đâu cũng có thể mang thú cưng đi bên cạnh mình một cách thoải mái nhất, tiện lợi nhất. Thiết kế chắc chắn, hiện đại mang phong cách thời trang. Sản phẩm là đồ dùng yêu thích của thú cưng, giúp chúng ngoan ngoãn và nghe lời hơn. Sản phẩm cần thiết cho mọi gia đình có vật nuôi. Dễ dàng tháo rời và lắp đặt, vệ sinh và bảo quản. Thiết kế có khe rãnh chống trượt, cửa khóa chắc chắn, khay vệ sinh tiện lợi.', N'~/ImagesProduct/DoDung/LongVC1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'22f7f2e7-2f5b-43a3-b0c2-91dc69c38209', CAST(240000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thức ăn cho mèo giúp loại bỏ búi lông ZENITH Cat Hairball được chế biến từ thịt cá hồi, thịt nạc gà rút xương, gạo lứt, yến mạch và bột rong biển giúp đào thải búi lông. Với các thành phần tươi sạch, giàu dinh dưỡng. Thức ăn cho mèo giúp loại bỏ búi lông ZENITH Cat Hairball hạt mềm, cung cấp độ ẩm cao và lượng muối thấp, thơm ngon, dễ nhai, dễ tiêu hóa và tốt cho sức khỏe của mèo.', N'Thức ăn cho mèo giúp loại bỏ búi lông ZENITH Cat Hairball chứa Omega-3, Omega-6, axit béo và lecithin. Sản phẩm được bổ sung Vitamin A và Taurine giúp thúc đẩy sự phát triển toàn diện của chú mèo. Axit linoleic và một số axit béo có lợi rất tốt cho việc chăm sóc xương khớp, da lông. EPA và DHA tốt cho hệ tim mạch, giúp phát triển trí não, tăng trí thông minh cho mèo cưng.', N'~/ImagesProduct/DoDung/HKCMeo1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'25e1d592-e5c8-4123-b43f-67b1cc2f0447', CAST(25000 AS Decimal(18, 0)), NULL, CAST(0 AS Decimal(18, 0)), N'Pate cho mèo vị nước sốt cá ngừ WHISKAS Tuna Flavour Saucevới nhiều hương vị thơm ngon đặc trưng dành riêng cho mèo. Thực phẩm có tác dụng cân bằng dinh dưỡng hàng ngày, lựa chọn những thành phần thịt – cá tươi ngon nhất trong chế biến, giàu protein, các vitamin & khoáng chất thiết yếu và không có chất bảo quản.', N'Cung cấp đầy đủ dinh dưỡng cho mèo cưng. Giúp ăn ngon miệng hơn. Đảm bảo cung cấp năng lượng cho thú cưng hoạt động cả ngày. Chăm sóc lông và da khỏe mạnh. Hỗ trợ và kích thích tiêu hóa.', N'~/ImagesProduct/DoDung/NSCMeo2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'27b0ae35-077c-458b-bf46-2e8e4b61211d', CAST(650000 AS Decimal(18, 0)), NULL, CAST(0 AS Decimal(18, 0)), N'Ổ đệm cho chó mèo PAW hình quả chuối được thiết kế độc đáo dành cho các giống chó mèo vừa và nhỏ. Với hình dáng vô cùng đáng yêu mang tới cho cún cưng, mèo cưng một chiếc giường nằm thoải mái nhất. Phù hợp với vật nuôi có trọng lượng dưới 6kg.', N'Ổ đệm cho chó mèo PAW hình quả chuối tạo cảm giác ấm áp vào mùa đông. Đồng thời mát mẻ vào mùa mè. Với chất liệu vải và bông cao cấp. Giống như một chiếc võng nhỏ để những người bạn 4 chân có thể nằm thoải mái ở mọi tư thế. Màu sắc nổi bật tạo điểm nhấn cho không gian ngôi nhà của bạn. Đặc biệt nệm rất dễ vệ sinh và di chuyển.', N'~/ImagesProduct/DoDung/DemTham5.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'29f948c7-71bd-46e0-82bb-37bcf885abbe', CAST(395000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Ổ đệm cho chó mèo chấm bi ELITE phù hợp với tất cả các giống chó mèo khác nhau. Màu  sắc trang nhã, giúp cho những người bạn 4 chân có những phút giây nghỉ ngơi tuyệt vời nhất.', N'Ổ đệm cho chó mèo chấm bi ELITE với thiết kế hình nôi vòm độc đáo và ấm áp. Sản phẩm với chất liệu vải nhung mềm mại, cao cấp an toàn cho thú cưng. Cho thú cưng một cảm giác êm ái khi nằm. Sản phẩm có nhiều kích cỡ phù hợp với thú cưng của bạn. Với nhiều mẫu mã xinh xắn đáng yêu sẽ làm thú cưng của bạn thích thú. Mỗi chiếc nệm, ổ đều sẽ giúp cún cưng, mèo cưng ngon giấc hơn. Phần vòm còn tạo cảm giác an toàn hơn cho thú cưng mỗi khi ngủ. Đặc biệt, rất dễ giặt sạch và di chuyển linh hoạt tới mọi vị trí mà bạn mong muốn.', N'~/ImagesProduct/DoDung/DemTham3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'2a72d35a-22cd-489a-b908-8331b231976d', CAST(300000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Túi đựng chó mèo ANIME hình họa tiết White Cats phù hợp với tất cả giống chó và mèo.', N'Túi đựng chó mèo ANIME hình họa tiết White Cats được dùng khi ra đường, đi chơi rất tiện lợi, an toàn và tạo cảm giác thoải mái cho vật nuôi.', N'~/ImagesProduct/DoDung/Balo2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'2f960151-6d62-4632-9ce9-914ada29a039', CAST(215000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thức ăn cho chó con cỡ nhỏ ROYAL CANIN Mini Puppy dành cho các giống chó con dưới 10 tháng tuổi. Với công thức đặc chế riêng cho nhu cầu dinh dưỡng của chó con thuộc các giống cỡ nhỏ. Thức ăn cho chó con (các giống chó cỡ nhỏ) được nghiên cứu để cung cấp dinh dưỡng theo nhu cầu thực tế của chó con.', N'Thức ăn hạt cho chó con cỡ nhỏ ROYAL CANIN Mini Puppy tạo thói quen ăn uống cho chó. Dựa theo tuổi của chó, cần cho ăn một ngày 3 lần vào các giờ cố định. Cho ăn tại một chỗ để tạo thói quen tốt cho chó. Nên cho chó ăn thức ăn chế biến riêng, không cho ăn thức ăn thừa của người. Vì thức ăn của người có nhiều thành phần khiến chó bị rối loạn tiêu hóa, dễ bị bệnh béo phì. Bảo đảm cung cấp đủ nước uống cho chó. Nếu thấy nước bị chó làm bẩn, cần thay nước mới ngay lập tức.', N'~/ImagesProduct/DoDung/HKCCho3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'343ea24a-f37d-4213-9d7e-b109f97ef9c5', CAST(60000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Vòng cổ trị ve rận cho mèo BIOLINE Flea and Tick Collar for Cats với hương tinh dầu tự nhiên. Phù hợp với mọi lứa tuổi, kể cả mèo con dưới 12 tuần tuổi. Chu vi vòng cổ lên tới 35cm.', N'Vòng cổ trị ve rận cho mèo BIOLINE Flea and Tick Collar for Cats với hương tinh dầu tự nhiên. Phù hợp với mọi lứa tuổi, kể cả mèo con dưới 12 tuần tuổi. Chu vi vòng cổ lên tới 35cm.', N'~/ImagesProduct/DoDung/Thuoc3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'34412cec-b42c-404a-bcbb-3190571a1a17', CAST(615000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thức ăn cho chó con PURINA PRO PLAN Small & Mini Puppy (Dry Dog Food) vị thịt gà nguyên chất giúp cân bằng và hoàn chỉnh cho các giống chó nhỏ – mini có trọng lượng khi trưởng thành dưới 10kg. Sản phẩm sử dụng cho chó con dưới 12 tháng tuổi.', N'Thức ăn cho chó con PURINA PRO PLAN Small & Mini Puppy là sản phẩm thức ăn hạt cho chó từ Nestlé giúp bổ sung sữa non (Colostrum), tăng cường miễn dịch, bảo vệ hệ tiêu hóa. Với thành phần nhiều nhất trong sản phẩm là thịt gà thật. Cùng với DHA từ Omega giúp nuôi dưỡng não bộ và cho mắt sáng, khỏe. Prebiotics giúp cân bằng hệ vi sinh đường ruột, bảo vệ hệ tiêu hóa chó con. Công thức dinh dưỡng cao cho sự phát triển tối ưu của chó con vóc nhỏ & mini.', N'~/ImagesProduct/DoDung/HKCCho4.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'37551014-566c-479c-99ee-313c3dc95aa3', CAST(25000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Pate cho chó nước sốt vị thịt bò PEDIGREE Pouch Beef với hương vị kích thích dành cho cún biếng ăn, có thể trộn với cơm, hạt khô để tạo mùi cho thức ăn. Ngoài ra trong trường hợp không có thức ăn sẵn cho vật nuôi, có thể dùng để cho cún ăn trực tiếp.', N'Pate cho chó nước sốt vị thịt bò PEDIGREE Pouch Beef gồm các thành phần như thịt gà, gan thịt bò, cà rốt, nước thịt, Gluten lúa mì, huyết tương thịt bò, chất xơ, đậu nành, Axit Amin, Vitamin, đường, chất tạo màu.', N'~/ImagesProduct/DoDung/NSCCho2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'375dab77-c036-4e51-8116-0607975109c4', CAST(60000 AS Decimal(18, 0)), NULL, CAST(0 AS Decimal(18, 0)), N'Vòng cổ trị ve rận cho mèo Magic Herbal Collar For Cat với hương tinh dầu tự nhiên. Phù hợp với mọi lứa tuổi, kể cả mèo con dưới 12 tuần tuổi. Chu vi vòng cổ lên tới 35cm.', N'Vòng cổ trị ve rận cho mèo Magic Herbal Collar For Cat bảo vệ hiệu quả khỏi bọ chét, ve và ve. Rất dễ để sử dụng. Chỉ cần đeo lên cổ cho thú cưng mà không gây ra bất cứ tác dụng phụ nào. Công thức độc đáo, tác dụng nhanh chóng, bảo vệ lâu dài. Đẩy lùi ve, bọ chét. Có bổ sung tinh dầu thiên nhiên. Các hoạt chất trong vòng sẽ liên tục tỏa ra và bao phủ trên lông mèo sau khi đeo vòng cổ. Các hợp chất tự nhiên được dùng thay thế cho các chất hóa học, đảm bảo an toàn cho mèo.Thêm vào đó, vòng có độ đàn hồi cùng lớp phủ phản quang giúp tăng thêm việc bảo vệ chó thêm tiện lợi.', N'~/ImagesProduct/DoDung/Thuoc5.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'39765b16-589d-40eb-b9e5-05d93263662d', CAST(35000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Pate cho chó vị thịt bò IRIS One Care Beef là sản phẩm dành cho tất cả giống chó. Với thành phần hoàn toàn từ tự nhiên và thịt bò.', N'Pate cho chó vị thịt bò IRIS One Care Beef bao gồm các thành phần như thịt gà, thịt bò, cà rốt, đậu hà lan, gạo.', N'~/ImagesProduct/DoDung/NSCCho3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'3a636289-96f1-4d16-8211-7029b0fd9b23', CAST(30000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Pate cho mèo vị cá ngừ CAT SEA FISH Pure Tuna Meat với dưỡng chất Axit béo trong cá ngừ là các axit béo không bão hòa. Chứa đầy đủ các axit amin đối với cơ thể. Với 8 loại axit amin cần thiết, vitamin, chất sắt, kali, canxi, iốt và các nguyên tố vi lượng khác. Phù hợp với tất cả các giống mèo.', N'Pate cho mèo vị cá ngừ CAT SEA FISH Pure Tuna Meat thành phần chủ yếu của pate cho mèo vị cá ngừ. Pure Tuna Meat: cá ngừ đơn thuần, nước, dầu cá ngừ, Crude protein ≥ 15%, Chất béo thô ≥1 %, Chất xơ ≤ 1%, Tro ASH ≤ 3%, Hàm lượng nước ≤ 85%', N'~/ImagesProduct/DoDung/NSCMeo1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'3ab0999e-64d7-4c16-8ef2-b47a3a878805', CAST(280000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Khay vệ sinh cho chó thành cao SAWYER PET Toilet giúp bạn huấn luyện chó cưng đi vệ sinh đúng chỗ quy định. Thiết kế nhỏ gọn phù hợp với không gian của mọi gia đình. Thích hợp với tất cả các giống chó mèo lớn, nhỏ, đực và cái.', N'Khay vệ sinh cho chó thành cao SAWYER PET Toilet với tác dụng ngăn ngừa vi khuẩn sinh trưởng. Dạy thói quan nhất định đi vào nhà vệ sinh của thú cưng. Sản phẩm với nhựa tổng hợp chất lượng cao, kích thước vừa đủ, dễ dàng vệ sinh và làm sạch rất thuận tiện.', N'~/ImagesProduct/DoDung/KhayVeSinh2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'3b0f195c-4298-4c49-8d6d-110804711f80', CAST(50000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Ow.....Boss lại dùng bộ móng sắc bén để “yêu thương” bạn nhưng bạn lại không dám tụ mình cắt móng sao? Đừng lo hãy để chúng tôi!!!!!', N'Ow.....Boss lại dùng bộ móng sắc bén để “yêu thương” bạn nhưng bạn lại không dám tụ mình cắt móng sao? Đừng lo hãy để chúng tôi!!!!!', N'~/ImagesProduct/DichVu/se3.png', N'DV')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'3c50b0aa-3b11-4b94-8b99-e602bad7e282', CAST(1000000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Nhà cây cho mèo Cat Tree F3032 với hình dáng gọn gàng với hình bàn chân mèo đáng yêu. Trụ cào móng với đồ chơi thú bông sẽ khiến cho chú mèo của bạn thích thú hơn bao giờ hết. Chúng có thể chơi cả ngày mà không thấy buồn chán.', N'Nhà cây cho mèo Cat Tree F3032 hay còn gọi là Cat Stand, Cat Condo. Có thể hiểu như một ngôi nhà, một sân chơi, một phòng tập thể hình dành cho mèo yêu. Mèo có thể ngủ 14 tiếng một ngày trong cat tree. Thậm chí chơi đùa không biết mệt mỏi với những món đồ lúc lắc treo trên đỉnh tháp. Hoặc có thể leo lên leo xuống như bạn tập trên máy chạy bộ. Điều này giúp mèo giảm được những nguy cơ mắc các bệnh béo phì, chán ăn hoặc bị stress. Nguyên nhân do lười vận động hoặc không có ai chơi đùa cùng chúng. Vì vậy bạn có thể yên tâm mèo cưng của bạn được an toàn tuyệt đối khi tiếp xúc với sản phẩm. Trụ cào móng mèo giúp mèo cưng mài móng mỗi ngày. Đảm bảo không gây xước và tổn thương.', N'~/ImagesProduct/DoDung/NhaCMeo2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'3eabc688-3f27-4366-841f-95e6745fe5ef', CAST(220000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Khay vệ sinh cho chó MAKAR Dog Toilet Trays Small với thiết kế thông minh được làm từ 100% nhựa tổng hợp cao cấp an toàn với thú cưng và môi trường. Phù hợp với tất cả các giống chó và giới tính đực cái có trọng lượng dưới 5kg.', N'Khay vệ sinh cho chó MAKAR Dog Toilet Trays Small với tấm lưới lót để nước tiểu không bị vung vãi khắp nhà và làm ướt lông thú cưng. Phần khay lưới bên dưới chắc và không bị ăn mòn. Những chú chó con có thể đứng trên khay để đi vệ sinh dễ dàng và thuận tiện. Phần thành cao chống lại vi khuẩn, côn trùng và ngăn nước tiểu bắn ra ngoài. Đặc biệt, cún con sẽ đánh hơi được dễ dàng và xác định được vị trí để thải ra nhanh hơn. Dễ dàng trong việc hướng dẫn và huấn luyện.', N'~/ImagesProduct/DoDung/KhayVeSinh3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'404a0646-564f-4d66-815e-6cb548f47025', CAST(170000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Vòng cổ cho chó cỡ nhỏ PAW bằng da đính cườm cao cấp là sản phẩm dành cho tất cả giống chó cỡ nhỏ.', N'Trọng lượng: 0.01kg.
Kích thước: 52 × 2.4 × 0.5cm', N'~/ImagesProduct/DoDung/VongCo1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'44ad9304-21f5-40f2-805e-28ed6ad269f5', CAST(100000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thú cưng', N'Chó phú quốc', N'~/ImagesProduct/ThuCung/gau2.png', N'TC')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'4a2bf620-aaa7-4eb4-b82e-4b511a3b12f1', CAST(140000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Lược chải lông chó mèo bấm nút DELE M006 Round Head phù hợp với tất cả các giống chó. Bao gồm cả các giống chó nhỏ và chó lớn như Poodle, Phốc sóc, Samoyel, Alaska…

', N'Lược chải lông chó mèo bấm nút DELE M006 Round Head có tay cầm rất thoải mái, an toàn và chắc chắn. Khi sử dụng bạn chỉ cần bấm vào nút tròn. Có nút bấm kết hợp với các răng lược sẽ tự động được đẩy ra. Lông rụng sẽ được đẩy theo ra ngoài. Không cần sử dụng tay để gỡ. Điều này giúp cho việc loại bỏ những lông rụng, lông thừa hay lông chết dễ dàng và nhanh chóng hơn.  Đảm bảo cho chó mèo cưng có một bộ lông mềm mượt, không xơ rối. Sản phẩm được thiết kế tinh xảo với thép không gỉ, chất lượng cao. Là vật dụng rất cần thiết trong nhà bất kì ai nuôi thú cưng.', N'~/ImagesProduct/DoDung/LuocChaiLong1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'4acadd56-0e07-44a7-a114-b472e463fb18', CAST(20000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Lọ sữa tắm hương hoa JOYCE & DOLLS dùng thử cho chó mèo với độ nhớt thấp, dễ tạo bọt và đặc biệt là giữ hương thơm hương hoa cực lâu tới 7 ngày sau khi tắm.', N'Sản phẩm tùy chọn ngẫu nhiên có sẵn các mùi hương sau:

Hương hoa hồng – Rose Dew
Hương trà xanh – Tea Medoly
Hương hoa violet – Violet Diamond
Hương hoa quýt – Sexy Bloom
Hương hoa nhài – Moder Jasmine', N'~/ImagesProduct/DoDung/SuaTam1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'4cd846c4-577e-46dd-ada4-aebce03f30c8', CAST(70000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Mô tả
Vòng cổ chó mèo kèm dây dắt cỡ mini Hand In Hand được làm bằng chất liệu 100% nylon cao cấp, cực bền, cực chắc. Dành cho những chú chó cỡ nhỏ, chó mèo con.', N'Vòng cổ chó mèo kèm dây dắt cỡ mini Hand In Hand thiết kế phong cách truyền thống. Bao gồm 2 phần có bản. Tay cầm dây xích và vòng cổ có tính chất của cao su tổng hợp. Bộ dây dắt kèm vòng cổ chó giúp chú chó cảm thấy thoải mái. Không bị khó chịu khi đeo cho chúng. Bạn có thể dử dụng để cố định thú cưng tại chỗ hoặc mọi vị trí mà bạn mong muốn. Hoặc mỗi khi ra ngoài thì đây cũng là phương tiện giúp bạn kiểm soát và quản lý cún cưng an toàn. Bạn có thể bảo vệ cún cưng và để chúng ở trong tầm nhìn của mình.', N'~/ImagesProduct/DoDung/VongCo2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'527e2420-cdc1-4356-98ea-d3c64c661ddf', CAST(350000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Bàn cào móng cho mèo dạng cong lượn sóng là món đồ chơi cực kì thích thú của tất cả các chú mèo.', N'Bàn cào móng cho mèo dạng cong lượn sóng được ưa chuộng với hất liệu tự nhiên, bền tốt không bị trầy xước. Giúp móng mèo luôn chắc khỏe, tránh thiệt hại các vật dụng trong nhà. Với các sợi dây kết với nhau thành mặt phẳng giúp móng của mèo bớt sắc nhọn. Không gây tổn thương cho móng mèo. Đồng thời với dạng hình cong lượn sóng tạo sự thích thú và tiện lợi cho mèo cưng. Thiết kế nhỏ gọn, dễ vệ sinh. Bạn có thể dễ dàng di chuyển và đặt được mọi vị trí trong nhà.', N'~/ImagesProduct/DoDung/TruCot1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'53320b6a-ca93-4f4c-bbe5-5fbc6c9da1d8', CAST(495000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Khay vệ sinh cho chó thành cao IRIS TRT650 với thiết kế hình vuông nhỏ gọn, thuận tiện cho việc cún cưng đi vệ sinh. Phù hợp với các giống chó lớn nhỏ khác nhau như Poodle, Phốc, Phốc sóc…', N'Khay vệ sinh cho chó thành cao IRIS TRT650 có tấm ngăn nước tiểu văng ra ngoài. Mặt dưới có tấm lót thấm hút cao. Sau khi đi vệ sinh xong có thể tháo ra thay thế dễ dàng. Ngoài ra khay vệ sinh ngăn chặn việc tạo ra những vi khuẩn có hại cho người và vật nuôi.', N'~/ImagesProduct/DoDung/KhayVeSinh4.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'5a872d48-9dfb-4360-9e3d-92e58f0fab7f', CAST(30000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Pate cho mèo vị cá cơm CAT SEA FISH Tuna with Anchovy có giá trị dinh dưỡng cao. Phù hợp với tất cả các giống mèo.', N'Pate cho mèo vị cá cơm CAT SEA FISH Tuna with Anchovy bao gồm Thành phần chủ yếu của pate cho mèo vị cá cơm – Tuna with Anchovy: cá ngừ, cá cơm, nước, dầu cá ngừ, Crude protein ≥ 16%, Chất béo thô ≥1 %, Chất xơ ≤ 1%, Tro ASH ≤ 3%, Hàm lượng nước ≤ 85%', N'~/ImagesProduct/DoDung/NSCMeo1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'5b15a812-c3cd-46ef-8902-415d7ca5f837', CAST(160000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Cát vệ sinh cho mèo TRIXIE Silikatstreu dạng hạt thủy tinh là sản phẩm dành cho tất cả giống mèo.', N'Cát vệ sinh thủy tinh cho mèo TRIXIE Silikatstreu là dạng hạt, có khả năng hấp thụ nước tiểu của mèo rất nhanh. Siêu vón mà không để lại mùi hôi. Sản phẩm rất dễ sử dụng. Bạn chỉ cần chuẩn bị một khay vệ sinh cho mèo và đổ cát vào đó. Huấn luyện mèo đi vệ sinh đúng chỗ. Điều này sẽ giúp bạn giải quyết được việc đi vệ sinh bừa bãi của thú cưng. Bên cạnh đó trọng lượng cát cũng rất nhẹ. Cực hiệu quả khi gặp nước tiểu liền kết lại nhanh chóng. Kinh tế hơn nhiều so với những sản phẩm khác trên thị trường. Cát vệ sinh cũng giảm thiểu được bụi phân tán trong không khí, không gây ảnh hưởng cho người bị dị ứng.', N'~/ImagesProduct/DoDung/CatVSChoMeo2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'5b34c591-7ebc-433f-93ee-473672e2340d', CAST(250000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Sữa tắm cho chó mèo hương hoa hồng JOYCE DOLLS Rose Dew là sữa tắm cho chó mèo với tinh dầu chiết xuất từ hoa hồng. Dành cho tất cả các giống chó mèo như Poodle, Phốc sóc, Samoyed, Alaska, mèo Anh lông dài, lông ngắn…', N'Sữa tắm cho chó mèo hương hoa hồng JOYCE & DOLLS Rose Dew đóng vai trò của các chức năng da trong việc khử mùi hôi của chó mèo một cách hiệu quả nhất. JOYCE & DOLLS Rose Dew thêm tinh dầu hoa hồng có tác dụng làm ổn hen suyễn, kích hoạt chức năng da . Sử dụng sản phẩm này, không chỉ có thể khử mùi hôi cơ thể thú cưng hiệu quả. Mà còn rất thơm, hương thơm lưu giữ lâu dài. Tinh dầu hoa hồng 100% tinh hoa thực vật tự nhiên cải thiện da khô. Khôi phục sự đàn hồi của da. Khiến thú cưng của bạn luôn có da khỏe mạnh đủ độ đàn hồi. ', N'~/ImagesProduct/DoDung/SuaTam2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'5f3b6c16-4b9d-4ddb-bcf4-04113531ce67', CAST(155000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Cát vệ sinh hữu cơ cho mèo CAT’S BEST  Smart Peppets có dạng những viên nén “thông minh”, giúp hạn chế bám dính vào lông mèo gây vương vãi ra ngoài, đặc biệt phù hợp với mèo lông dài. Cát vón cục, thấm hút lượng chất lỏng gấp 7 lần thể tích cát.', N'Cát vệ sinh cho mèo hữu cơ CAT’S BEST Smart Peppets là dòng cát vệ sinh hữu cơ cho mèo áp dụng nguyên lý hấp thu chất lỏng của cây xanh trong tự nhiên, để tăng mức độ thấm hút chất lỏng lên mức tối ưu. Từ đó, sản phẩm đã mang lại lợi ích toàn diện cho mèo, tiết kiệm cho người dùng và giữ vệ sinh môi trường.', N'~/ImagesProduct/DoDung/CatVSChoMeo3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'6876e781-7e83-428c-9645-35df6820739d', CAST(30000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Pate cho mèo mẹ và mèo con CATIDEA Mother & Baby Cat dành cho tất cả các giống mèo, mèo mẹ đang mang thai, đang cho con bú và mèo con.', N'Sản phẩm được làm từ nguyên liệu hoàn toàn tự nhiên. Bao gồm nhiều loại trái cây và rau củ. Không cho thêm ngũ cốc và tinh bột. Thành phần dinh dưỡng chính bao gồm: nước, thịt gà, cá ngừ, cá hồi, thịt bò, cà rốt, miền nam: dưa, cá tươi, cá mòi, dầu nành, Gelatin, Vitamin và khoáng chất, nước sốt, Choline Chloride.', N'~/ImagesProduct/DoDung/NSCMeo3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'76d13cc7-617a-4d6a-abad-bd1bdbd8639b', CAST(85000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Lược chải lông chó mèo đầu lưỡi mềm BOBO Pet Comb sử dụng cho tất cả các giống cho mèo lông thẳng và lông xoăn.', N'Lược chải lông chó mèo đầu lưỡi mềm BOBO Pet Comb giúp cho thú cưng nhà bạn có bộ lông đẹp ngay tại nhà. Với phần cán bằng inox chắc chắn. Tay cầm vừa vặn có lớp nhựa chống trơn trượt. Bạn có thể dễ dàng sử dụng, chải từng lớp lông rối, rụng của thú cưng một cách hiệu quả. Loại bỏ hầu hết các phần lông chết trên cơ thể của cún cưng. Không gây kích ứng da và cảm giác khó chịu. Phần răng lược mềm mại tạo cảm giác thoải mái nhất cho những người bạn 4 chân.', N'~/ImagesProduct/DoDung/LuocChaiLong2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'7a6794a8-0309-46f8-b3ef-9280c935ce26', CAST(305000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thức ăn cho mèo mẹ và mèo con CATIDEA Fairy Chef Mother & Baby, dành cho mèo từ 1 đến 12 tháng tuổi. Thích hợp cho cả mèo cái mang thai, đang cho con bú và cả mèo con.', N'Thức ăn cho mèo mẹ và mèo con CATIDEA Fairy Chef Mother & Baby bao gồm: bột cá (60,8%), bột gà, tinh bột đậu nành, bột đậu, dầu hạt cải, tinh bột sắn, bột khoai tây, dầu cá, hạt lanh. Các gia vị hỗn hợp thức ăn cho vật nuôi, bột men bia, bột cà rốt, bột củ cải đường, bột rau bina, bột bí ngô, bột cà chua, nam việt quất khô, rau diếp xoăn, nghệ, đinh hương, bột cần tây, bồ công anh, kim ngân hoa, tuyết tùng đầu tiên, lô hội, bột Yucca. Thành phần bột cá (cá siêu Peru, bột cá trắng, bột cá hồi nhập khẩu).', N'~/ImagesProduct/DoDung/HKCMeo2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'7bdb9041-db16-4296-adad-425dd6c5ce39', CAST(180000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Sữa tắm khô cho chó mèo JOYCE & DOLLS Waterless Cleansing Foam phù hợp đặc biệt là trong trường hợp đang bị bệnh, đang mang thai. Hoặc trong nhiều trường hợp khác không thể tắm rửa bằng nước. Sản phẩm này có thể thay thế cho việc tắm bằng nước thông thường, làm sạch bụi bẩn và mùi hôi mọi lúc mọi nơi. Phù hợp với tất cả các giống chó mèo.', N'Sữa tắm khô cho chó mèo JOYCE & DOLLS Waterless Cleansing Foam với bước đột phá rất thuận tiện từ bọt khử vi trùng mà không cần đến nước. Cùng một lúc vừa làm sạch và chăm sóc bảo vệ bề mặt da & lông cho chó mèo. Sản phẩm sữa tắm khô cho chó mèo không gây kích ứng mắt. Không có chất kích thích trong dư lượng giúp cho vật nuôi có bộ lông luôn mềm mại và bề mặt da mịn màng cùng. Hương thơm được duy trì lâu dài. Dùng được cho vật nuôi da nhạy cảm và có hiệu quả kháng khuẩn tự nhiên cao.', N'~/ImagesProduct/DoDung/SuaTam3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'7dde8ed3-9a14-4b40-a900-2fc77322cb7e', CAST(160000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Cát vệ sinh cho mèo bột gỗ IRIS Woody Fresh WF70 không mùi với 3 tác dụng đồng thời giúp vón cục – khử mùi và kháng khuẩn cực tốt. Cát vệ sinh IRIS Woody Fresh WF70 không mùi được làm từ bột gỗ tự nhiên, Bentonit và chứa các hạt chất khoán khuẩn màu xanh thân thiện với môi trường và có thể tái chế tài nguyên.', N'Với khả năng khử mùi nhanh chóng bởi các hạt kháng khuẩn màu xanh sẽ giúp ngăn chặn tối đa sự sản sinh của vi khuẩn gây mùi hôi khó chịu. Ngoài ra, Bentonit chứa trong cát mèo bột gỗ IRIS Woody Fresh WF70 sẽ giúp cát vón cục nhanh chóng.', N'~/ImagesProduct/DoDung/CatVSChoMeo4.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'803d9f18-26cf-42d8-aaec-1595bdb3da27', CAST(100000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Chuột ', N'Chuột Hamster''s ', N'~/ImagesProduct/ThuCung/gau2.png', N'TC')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'80905639-f252-4bb9-832d-158511977e4b', CAST(1235000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Balo đựng chó mèo Dogismile PETISMILE  phù hợp với tất cả giống chó và mèo.', N'Balo đựng chó mèo PETISMILE được dùng khi ra đường, đi chơi rất tiện lợi, an toàn và tạo cảm giác thoải mái cho vật nuôi.', N'~/ImagesProduct/DoDung/Balo3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'810626ee-20cc-4efc-849a-505d0b1046cf', CAST(315000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thức ăn cho chó Poodle MKB All Life Stages Formula Nutrition, dành riêng cho chó Poodle, bao gồm tất cả các giai đoạn phát triển.', N'Thức ăn cho chó Poodle MKB All Life Stages Formula Nutrition giúp bổ sung tỷ lệ cân đối giữa các chất dinh dưỡng. Đảm bảo sự phát triển của cún con qua tất cả các giai đoạn phát triển. Bao gồm cả những chú chó con, chó trưởng thành, chó mang thai, chó cho con bú và chó già. Đặc biệt, loại thức ăn này sử dụng tỷ lệ dầu thấp, hạt thức ăn khô không chứa dầu mỡ. ', N'~/ImagesProduct/DoDung/HKCCho5.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'863cd6df-6f6f-4f2b-94f3-2fe2ca256c9e', CAST(245000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Quần áo cho chó mèo AMBABY PET 2JXF164 là sản phẩm dành cho cả chó và mèo.', N'Quần áo cho chó mèo AMBABY PET 2JXF164 sẽ làm cho thú cưng trở nên sành điệu và xinh xắn
Sản phẩm được thiết kế với chất liệu cotton và gia công tỉ mỉ
Kiểu dáng dễ mặc, dễ vận động đem đến sự thoải mái cho chó mèo
Có nhiều kích cỡ cho bạn lựa chọn phù hợp như XS, S, M, L, XL
', N'~/ImagesProduct/DoDung/QuanAo1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'9104e1a8-43bd-409e-9382-2764679de2cd', CAST(155000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Bánh thưởng cho mèo thịt thật CATIDEA Fairy Chef Freeze Dried Raw 6in1 được chế biến từ thịt thật với 6 nguồn nguyên liệu thịt dinh dưỡng cho mèo bao gồm: Salmon (cá hồi), Chicken (thịt gà), Bovine liver (gan bò), Chicken liver (gan gà), Duck meat (thịt vịt), Yolk (lòng đỏ trứng gà)', N'Thịt gà 20g, gan gà 20g, gan bò 15g, lòng đỏ trứng gà 15g, thịt vịt 15g, Cá hồi 15g, thịt từng thành phần có thể sai số cân nặng từ 2-5%. Giá trị đảm bảo phân tích thành phần sản phẩm (tính theo chất khô) II. Gà đông khô: protein thô) 83,5%, chất béo thô) 7,5%, tro thô 5,3%, Lõi xơ thô C.70//0, lõi nước 3,5%; thịt vịt đông khô 81,2%, chất béo thô 6,1%, lõi tro thô 7,8%, lõi xơ thô 0,8%, lõi ẩm 3,8%; Lòng đỏ trứng đông khô 22,5%, chất béo thô 44,1%, tro thô 4,8%, gan gà đông khô, đạm thô 55% chất béo thô…', N'~/ImagesProduct/DoDung/HKCMeo3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'999c9a75-bb44-4829-bdb5-f9796ee5e239', CAST(180000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Ổ đệm cho chó mèo PAW hình dưa hấu được thiết kế độc đáo dành cho thú cưng. Ấm áp vào mùa đông, mát mẻ vào mùa mè. Đệm được sử dụng nguyên liệu vải  siêu mềm và êm tạo cảm giác an toàn và thoải mái cho thú cưng của bạn. Có nhiều kích cỡ để bạn lựa chọn.', N'Ổ đệm cho chó mèo PAW hình dưa hấu với chất liệu vải nhung mềm mại, cao cấp an toàn cho thú cưng. Cho thú cưng một cảm giác êm ái khi nằm. Với sắc xanh nổi bật. Được thiết kế cách điệu vô cùng đáng yêu. Mang tới những phút giây thư giãn và nghỉ ngơi cho thú cưng của bạn. Ổ đệm được làm từ chất liệu vải cao cấp. Bao gồm lớp vải mỏng bên ngoài, bên trong là lớp lông cừu dày, êm. Đặc biệt rất dễ để vệ sinh và làm sạch khi bẩn. Phù hợp với không gian ngôi nhà của bạn. Bạn cũng có thể thoải mái di chuyển nệm tới bất kì vị trí nào mà bạn mong muốn.', N'~/ImagesProduct/DoDung/DemTham1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'9d867fac-ac0d-4d2d-82a4-f0ed1fc5bf7b', CAST(250000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thức ăn cho chó hạt mềm vị thịt bò ORIGI-7 Beef được làm từ thịt bò tươi ngon, chỉ sử dụng nguồn nguyên liệu hữu cơ sạch, an toàn, cung cấp đầy đủ dinh dưỡng cho thú cưng phát triển khỏe mạnh.', N'Công thức độc quyền của nhà máy Bowwow Hàn Quốc tạo ra thức ăn dạng hạt mềm, giữ được hương vị thơm ngon của thịt. Tất cả nguyên liệu của Origi-7 đều phải trải qua quy trình chọn lọc nghiêm ngặt, từ chế biến đến sản xuất để đảm bảo bữa ăn của các “bạn nhỏ” không chỉ là ăn no mà còn là ngon và khỏe.', N'~/ImagesProduct/DoDung/HKCCho6.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'9da8b08c-1d1e-4046-b12f-70754cbcb67e', CAST(100000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thú cưng', N'mèo anh lông ngắn', N'~/ImagesProduct/ThuCung/Meo.png', N'TC')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'9ff6cdf1-729c-461c-b850-f98df4ec3356', CAST(580000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thức ăn cho mèo mọi lứa tuổi CATIDEA Basic Meat Freeze Dried dành cho tất cả các giống mèo ở mọi lứa tuổi. Sản phẩm không chứa chất bảo quản', N'CATIDEA Basic Meat Freeze Dried có chứa đến 90% hàm lượng thịt thật từ 12 loại thịt các loại kết hợp phù hợp với chế độ ăn tự nhiên của mèo.', N'~/ImagesProduct/DoDung/HKCMeo4.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'a34d44b8-22a2-4550-b886-1bc1d9ed49f4', CAST(150000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Đẹp thì có rồi nhưng mà hình như còn hơi thiếu gì đó. Á à, chính là mùi thơm, phải thơm tho sạch sẽ thì mới được chứ :3333', N'Đẹp thì có rồi nhưng mà hình như còn hơi thiếu gì đó. Á à, chính là mùi thơm, phải thơm tho sạch sẽ thì mới được chứ :3333', N'~/ImagesProduct/DichVu/se4.png', N'DV')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'a5b83090-5073-4144-a2db-ce2d4b3796d5', CAST(35000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Pate cho chó hỗ trợ chức năng gan và sáng mắt IRIS Benefit For Eyes & Liver là sản phẩm dành cho tất cả giống chó. Với thành phần hoàn toàn từ tự nhiên.', N'Pate cho chó hỗ trợ chức năng gan và sáng mắt IRIS Benefit For Eyes & Liver gồm các thành phần ức gà, hoa cúc, chất béo, Protein, chất xơ…', N'~/ImagesProduct/DoDung/NSCCho4.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'a5f2bbfd-aaca-4376-8215-97f881630d88', CAST(395000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Khay vệ sinh cho chó thành cao IRIS TRT500 với thiết kế hình vuông nhỏ gọn, thuận tiện cho việc cún cưng đi vệ sinh. Sử dụng chất liệu nhựa tổng hợp chất lượng cao. Có tính đàn hồi giúp chó mèo dẫm lên cảm thấy thoải mái. Phù hợp với tất cả các giống chó mèo, giới tính đực và cái.', N'Khay vệ sinh cho chó thành cao IRIS TRT500 hướng dẫn chó đi vệ sinh đúng chỗ trong nhà với màu sắc đa dạng, bền và chịu lực tốt, tuổi thọ dài. Sử dụng kết hợp với nước xịt hướng dẫn vệ sinh đúng chỗ đảm bảo sẽ huấn luyện cún cưng thành công 100%. Sản phẩm có tấm ngăn nước tiểu văng ra ngoài. Mặt dưới có tấm lót thấm hút cao. Sau khi đi vệ sinh xong có thể tháo ra thay thế dễ dàng. Ngoài ra khay vệ sinh ngăn chặn việc tạo ra những vi khuẩn có hại cho người và vật nuôi.', N'~/ImagesProduct/DoDung/KhayVeSinh5.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'aa24a4bb-88b8-4599-b52c-335205147514', CAST(160000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Cát vệ sinh cho mèo than hoạt tính IRIS Charcoal Cat Litter SNS-70 được sản xuất từ nguyên liệu than hoạt tính tự nhiên giúp khử mùi tiểu và phân mèo hiệu quả.', N'Các hạt cát vệ sinh cho mèo than hoạt tính IRIS Charcoal SNS70 được phủ bên ngoài bề mặt thành phần than sẽ giúp cho mèo không bị dính bẩn khi dẫm vào. Nước tiểu của mèo khi thải ra sẽ được hấp thụ nhanh chóng.', N'~/ImagesProduct/DoDung/CatVSChoMeo5.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'abd7dfb7-60ee-4059-a35c-59a8cb638a5b', CAST(220000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thức ăn cho chó con hạt mềm ZENITH Puppy Chicken Potato được chế biến từ thịt cừu tươi, thịt nạc gà rút xương, gạo lứt, yến mạch và dầu cá hồi. Với các thành phần tươi sạch, giàu dinh dưỡng, Zenith Puppy hạt mềm, cung cấp độ ẩm cao và lượng muối thấp, thơm ngon, dễ nhai, dễ tiêu hóa và tốt cho sức khỏe chó con.', N'Thức ăn cho chó con hạt mềm ZENITH Puppy Chicken & Potato có công thức giàu dinh dưỡng, vitamin và khoáng chất đặc biệt tốt cho sự phát triển của chó con. EPA, DHA giúp phát triển trí não tối ưu, tăng trí thông minh và giúp chó con dễ huấn luyện khi lớn lên; Omega 3, 6 tốt cho mắt và da lông; Thịt nạc gà rút xương có hàm lượng protein cao và ít béo, giúp phát triển xương chắc khỏe, giảm căng thẳng và stress thường gặp ở chó con khi tập thích nghi với môi trường mới; Thịt cừu và yến mạch rất giàu canxi cho xương và răng chắc khỏe, để chó con có một nền tảng vững chắc.', N'~/ImagesProduct/DoDung/HKCCho7.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'b4355dde-9b1b-4b08-8df2-a247cf341004', CAST(245000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Khay vệ sinh cho chó đi đúng chỗ IRIS sử dụng chất liệu nhựa tổng hợp chất lượng cao. Có tính đàn hồi giúp chó mèo dẫm lên cảm thấy thoải mái. Khay hướng dẫn chó đi vệ sinh đúng chỗ trong nhà với màu sắc đa dạng, bền và chịu lực tốt, tuổi thọ dài. Sử dụng kết hợp với nước xịt hướng dẫn vệ sinh đúng chỗ đảm bảo sẽ huấn luyện cún cưng thành công 100%.', N'Khay vệ sinh cho chó đi đúng chỗ IRIS giúp cún cưng có thể đi vệ sinh đúng chỗ. Thuận tiện cho việc huấn luyện. Tránh tình trạng cún cưng đi vệ sinh bừa bãi ra nhà và môi trường sống. Phù hợp với cả giống chó đực và cái. Với chất liệu nhựa cao cấp rất dễ dàng để vệ sinh, lau chùi. Phần mặt lưới không quá thưa đảm bảo chân cún cưng không bị ướt. Phù hợp với không gian của tất cả các gia đình. Phía dưới có thể đặt tấm lót hút ẩm tiện lợi.', N'~/ImagesProduct/DoDung/KhayVeSinh6.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'ba11631f-09d2-49ae-b2b8-1f0e985f74ef', CAST(160000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Cát vệ sinh cho mèo siêu vón IRIS KFAG100 nổi tiếng nhập khẩu trực tiếp từ Nhật Bản, được dùng cho tất cả giống mèo.', N'Cát vệ sinh cho mèo siêu vón IRIS KFAG100 với công dụng vón thành cục siêu nhanh. Có khả năng khử mùi hôi tối ưu đồng thời có tác dụng kháng khuẩn tốt hơn rất nhiều so với các loại cát mèo thông thường giá rẻ khác trên thị trường. Sản phẩm có chứa thêm thành phần ion bạc kháng khuẩn khống chế được sự hình thành của vi khuẩn. Lực hút mạnh hơn rất nhiều lần so với các loại cát thông thường khác, sau khi gặp nước tiểu sẽ lập tức ngưng kết lại, tiết kiệm hơn, kinh tế hơn', N'~/ImagesProduct/DoDung/CatVSChoMeo1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'ba6f8f63-bad2-4500-8bfd-8836d792b40e', CAST(170000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Lược chải lông chó mèo nút bấm KUDI Pet Grooming Slicker Brushes với tay cầm thoải mái. Có chốt điều chỉnh và tự động loại bỏ lông ra ngoài lược. Lược chải lông chó mèo có nút bấm với chất liệu TPR+ABS+thép không gỉ.', N'Bàn chải nhẹ nhàng loại bỏ lông rụng và loại bỏ lông rối, bụi bẩn. Lông bàn chải là những sợi dây uốn cong FINE được thiết kế để xuyên sâu vào lông và thực sự có thể chải chuốt lớp lông tơ tốt mà không làm xước da thú cưng của bạn. Chỉ cần nhấp vào nút và các sợi lông sẽ đi vào và sẽ sạch ngay lập tức', N'~/ImagesProduct/DoDung/LuocChaiLong3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'be7a5e66-75a8-403b-ae3d-d5e30545889c', CAST(700000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Nhà cây cho mèo Cat Tree QQ80618-1 hay còn gọi là cat stand, cat condo. Có thể hiểu như một ngôi nhà, một sân chơi, một phòng tập thể hình dành cho Mèo yêu tận hưởng những giây phút thư giãn, giải trí. Kích thước 30 x 30 x 60cm. Màu sắc nâu, vàng kem, xám, đỏ. Trọng lượng sản phẩm 3,5 kg.', N'Nhà cây cho mèo Cat Tree loại nhỏ size S QQ80618-1 được thiết kế như 1 ngôi nhà chung cư cao cấp với nhiều món đồ chơi. Trụ có treo thú bông kích thích sự tò mò của mèo cưng. Tạo sự hấp dẫn cho mèo cưng chơi đùa, nghỉ ngơi. Mèo có thể ngủ 14 tiếng một ngày trong cat tree. Thậm chí chơi đùa không biết mệt mỏi với nhà cây. Hoặc có thể leo lên leo xuống như bạn tập trên máy chạy bộ. Điều này giúp mèo giảm được những nguy cơ mắc các bệnh. Ví dụ như béo phì, chán ăn hoặc bị stress do lười vận động hoặc không có ai chơi đùa cùng chúng.

', N'~/ImagesProduct/DoDung/NhaCMeo3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'bf59d12c-9d78-451a-a6d1-fa766b1ac2ae', CAST(40000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Xẻng xúc phân chó mèo PAW bằng nhựa cao cấp đủ màu Plastic Black Cat Litter Scoop với nhiều màu sắc khác nhau cho bạn lựa chọn. Màu sắc đen, xanh nước biển, xanh lá cây, hồng. Kích thước 26.5 cm.', N'Xẻng xúc phân chó mèo SOLEIL bằng nhựa cao cấp đủ màu được làm bằng chất liệu nhựa tổng hợp siêu bền. Sản phẩm có những lỗ lọc những hạt cát chưa sử dụng. Giúp bạn dọn dẹp chỗ vệ sinh cho chó, mèo gọn gàng sạch sẽ và tiện dụng. Kích thước nhỏ gọn, trọng lượng cực nhẹ với phần tay cầm tiện lợi. Bạn có thể loại bỏ phân và chất thải của chó mèo một cách dễ dàng. Việc sử dụng xẻng hót phân giúp bạn tiết kiệm được nhiều thời gian và cát vệ sinh cho những người bạn 4 chân.', N'~/ImagesProduct/DoDung/KhayVeSinh8.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'c6da68b6-91bb-48b6-bba0-66211ef50131', CAST(140000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Cát vệ sinh hữu cơ cho mèo CAT’S BEST  Original vón cục, thấm hút chất lỏng gấp 7 lần thể tích cát, khóa chặt mùi hôi và vi khuẩn trong một thời gian dài nhờ hệ thống mao dẫn của sợi cây, giải pháp tiết kiệm và an toàn cho cả người, mèo và môi trường.', N'Cát vệ sinh cho mèo hữu cơ CAT’S BEST Original – Khóa chặt mùi hôi và vi trùng. Công nghệ JRS-ORGANIC FIBRE700 có chức năng như một chiếc bẫy mùi hôi và vi trùng, nhanh chóng thấm hút chất lỏng và mùi hôi, khóa chúng lại trong một thời gian dài nhờ hệ thống mao dẫn siêu tốt của sợi cây. Nhờ vậy, mùi hôi không bị phát tán ra ngoài mà không cần dùng bất kỳ hóa chất nào.', N'~/ImagesProduct/DoDung/CatVSChoMeo6.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'c731e72c-917b-42a0-8370-305d49800118', CAST(55000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thuốc xổ giun cho mèo BAYER Drontal Cat sử dụng cho mèo con trên 6 tuần tuổi. Sử dụng 1 viên cho thể trọng 4kg. Có thể cho mèo ăn trực tiếp hoặc trộn lẫn vào thức ăn.', N'Thuốc xổ giun cho mèo BAYER Drontal Cat với các thành phần Praziquantel và Pyrantel embonate giúp sổ các loại giun như giun móc, giun đũa, giun dẹp, giun tròn, sán dây… gây ra chứng biếng ăn, nôn ói, chậm phát triển… ở mèo.', N'~/ImagesProduct/DoDung/Thuoc1.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'cf982526-4753-4ae8-81c4-556d70ab3978', CAST(400000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Trụ cào móng cho mèo kèm đồ chơi QQ60060B được ưa chuộng tại châu Âu và nhiều quốc gia trên thế giới. Chất liệu tự nhiên, bền tốt không bị trầy xước, giúp móng mèo luôn chắc khỏe, tránh thiệt hại các vật dụng trong nhà.', N'Trụ cào móng cho mèo kèm đồ chơi QQ60060B được làm từ thừng sisal, sisal là loại vật liệu rất chắc, bền được làm thành dạng dây. Trụ cào móng cho mèo giúp mèo cưng loại bỏ lớp móng cũ, mài móng giảm độ sắc nhọn. Với món đồ chơi này, bạn sẽ không lo đồ đạc trong nhà có những vết xước do móng mèo gây ra. Đặc biệt an toàn, không gây tổn thương cho móng mèo khi cào. Trên trụ có gắn thêm đồ chơi trơ lơ lửng tạo hứng thú hơn cho mèo cưng của bạn.', N'~/ImagesProduct/DoDung/TruCot2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'd088188d-e11b-47c2-948a-7114461c780c', CAST(400000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Trụ cào móng cho mèo kèm đồ chơi QQ60064A được ưa chuộng tại châu Âu và nhiều quốc gia trên thế giới. Chất liệu tự nhiên, bền tốt không bị trầy xước, giúp móng mèo luôn chắc khỏe, tránh thiệt hại các vật dụng trong nhà.', N'Trụ cào móng cho mèo kèm đồ chơi QQ60064A được làm từ thừng sisal, sisal là loại vật liệu rất chắc, bền được làm thành dạng dây. Trụ cào móng cho mèo giúp mèo cưng loại bỏ lớp móng cũ, mài móng giảm độ sắc nhọn. Với món đồ chơi này, bạn sẽ không lo đồ đạc trong nhà có những vết xước do móng mèo gây ra. Đặc biệt an toàn, không gây tổn thương cho móng mèo khi cào. Trên trụ có gắn thêm đồ chơi trơ lơ lửng tạo hứng thú hơn cho mèo cưng của bạn.', N'~/ImagesProduct/DoDung/TruCot3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'd28cd57c-2d78-4be9-a563-d80cc103cb4e', CAST(180000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Quần áo cho chó mèo AMBABY PET 2JXF216 là sản phẩm dành cho cả chó và mèo.

', N'Quần áo cho chó mèo AMBABY PET 2JXF216 sẽ làm cho thú cưng trở nên sành điệu và xinh xắn
Sản phẩm được thiết kế với chất liệu cotton và gia công tỉ mỉ
Kiểu dáng dễ mặc, dễ vận động đem đến sự thoải mái cho chó mèo
Có nhiều kích cỡ cho bạn lựa chọn phù hợp như XS, S, M, L, XL', N'~/ImagesProduct/DoDung/QuanAo2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'd9dd2e9b-01ab-4941-9e50-758bfa4e8046', CAST(995000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Balo đựng chó mèo PETISMILE Dis78 Favorite Space phù hợp với tất cả giống chó và mèo.', N'Chất liệu túi không thấm nước và dễ làm vệ sinh làm sạch. Dễ dàng tháo gấp gọn lại khi cần
Màu sắc, kích thước & kiểu dáng đa dạng để khách hàng lựa chọn', N'~/ImagesProduct/DoDung/Balo5.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'e5e9b818-295e-4ed5-8486-6a67be1df714', CAST(80000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Xích cho chó đai ngực Hand In Hand là sản phẩm dành cho tất cả giống chó cỡ mini.', N'Kích thước:số đo vòng ngực từ 22cm đến 33,50cm. Chiều dài 120cm, chiều rộng 0,8cm.', N'~/ImagesProduct/DoDung/VongCo3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'e87c600b-372a-4135-9906-a0120ec04ec0', CAST(250000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Thuốc xịt trị ve rận cho chó mèo MERIAL Frontline Spray Treatment được bác sĩ thú y tin dùng. Với hơn 100 quốc gia đăng ký sử dụng, tiêu thụ hơn 1 tỷ chai. Thuốc có dược tính nhẹ nhàng không ngấm vào máu. Vì thế an toàn sử dụng cho chó mèo. Bao gồm chó đang cho con bú và chó mèo con. Không làm hại đến thú cưng và người. Sử dụng lâu dài có thể làm sạch sâu bọ hoàn toàn.', N'Thuốc xịt trị ve rận cho chó mèo MERIAL Frontline Spray Treatmentdiệt sạch bọ chét và rận 4 tiếng. 48 tiếng diệt sạch rệp. Không cần đợi thuốc thấm vào máu đã khiến bọ hút máu chết, lại có thể tránh các bệnh rệp lây truyền. Có thể duy trìn hơn 1 tháng, ức chế bọ chét chưa trưởng thành hiệu quả, có thể kéo dài trong 6 tuần. Trong thuốc chứa tuyến bã. Bảo vệ thuốc trên cơ thể thú cưng lâu dài. Nếu tắm nước ấm và nghịch nước, tác dụng của thuốc vẫn được duy trì cả một tháng.', N'~/ImagesProduct/DoDung/Thuoc2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'ea8dde4a-3357-4d78-815b-813ac314e35f', CAST(225000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Vòng cổ cho chó mèo kèm dây dắt AMBABY PET 1JXS017 là sản phẩm dùng cho tất cả giống chó và mèo theo từng kích cỡ phù hợp.', N'Vòng cổ cho chó mèo kèm dây dắt AMBABY PET 1JXS017 được thiết kế phong cách thời trang đi kèm với dây xích
Màu sắc hài hòa, bắt mắt sẽ làm cho thú cưng trở nên thu hút bởi mọi người
Sản phẩm giúp chó mèo cảm thấy thoải mái và không bị khó chịu khi đeo cho chúng
Thiết kế giúp bạn dễ dàng đeo hoặc tháo mở vòng một cách nhanh chóng', N'~/ImagesProduct/DoDung/QuanAo3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'eaa115ff-1a0b-4f20-a316-2ee0b0e791b0', CAST(600000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Lồng vận chuyển chó mèo AUPET BP27 Kennel với tiêu chuẩn an toàn quốc tế, phù hợp với các yêu cầu của hàng không trong quy định về vận chuyển vật nuôi. Sản phẩm được giải thương hiệu công nghiệp vật nuôi đáng tin cậy năm 2010 tại Đức. Lồng vận chuyển hàng không cho chó mèo sử dụng nguyên liệu nhựa PP ABS không mùi nhập khẩu có khả năng chịu được trọng lượng lớn, người trưởng thành đứng lên trên lồng cũng không có vấn đề gì.', N'Sản phẩm lồng vận chuyển chó mèo dễ dàng tháo lắp, sạch sẽ dễ chịu, dễ rửa sạch, tiêu độc.
Sản phẩm với thiết kế thích hợp, đường nét tinh tế, kết cấu cân xứng.
Sản phẩm hai bên trái phải đều có lỗ thông gió, để thú cưng trong chuyến bay đường dài không cảm thấy khó thở mệt mỏi.
Sản phẩm có kiểu lưới ngăn cửa thép không gỉ an toàn cho thú cưng.
Tất cả các hãng hàng không trên thế giới đều chấp nhận cho phép sử dụng sản phẩm này.', N'~/ImagesProduct/DoDung/LongVC2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'f0d009a4-2fd6-46d4-abf2-4feb52e58444', CAST(100000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Để giúp cho boss trở nên đáng yêu hơn, cửa hàng của chúng tôi cung cấp dịch vụ tỉa lông để makeup nhan sắc cho boss khiến vạn người mê.', N'Để giúp cho boss trở nên đáng yêu hơn, cửa hàng của chúng tôi cung cấp dịch vụ tỉa lông để makeup nhan sắc cho boss khiến vạn người mê.', N'~/ImagesProduct/DichVu/se1.png', N'DV')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'f2fbc19d-aa3f-4097-b69a-4db28b141015', CAST(125000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Mô tả
Thức ăn cho mèo con ROYAL CANIN Kitten dành riêng cho mèo con dưới 12 tháng tuổi.', N'Thức ăn cho mèo con ROYAL CANIN Kitten bao gồm protein từ lòng trắng trứng + Probiotic, chất chống oxy hóa giúp nâng cao sức khỏe, tăng sức đề kháng, bổ sung dinh dưỡng cho mèo, giúp cơ thể mèo phát triển đầy đủ. Men tiêu hóa, Probiotic hỗ trợ tiêu hóa cho mèo, giúp cân bằng lợi khuẩn trong đường ruột. Chất xơ hòa tan FOS: chất làm ngọt tự nhiên, duy trì cân bằng hệ vi sinh đường ruột của mèo.', N'~/ImagesProduct/DoDung/HKCMeo4.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'f68b9470-a67f-486d-9e30-6eff2ddd35ec', CAST(35000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Pate cho chó vị thịt bò trộn rau củ IRIS Chicken Beef Vegetable là sản phẩm dành cho tất cả giống chó. Sản phẩm sẽ làm hài lòng những chú chó kén ăn nhất.', N'Pate cho chó vị thịt bò trộn rau củ IRIS Chicken Beef Vegetable với thành phần hoàn toàn từ tự nhiên gạo, tinh bột, rau củ (cà rốt, đậu xanh…), thịt gà, thịt bò, protein, chất béo, chất xơ…', N'~/ImagesProduct/DoDung/NSCCho5.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'f796ae5d-3c13-494e-81ec-8de73d1dce09', CAST(455000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Nệm cho chó mèo BOBBY PET DS14OB với nhiều màu sắc, mẫu mã đa dạng. Phù hợp với tất cả các giống chó mèo.', N'Nệm cho chó mèo BOBBY PET DS14OB được thiết kế dành riêng cho vật nuôi. Bao gồm lớp vải mỏng bên ngoài, bên trong được cấu tạo bởi một lớp lông cừu dày và ấm áp. Chất liệu bền và dễ dàng vệ sinh sạch sẽ. Ổ đệm hình tròn có thành cao tạo cảm giác thoải mái nhất cho thú cưng khi nằm. Phần đệm dưới tạo cảm giác êm ái nằm. Cún cưng sẽ ngủ ngon giấc hơn. Là một chiếc giường lý tưởng để nghỉ ngơi sau khi vui chơi và huấn luyện. Bạn cũng có thể dễ dàng giặt sạch ổ nệm khi bị bẩn.', N'~/ImagesProduct/DoDung/DemTham2.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'f9b092c5-6380-432a-8ba6-188f2328a349', CAST(365000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Khay vệ sinh cho chó MAKAR Dog Toilet Trays Large với thiết kế thông minh được làm từ 100% nhựa tổng hợp cao cấp an toàn với thú cưng và môi trường. Phù hợp với tất cả các giống chó và giới tính đực cái có trọng lượng dưới 20kg.', N'Khay vệ sinh cho chó MAKAR Dog Toilet Trays Large với tấm lưới lót để nước tiểu không bị vung vãi khắp nhà và làm ướt lông thú cưng. Phần khay lưới bên dưới chắc và không bị ăn mòn. Những chú chó con có thể đứng trên khay để đi vệ sinh dễ dàng và thuận tiện. Phần thành cao chống lại vi khuẩn, côn trùng và ngăn nước tiểu bắn ra ngoài. Đặc biệt, cún con sẽ đánh hơi được dễ dàng và xác định được vị trí để thải ra nhanh hơn. Dễ dàng trong việc hướng dẫn và huấn luyện.', N'~/ImagesProduct/DoDung/KhayVeSinh7.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'f9e8e7ce-7d11-4130-9f98-f3f5cf46cf18', CAST(1880000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Lồng vận chuyển chó mèo cỡ đại AUPET Travel Box Kennel dùng cho được tất cả các giống chó có trọng lượng lớn hoặc có thể cho nhiều vật nuôi vào trong lồng cùng lúc. Sản phẩm có 2 kích thước X-Large và XX-Large.', N'Size XL (Mã sản phẩm: 0921) – 19 x 57 x 66 (cm)
Size XXL (Mã sản phẩm: 0920) – 110 x 67 x 75 (cm)', N'~/ImagesProduct/DoDung/LongVC3.png', N'DD')
INSERT [dbo].[DoiTuongKD] ([MaDT], [DonGia], [TrangThai], [GiamGia], [MoTa], [ChiTiet], [AnhDaiDien], [MaPLDTKD]) VALUES (N'fe974dc3-8408-4b1c-a81f-e612ee059ee2', CAST(50000 AS Decimal(18, 0)), 1, CAST(0 AS Decimal(18, 0)), N'Vòng cổ chó mèo hình bàn chân HAND IN HAND Pet Collar kèm chuông lục lạc gắn đeo cổ giúp bảo vệ và kiểm soát thú cưng cưng an toàn hơn. Sử dụng cho chó mèo có chu vi cổ từ 15 cm đến 45 cm.', N'Vòng cổ chó mèo hình bàn chân HAND IN HAND Pet Collar được sản xuất từ sợi Polypropylene mềm, tạo cảm giác thoải mái cho thú cưng. Đường chỉ may gọn gàng và chắc chắn. Được thiết kế với phong cách hiện đại và đa dạng màu sắc. Sản phẩm có thể điều chỉnh để phù hợp với kích thước của các giống chó mèo. Có thể kết hợp sản phẩm với dây dắt hoặc gắn bảng tên theo nhu cầu sử dụng. Tạo cảm giác dễ chịu và vui vẻ cho những người bạn 4 chân.', N'~/ImagesProduct/DoDung/VongCo4.png', N'DD')
GO
INSERT [dbo].[GioHang] ([Id], [MaDT], [SoLuong]) VALUES (N'3121cc6f-94cb-4564-aef3-e882ddd66e47', N'09460557-ea1f-4430-b9e2-14999ac035fb', 1)
INSERT [dbo].[GioHang] ([Id], [MaDT], [SoLuong]) VALUES (N'3121cc6f-94cb-4564-aef3-e882ddd66e47', N'0c55c175-b829-4b68-8e34-11c55f45b818', 1)
INSERT [dbo].[GioHang] ([Id], [MaDT], [SoLuong]) VALUES (N'3121cc6f-94cb-4564-aef3-e882ddd66e47', N'13706d9f-6ea0-4229-8684-6c4fbcd1942a', 1)
INSERT [dbo].[GioHang] ([Id], [MaDT], [SoLuong]) VALUES (N'3121cc6f-94cb-4564-aef3-e882ddd66e47', N'1e3d5bed-7bd8-4a80-b927-ede51448a0d4', 1)
INSERT [dbo].[GioHang] ([Id], [MaDT], [SoLuong]) VALUES (N'3121cc6f-94cb-4564-aef3-e882ddd66e47', N'27b0ae35-077c-458b-bf46-2e8e4b61211d', 1)
INSERT [dbo].[GioHang] ([Id], [MaDT], [SoLuong]) VALUES (N'3121cc6f-94cb-4564-aef3-e882ddd66e47', N'7a6794a8-0309-46f8-b3ef-9280c935ce26', 1)
INSERT [dbo].[GioHang] ([Id], [MaDT], [SoLuong]) VALUES (N'3121cc6f-94cb-4564-aef3-e882ddd66e47', N'803d9f18-26cf-42d8-aaec-1595bdb3da27', 1)
INSERT [dbo].[GioHang] ([Id], [MaDT], [SoLuong]) VALUES (N'3121cc6f-94cb-4564-aef3-e882ddd66e47', N'9da8b08c-1d1e-4046-b12f-70754cbcb67e', 1)
INSERT [dbo].[GioHang] ([Id], [MaDT], [SoLuong]) VALUES (N'6865adba-e6ab-4c03-85d5-a76432b32b0f', N'0c55c175-b829-4b68-8e34-11c55f45b818', 1)
INSERT [dbo].[GioHang] ([Id], [MaDT], [SoLuong]) VALUES (N'6865adba-e6ab-4c03-85d5-a76432b32b0f', N'1e3d5bed-7bd8-4a80-b927-ede51448a0d4', 1)
GO
INSERT [dbo].[HangSX] ([MaNSX], [TenNSX], [DiaChi], [SuatXu]) VALUES (N'23899e08-6005-4b26-92fe-7f3e380f7343', N'Cute Pet', N'Viet Nam', N'Viet Nam')
INSERT [dbo].[HangSX] ([MaNSX], [TenNSX], [DiaChi], [SuatXu]) VALUES (N'86b9c534-106f-456e-a140-2eb7faf3db41', N'Dog Care', N'Japanese ', N'Japanese')
GO
SET IDENTITY_INSERT [dbo].[HinhThucThanhToan] ON 

INSERT [dbo].[HinhThucThanhToan] ([MaHT], [TenHT]) VALUES (1, N'MoMo')
INSERT [dbo].[HinhThucThanhToan] ([MaHT], [TenHT]) VALUES (2, N'PayPal')
INSERT [dbo].[HinhThucThanhToan] ([MaHT], [TenHT]) VALUES (3, N'Chuyển Khoản')
INSERT [dbo].[HinhThucThanhToan] ([MaHT], [TenHT]) VALUES (4, N'Thanh Toán Khi Nhận Được Hàng')
SET IDENTITY_INSERT [dbo].[HinhThucThanhToan] OFF
GO
INSERT [dbo].[LoaiDD] ([MaLoaiDD], [TenLoaiDD]) VALUES (N'KHC', N'Các Phụ Kiện Khác')
INSERT [dbo].[LoaiDD] ([MaLoaiDD], [TenLoaiDD]) VALUES (N'TA', N'Thức Ăn')
INSERT [dbo].[LoaiDD] ([MaLoaiDD], [TenLoaiDD]) VALUES (N'YT', N'Y tế')
GO
INSERT [dbo].[LoaiThuCung] ([MaLoaiTC], [TenLoai]) VALUES (N'1', N'Mèo                                                                                                 ')
INSERT [dbo].[LoaiThuCung] ([MaLoaiTC], [TenLoai]) VALUES (N'2', N'Chó                                                                                                 ')
INSERT [dbo].[LoaiThuCung] ([MaLoaiTC], [TenLoai]) VALUES (N'3', N'Chuột Hamsters ')
INSERT [dbo].[LoaiThuCung] ([MaLoaiTC], [TenLoai]) VALUES (N'c7410986-168c-438a-9970-c5f1610180d4', N'Chó và Mèo')
GO
INSERT [dbo].[NhanSU] ([MaNS], [TenNS], [NgaySinh], [DiaChi], [SDT], [LoaiTK], [MaCV], [MatKhau]) VALUES (N'1', N'Nguyễn Duy Khương', CAST(N'2002-12-08' AS Date), N'Đồng Nai', N'0387300144', 1, N'quản lý', N'1')
GO
INSERT [dbo].[PhanLoaiDTKD] ([MaPLDTKD], [TenLoai]) VALUES (N'DD', N'Đồ Dùng')
INSERT [dbo].[PhanLoaiDTKD] ([MaPLDTKD], [TenLoai]) VALUES (N'DV', N'Dịch Vụ')
INSERT [dbo].[PhanLoaiDTKD] ([MaPLDTKD], [TenLoai]) VALUES (N'TC', N'Thú Cưng')
GO
INSERT [dbo].[ThuCung] ([MaTC], [TenTC], [MaLoaiTC], [GioiTinh], [KichCo], [TiemPhong]) VALUES (N'44ad9304-21f5-40f2-805e-28ed6ad269f5', N'Lulu', N'2', 1, N'7,8', 1)
INSERT [dbo].[ThuCung] ([MaTC], [TenTC], [MaLoaiTC], [GioiTinh], [KichCo], [TiemPhong]) VALUES (N'803d9f18-26cf-42d8-aaec-1595bdb3da27', N'Mou', N'3', 0, N'1,2', 1)
INSERT [dbo].[ThuCung] ([MaTC], [TenTC], [MaLoaiTC], [GioiTinh], [KichCo], [TiemPhong]) VALUES (N'9da8b08c-1d1e-4046-b12f-70754cbcb67e', N'Kite', N'1', 1, N'4,5', 1)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'Member')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'User')
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [UserId]) VALUES (N'Facebook', N'1714344965649573', N'd6cb0fe5-d9f6-4200-8848-09ea05917868')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3121cc6f-94cb-4564-aef3-e882ddd66e47', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2833b397-7be0-4fb6-8232-70d089822a21', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6865adba-e6ab-4c03-85d5-a76432b32b0f', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'81c7a41f-6e3f-47ca-9604-66a622abb80a', N'3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b983836e-8562-4b00-a681-2d6e36ff4165', N'3')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address]) VALUES (N'2833b397-7be0-4fb6-8232-70d089822a21', N'test1@gmail.com', 0, N'AO00hlIUbjpIP2r3LNixjreLGoelBoaHIiI+Xen3nyoZFfxVKk8jk7esmNV2Y8/OcA==', N'946649d0-11c2-4bfb-8ca3-9acf930a1f7e', NULL, 0, 0, NULL, 1, 0, N'test1@gmail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address]) VALUES (N'3121cc6f-94cb-4564-aef3-e882ddd66e47', N'admin@gmail.com', 0, N'ALj42Va4CYX3N4B0hoW5fwhMpfLMjHFdGcA7BrJRPNLBLwfeHtLDKdlySsJ0mWVjUg==', N'22a9cf99-adfb-4df7-85c6-4b3ce4fc5266', NULL, 0, 0, NULL, 1, 0, N'admin@gmail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address]) VALUES (N'6865adba-e6ab-4c03-85d5-a76432b32b0f', N'team2@gmail.com', 0, N'AOwtOA35nRI69K1B7oJNd1sjPWdAbpLdbaizAauz7YFLN0szbof5g9MZCXQoG74JTw==', N'9e2fadfa-148f-466a-9322-0d0d96d05a1d', NULL, 0, 0, NULL, 1, 0, N'team2@gmail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address]) VALUES (N'81c7a41f-6e3f-47ca-9604-66a622abb80a', N'ndk@gmail.com', 0, N'ALY1jWj6cDKfFGmwlSDkrobI6RWvByfSJ9t7NKKFCzqk2gI/ZFgAXrcAWbUeGMvdfA==', N'9ea05bba-e3f3-486e-88ac-6c29613a8d36', NULL, 0, 0, NULL, 1, 0, N'ndk@gmail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address]) VALUES (N'b983836e-8562-4b00-a681-2d6e36ff4165', N'test@gmail.com', 0, N'AGMxp+xNbBTHOyJYTckKu5mFZizmewNy9uuOsPuqv/cnwuJwPJ1BBOTgaWG9ioqrUg==', N'a9ef1ccb-96a5-42d7-aaec-a021282026cd', NULL, 0, 0, NULL, 1, 0, N'test@gmail.com', NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [FullName], [Address]) VALUES (N'd6cb0fe5-d9f6-4200-8848-09ea05917868', N'nadade120802@gmail.com', 0, NULL, N'090c789f-7302-4046-82f7-5c84929d872b', NULL, 0, 0, NULL, 1, 0, N'nadade120802@gmail.com', NULL, NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/5/2023 5:49:42 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/5/2023 5:49:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/5/2023 5:49:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/5/2023 5:49:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/5/2023 5:49:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/5/2023 5:49:42 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DoiTuongKD] ADD  CONSTRAINT [DF_SPKD_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[CT_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CT_HoaDon_HoaDon] FOREIGN KEY([SoHD])
REFERENCES [dbo].[HoaDon] ([SoHD])
GO
ALTER TABLE [dbo].[CT_HoaDon] CHECK CONSTRAINT [FK_CT_HoaDon_HoaDon]
GO
ALTER TABLE [dbo].[CT_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_CT_HoaDon_SPKD] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DoiTuongKD] ([MaDT])
GO
ALTER TABLE [dbo].[CT_HoaDon] CHECK CONSTRAINT [FK_CT_HoaDon_SPKD]
GO
ALTER TABLE [dbo].[CT_PhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuDat_PhieuDat1] FOREIGN KEY([SoPD])
REFERENCES [dbo].[PhieuDat] ([SoPD])
GO
ALTER TABLE [dbo].[CT_PhieuDat] CHECK CONSTRAINT [FK_CT_PhieuDat_PhieuDat1]
GO
ALTER TABLE [dbo].[CT_PhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_CT_PhieuDat_SPKD] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DoiTuongKD] ([MaDT])
GO
ALTER TABLE [dbo].[CT_PhieuDat] CHECK CONSTRAINT [FK_CT_PhieuDat_SPKD]
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD  CONSTRAINT [FK_DichVu_SPKD] FOREIGN KEY([MaDV])
REFERENCES [dbo].[DoiTuongKD] ([MaDT])
GO
ALTER TABLE [dbo].[DichVu] CHECK CONSTRAINT [FK_DichVu_SPKD]
GO
ALTER TABLE [dbo].[DoDungTC]  WITH CHECK ADD  CONSTRAINT [FK_DoDungTC_HangSX] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[HangSX] ([MaNSX])
GO
ALTER TABLE [dbo].[DoDungTC] CHECK CONSTRAINT [FK_DoDungTC_HangSX]
GO
ALTER TABLE [dbo].[DoDungTC]  WITH CHECK ADD  CONSTRAINT [FK_DoDungTC_LoaiDD] FOREIGN KEY([MaLoaiDD])
REFERENCES [dbo].[LoaiDD] ([MaLoaiDD])
GO
ALTER TABLE [dbo].[DoDungTC] CHECK CONSTRAINT [FK_DoDungTC_LoaiDD]
GO
ALTER TABLE [dbo].[DoDungTC]  WITH CHECK ADD  CONSTRAINT [FK_DoDungTC_LoaiThuCung] FOREIGN KEY([MaLoaiTC])
REFERENCES [dbo].[LoaiThuCung] ([MaLoaiTC])
GO
ALTER TABLE [dbo].[DoDungTC] CHECK CONSTRAINT [FK_DoDungTC_LoaiThuCung]
GO
ALTER TABLE [dbo].[DoDungTC]  WITH CHECK ADD  CONSTRAINT [FK_DoDungTC_SPKD] FOREIGN KEY([MaDD])
REFERENCES [dbo].[DoiTuongKD] ([MaDT])
GO
ALTER TABLE [dbo].[DoDungTC] CHECK CONSTRAINT [FK_DoDungTC_SPKD]
GO
ALTER TABLE [dbo].[DoiTuongKD]  WITH CHECK ADD  CONSTRAINT [FK_DoiTuongKD_PhanLoaiDTKD] FOREIGN KEY([MaPLDTKD])
REFERENCES [dbo].[PhanLoaiDTKD] ([MaPLDTKD])
GO
ALTER TABLE [dbo].[DoiTuongKD] CHECK CONSTRAINT [FK_DoiTuongKD_PhanLoaiDTKD]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_AspNetUsers] FOREIGN KEY([Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_AspNetUsers]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_DoiTuongKD] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DoiTuongKD] ([MaDT])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_DoiTuongKD]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_AspNetUsers] FOREIGN KEY([IdNguoiDung])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_AspNetUsers]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_HinhThucThanhToan] FOREIGN KEY([MaHT])
REFERENCES [dbo].[HinhThucThanhToan] ([MaHT])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_HinhThucThanhToan]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanSU] FOREIGN KEY([MaNS])
REFERENCES [dbo].[NhanSU] ([MaNS])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanSU]
GO
ALTER TABLE [dbo].[PhieuDat]  WITH CHECK ADD  CONSTRAINT [FK_PhieuDat_AspNetUsers] FOREIGN KEY([IdNguoiDung])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PhieuDat] CHECK CONSTRAINT [FK_PhieuDat_AspNetUsers]
GO
ALTER TABLE [dbo].[ThuCung]  WITH CHECK ADD  CONSTRAINT [FK_ThuCung_LoaiThuCung1] FOREIGN KEY([MaLoaiTC])
REFERENCES [dbo].[LoaiThuCung] ([MaLoaiTC])
GO
ALTER TABLE [dbo].[ThuCung] CHECK CONSTRAINT [FK_ThuCung_LoaiThuCung1]
GO
ALTER TABLE [dbo].[ThuCung]  WITH CHECK ADD  CONSTRAINT [FK_ThuCung_SPKD] FOREIGN KEY([MaTC])
REFERENCES [dbo].[DoiTuongKD] ([MaDT])
GO
ALTER TABLE [dbo].[ThuCung] CHECK CONSTRAINT [FK_ThuCung_SPKD]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[HinhAnhDTKD]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnhDTKD_DoiTuongKD] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DoiTuongKD] ([MaDT])
GO
ALTER TABLE [dbo].[HinhAnhDTKD] CHECK CONSTRAINT [FK_HinhAnhDTKD_DoiTuongKD]
GO
USE [master]
GO
ALTER DATABASE [QuanLyThuCung] SET  READ_WRITE 
GO
