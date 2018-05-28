USE [master]
GO
/****** Object:  Database [JD]    Script Date: 5/25/2018 8:05:16 PM ******/
CREATE DATABASE [JD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\JD.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\JD_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JD] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JD] SET ARITHABORT OFF 
GO
ALTER DATABASE [JD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [JD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JD] SET  MULTI_USER 
GO
ALTER DATABASE [JD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [JD]
GO
/****** Object:  Table [dbo].[discount_product]    Script Date: 5/25/2018 8:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discount_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[info] [nvarchar](100) NULL,
	[discount] [int] NULL,
	[created_date] [datetime] NULL,
	[begin_date] [date] NULL,
	[end_date] [date] NULL,
	[created_uid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[image_product]    Script Date: 5/25/2018 8:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](200) NULL,
	[id_product] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[order_line]    Script Date: 5/25/2018 8:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_line](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [int] NULL,
	[size_product] [int] NULL,
	[sum_price] [int] NULL,
	[code_color] [int] NULL,
	[id_product] [int] NULL,
	[id_bill] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product]    Script Date: 5/25/2018 8:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[created_date] [datetime] NULL,
	[status] [int] NULL,
	[code] [nvarchar](100) NULL,
	[info] [nvarchar](900) NULL,
	[id_type] [int] NULL,
	[created_uid] [int] NULL,
	[id_discount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_detail]    Script Date: 5/25/2018 8:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[size] [float] NULL,
	[price] [int] NULL,
	[amount] [int] NULL,
	[id_product] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sale_order]    Script Date: 5/25/2018 8:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sale_order](
	[total_price] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bill_code] [nvarchar](20) NULL,
	[status] [int] NULL,
	[created_date] [datetime] NULL,
	[id_user] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[type]    Script Date: 5/25/2018 8:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[gender] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 5/25/2018 8:05:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](200) NULL,
	[auth_key] [nvarchar](200) NULL,
	[name] [nvarchar](200) NULL,
	[dob] [date] NULL,
	[phone] [nvarchar](200) NULL,
	[role] [int] NULL,
	[address] [nvarchar](200) NULL,
	[email] [nvarchar](200) NULL,
	[status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[image_product] ON 

INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (1, N'[JDSHOP]1.png', 1)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (2, N'[JDSHOP]2.png', 1)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (3, N'[JDSHOP]3.png', 1)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (4, N'[JDSHOP]4.png', 2)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (5, N'[JDSHOP]5.png', 3)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (6, N'[JDSHOP]6.jpg', 4)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (7, N'[JDSHOP]7.jpg', 4)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (8, N'[JDSHOP]8.jpg', 5)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (9, N'[JDSHOP]9.png', 6)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (10, N'[JDSHOP]10.png', 6)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (11, N'[JDSHOP]11.png', 7)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (12, N'[JDSHOP]12.png', 7)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (13, N'[JDSHOP]13.png', 7)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (14, N'[JDSHOP]14.png', 8)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (15, N'[JDSHOP]15.png', 9)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (16, N'[JDSHOP]16.png', 9)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (17, N'[JDSHOP]17.png', 9)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (18, N'[JDSHOP]18.png', 10)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (19, N'[JDSHOP]19.jpg', 11)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (20, N'[JDSHOP]20.jpg', 11)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (21, N'[JDSHOP]21.jpg', 13)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (22, N'[JDSHOP]22.jpg', 13)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (23, N'[JDSHOP]23.jpg', 13)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (24, N'[JDSHOP]24.png', 14)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (25, N'[JDSHOP]25.png', 15)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (26, N'[JDSHOP]26.png', 16)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (27, N'[JDSHOP]27.png', 16)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (28, N'[JDSHOP]28.png', 12)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (29, N'[JDSHOP]29.png', 17)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (30, N'[JDSHOP]30.png', 18)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (31, N'[JDSHOP]31.jpg', 19)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (32, N'[JDSHOP]32.png', 20)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (33, N'[JDSHOP]33.png', 20)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (34, N'[JDSHOP]34.png', 20)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (35, N'[JDSHOP]35.png', 21)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (36, N'[JDSHOP]36.png', 21)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (37, N'[JDSHOP]37.png', 21)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (38, N'[JDSHOP]38.png', 22)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (39, N'[JDSHOP]39.png', 23)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (40, N'[JDSHOP]40.png', 23)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (41, N'[JDSHOP]41.png', 23)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (42, N'[JDSHOP]42.png', 23)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (43, N'[JDSHOP]43.jpg', 25)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (44, N'[JDSHOP]44.png', 26)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (45, N'[JDSHOP]45.png', 27)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (46, N'[JDSHOP]46.jpg', 28)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (47, N'[JDSHOP]47.png', 29)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (48, N'[JDSHOP]48.jpg', 30)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (49, N'[JDSHOP]49.jpg', 31)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (50, N'[JDSHOP]50.jpg', 31)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (51, N'[JDSHOP]51.jpg', 31)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (52, N'[JDSHOP]52.jpg', 31)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (53, N'[JDSHOP]53.jpg', 32)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (54, N'[JDSHOP]54.jpg', 32)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (55, N'[JDSHOP]55.jpg', 32)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (56, N'[JDSHOP]56.png', 33)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (57, N'[JDSHOP]57.png', 33)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (58, N'[JDSHOP]58.png', 34)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (59, N'[JDSHOP]59.png', 34)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (60, N'[JDSHOP]60.png', 35)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (61, N'[JDSHOP]61.png', 36)
INSERT [dbo].[image_product] ([id], [link], [id_product]) VALUES (62, N'[JDSHOP]62.png', 36)
SET IDENTITY_INSERT [dbo].[image_product] OFF
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (1, N'NHẪN PNJ VÀNG TRẮNG 14K ĐÍNH NGỌC TRAI FRESHWATER', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GNDRWB81716.602', NULL, 1, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (2, N'NHẪN PNJ PHƯỢNG HOÀNG VÀNG TRẮNG 14K ĐÍNH ĐÁ RUBY', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'NTRWA81098.301', NULL, 6, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (3, N'NHẪN PNJ PHƯỢNG HOÀNG VÀNG 18K ĐÍNH ĐÁ RUBY', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'NDRYB81098.600', NULL, 6, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (4, N'NHẪN PNJ VÀNG TRẮNG 14K ĐÍNH ĐÁ SAPPHIRE', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GNDRWA69857.600', NULL, 1, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (5, N'NHẪN BẠC PNJSILVER ĐÍNH ĐÁ MÀU XANH', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SND2KN08343.400', NULL, 1, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (6, N'NHẪN BẠC DIY PNJSILVER ENAMEL HÌNH BÔNG HOA', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N' SNNIKK14460.000', NULL, 1, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (7, N'NHẪN BẠC DIY PNJSILVER ENAMEL', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SNNIKK14459.000', NULL, 1, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (8, N'NHẪN PNJ VÀNG 14K ĐÍNH NGỌC TRAI FRESHWATER', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GNHRYB89607.601', NULL, 1, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (9, N'NHẪN NAM PNJ VÀNG TRẮNG 14K ĐÍNH ĐÁ SAPHIRE', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GNTRWA17581.600', NULL, 6, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (10, N'BÔNG TAI PNJ PHƯỢNG HOÀNG VÀNG TRẮNG 14K ĐÍNH ĐÁ RUBY', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GBDRWA81097.300', NULL, 2, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (11, N'BÔNG TAI PNJ VÀNG 18K ĐÍNH ĐÁ CITRINE', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GBDRCB87733.600', NULL, 2, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (12, N'BÔNG TAI PNJ VÀNG 18K ĐÍNH ĐÁ CITRINE', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GBDRYA72642.600', NULL, 2, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (13, N'BÔNG TAI KIM CƯƠNG PNJ VÀNG TRẮNG 14K', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GBDRWA57853.5A0', NULL, 2, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (14, N'BÔNG TAI PNJ VÀNG 14K ĐÍNH NGỌC TRAI FRESHWATER', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GBDRYB89604.601', NULL, 2, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (15, N'BÔNG TAI PNJ VÀNG TRẮNG 14K ĐÍNH ĐÁ TOPAZ', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'MS: GBDRWB87739.600', NULL, 2, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (16, N'ÔNG TAI KIM CƯƠNG PNJ VÀNG TRẮNG 14K', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GBDRWA88371.5A0', NULL, 2, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (17, N'BÔNG TAI BẠC HÌNH TRÁI TIM PNJSILVER FRIENDZONE BREAKER ĐÍNH NGỌC TRAI', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SBD2KN14382.200', NULL, 2, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (18, N'BÔNG TAI BẠC HÌNH TAM GIÁC PNJSILVER FRIENDZONE BREAKER ĐÍNH NGỌC TRAI', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SBD2KN14410.200', NULL, 2, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (19, N'LẮC TAY PNJ VÀNG TRẮNG 14K ĐÍNH ĐÁ SAPHIRE', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GLDRWB81514.604', NULL, 4, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (20, N'LẮC TAY BẠC Ý PNJSILVER', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SLNIKK14531.000', NULL, 4, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (21, N'VÒNG TAY BẠC DIY PNJSILVER ENAMEL HÌNH BÔNG HOA', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SVNIKK14461.000', NULL, 4, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (22, N'LẮC TAY PNJ PHƯỢNG HOÀNG VÀNG TRẮNG 14K ĐÍNH ĐÁ RUBY', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GLTRWA81099.301', NULL, 4, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (23, N'KIỀNG BẠC Ý PNJSILVER', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SHNIKK14496.000', NULL, 5, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (24, N'LẮC TAY BẠC Ý PNJSILVER', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SLNIKK14520.000', NULL, 4, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (25, N'LẮC TAY BẠC PNJSILVER ĐÍNH ĐÁ', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SLNIKK14456.000', NULL, 4, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (26, N'VÒNG TAY PNJ HOA HỒNG VÀNG TRẮNG 14K ĐÍNH NGỌC TRAI FRESHWATER', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GVDRWB89466.601', NULL, 4, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (27, N'VÒNG TAY PNJ VÀNG TRẮNG 14K ĐÍNH NGỌC TRAI AKOYA', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GVDRWB87737.600', NULL, 4, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (28, N'MẶT DÂY CHUYỀN PNJ VÀNG 18K ĐÍNH ĐÁ CITRINE', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GMDRCB87732.600', NULL, 3, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (29, N'DÂY CỔ PNJ PHƯỢNG HOÀNG VÀNG 18K ĐÍNH ĐÁ RUBY', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GCDRYB81096.601', NULL, 3, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (30, N'MẶT DÂY CHUYỀN PNJ VÀNG TRẮNG 14K ĐÍNH NGỌC TRAI AKOYA', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GMDRWB85765.601', NULL, 3, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (31, N'MẶT DÂY CHUYỀN KIM CƯƠNG PNJ VÀNG TRẮNG 14K', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GMDRWA70133.5A1', NULL, 3, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (32, N'MẶT DÂY CHUYỀN PNJ VÀNG TRẮNG 14K ĐÍNH ĐÁ TOPAZ', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GMDRWB87738.600', NULL, 3, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (33, N'MẶT DÂY CHUYỀN KIM CƯƠNG PNJ FIRST DIAMOND VÀNG 14K', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'GMDRHA87585.5A0', NULL, 3, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (34, N'MẶT DÂY CHUYỀN BẠC HÌNH TRÁI TIM PNJSILVER FRIENDZONE BREAKER ĐÍNH NGỌC TRAI', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SMD2KN14381.200', NULL, 3, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (35, N'DÂY CỔ BẠC HÌNH TAM GIÁC PNJSILVER FRIENDZONE BREAKER ĐÍNH NGỌC TRAI', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'SCH2KK14409.200', NULL, 3, 21, NULL)
INSERT [dbo].[product] ([id], [name], [created_date], [status], [code], [info], [id_type], [created_uid], [id_discount]) VALUES (36, N'MẶT DÂY CHUYỀN BẠC PNJSILVER FRIENDZONE BREAKER ĐÍNH NGỌC TRAI', CAST(N'2018-04-01 00:00:00.000' AS DateTime), 1, N'MS: SMD2KN14406.200', NULL, 3, 21, NULL)
SET IDENTITY_INSERT [dbo].[product] OFF
SET IDENTITY_INSERT [dbo].[product_detail] ON 

INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (1, 10, 5815000, 100, 1)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (2, 10.5, 5942000, 100, 1)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (3, 11, 5959000, 100, 1)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (4, 12, 5980000, 100, 1)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (5, 13, 6029000, 100, 1)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (6, 9, 36526000, 100, 2)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (7, 10, 20170000, 100, 3)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (8, 12, 19770000, 100, 3)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (9, 13, 20195000, 100, 3)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (10, 14, 20037000, 100, 3)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (11, 9, 9530000, 100, 4)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (12, 10, 9645000, 100, 4)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (13, 11, 9799000, 100, 4)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (14, 12, 9894000, 100, 4)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (15, 10, 466000, 100, 5)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (16, 10, 680000, 100, 6)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (17, 11, 680000, 100, 6)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (18, 12, 680000, 100, 6)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (19, 13, 680000, 100, 6)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (20, 14, 680000, 100, 6)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (21, 20, 680000, 100, 6)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (22, 10, 720000, 100, 7)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (23, 11, 720000, 100, 7)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (24, 12, 720000, 100, 7)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (25, 13, 720000, 100, 7)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (26, 13.5, 720000, 100, 7)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (27, 14, 720000, 100, 7)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (28, 15, 720000, 100, 7)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (29, 16, 720000, 100, 7)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (30, 20, 720000, 100, 7)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (31, 8, 3879000, 100, 8)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (32, 10, 3831000, 100, 8)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (33, 11, 3967000, 100, 8)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (34, 12, 3986000, 100, 8)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (35, 13, 3995000, 100, 8)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (36, 17, 26573000, 100, 9)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (37, NULL, 57381000, 100, 10)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (38, NULL, 6008000, 100, 11)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (39, NULL, 6030000, 100, 12)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (40, NULL, 20927000, 100, 13)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (41, NULL, 5843000, 100, 14)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (42, NULL, 7599000, 100, 15)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (43, NULL, 56652000, 100, 16)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (44, NULL, 492000, 100, 17)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (45, NULL, 475000, 100, 18)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (46, 16, 15388000, 100, 19)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (47, 19, 2890000, 100, 20)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (48, 50, 1661000, 100, 21)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (49, 52, 1661000, 100, 21)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (50, 53, 1661000, 100, 21)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (51, 54, 1661000, 100, 21)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (52, 55, 1661000, 100, 21)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (53, 15, 57156000, 100, 22)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (54, NULL, 4590000, 100, 23)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (55, NULL, 1990000, 100, 24)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (56, 16, 520000, 100, 25)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (57, 17, 520000, 100, 25)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (58, 18, 520000, 100, 25)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (59, 19, 520000, 100, 25)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (60, 23, 520000, 100, 25)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (61, 24, 520000, 100, 25)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (62, 45, 520000, 100, 25)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (63, 49, 17058000, 100, 26)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (64, 51, 17430000, 100, 26)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (65, 52, 17273000, 100, 26)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (66, 53, 17515000, 100, 26)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (67, 54, 19693000, 100, 26)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (68, 50, 16312000, 100, 27)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (69, 51, 16110000, 100, 27)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (70, 52, 16155000, 100, 27)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (71, 53, 16443000, 100, 27)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (72, 54, 16799000, 100, 27)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (73, NULL, 6868000, 100, 28)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (74, 42, 150832000, 100, 29)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (75, 43, 150414000, 100, 29)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (76, 45, 148592000, 100, 29)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (77, NULL, 13760000, 100, 30)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (78, NULL, 33128000, 100, 31)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (79, NULL, 5142000, 100, 32)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (80, NULL, 4758000, 100, 33)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (81, NULL, 436000, 100, 34)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (82, 40, 649000, 100, 35)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (83, 41, 649000, 100, 35)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (84, 42, 649000, 100, 35)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (85, 43, 649000, 100, 35)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (86, 44, 649000, 100, 35)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (87, 45, 649000, 100, 35)
INSERT [dbo].[product_detail] ([id], [size], [price], [amount], [id_product]) VALUES (88, NULL, 507000, 100, 36)
SET IDENTITY_INSERT [dbo].[product_detail] OFF
SET IDENTITY_INSERT [dbo].[type] ON 

INSERT [dbo].[type] ([id], [name], [gender]) VALUES (1, N'Nhẫn', N'Nữ')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (2, N'Bông tai', N'Nữ')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (3, N'Dây chuyền', N'Nữ')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (4, N'Lắc tay', N'Nữ')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (5, N'Lắc chân', N'Nữ')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (6, N'Nhẫn', N'Nam')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (7, N'Bông tai', N'Nam')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (8, N'Dây chuyền', N'Nam')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (9, N'Bông tai', N'Trẻ em')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (10, N'Dây chuyền', N'Trẻ em')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (11, N'Lắc tay', N'Trẻ em')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (12, N'Lắc chân', N'Trẻ em')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (13, N'Trang sức cưới truyền thống', N'')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (14, N'Trang sức cưới hiện đại', N'')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (15, N'Quà tặng cầu hôn', N'')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (16, N'Quà tặng sinh nhật', N'')
INSERT [dbo].[type] ([id], [name], [gender]) VALUES (17, N'Quà tặng kỉ niệm', N'')
SET IDENTITY_INSERT [dbo].[type] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (2, N'NguyenTien', N'23467323', N'', N'Nguyễn Thị Cẩm Tiên', CAST(N'2001-03-27' AS Date), N'1283742934', 1, N'72/23/Hòa  Bình', N'tiennnt228@gmail.com', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (3, N'NguyenTu', N'144668235', N'', N'Nguyễn Đình Tú', CAST(N'1894-12-01' AS Date), N'1248250252', 3, N'68 điện bien phủ', N'tu67234@gmail.com', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (4, N'TranLoan22', N'583435457', N'', N'Trần Thị Loan', CAST(N'1895-12-01' AS Date), N'1639814263', 2, N'chư sê, gia lai', N'234bajdvf@gmail.com', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (5, N'DinhTien', N'zgb4235', N'', N'Lê Đình Tiến', CAST(N'1887-08-03' AS Date), N'1638762949', 1, N'buôn mê thuột', N'15502880@gm.uit.edu.vn', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (6, N'LamLam123', N'sh64735vd', N'', N'Thái Bảo Duy Lâm', CAST(N'1893-09-25' AS Date), N'1673945034', 4, N'đắk nông', N'lamlam259@gmail.com', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (7, N'KietLe', N'sfhh56789', N'', N'Lê Viết Kiệt', CAST(N'1954-04-30' AS Date), N'1282349595', 4, N'đồng nai', N'kietleeeee@gmail.com', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (8, N'LoanLeNguyen', N'zxcv356', N'', N'Nguyễn Thị Loan Lê', CAST(N'1888-12-17' AS Date), N'1249395345', 2, N'Biên hòa', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (9, N'Tinhtran1209', N'agfjhgkrwey2435', N'', N'Trần Tinh', CAST(N'2000-01-13' AS Date), N'9583453455', 4, N'THủ dầu một', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (10, N'sauToan1997', N'zvxcvcnx 112', N'', N'Phạm Đình Toàn', CAST(N'1997-05-18' AS Date), N'9038325855', 3, N'6/34/12, long phước', N'ewr56ght@gm.vn', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (11, N'888TuLe', N'1230987352', N'', N'Lê Tú Thảo', CAST(N'1996-10-26' AS Date), N'9048475345', 2, N'Thủ  đức', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (12, N'DatHoang10', N'4236!325!', N'', N'Hoàng Bảo Đạt', CAST(N'1992-10-16' AS Date), N'8347593345', 4, N'cà mau', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (13, N'Tuan78chusu', N'fdhgfj@@@', N'', N'Phan Việt Tuấn', CAST(N'1997-02-18' AS Date), N'123679878', 3, N'Kiên giang', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (14, N'Chinsnnuocmam', N'fdhtu*24235', N'', N'Hoàng Mẫn', CAST(N'1995-06-24' AS Date), N'2534634533', 4, N'Tiền Giang', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (15, N'cakhothom', N'jksncmdsn', N'', N'Bành Thị Thơm', CAST(N'1997-07-17' AS Date), N'1912482054', 2, N'Mỹ Tho, Tiền Giang', N'thombanhthi@gmail.com', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (16, N'thiettinhle', N'ag3326hdbv', N'', N'Lê Thiết Tính', CAST(N'1998-08-18' AS Date), N'12432543764', 1, N'Long An', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (17, N'cacom76dung', N'dsfafsdv', N'', N'Mã Văn Dũng', CAST(N'1999-08-18' AS Date), N'16836554893', 3, N'Chư Bứ', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (18, N'beheokute', N'cca23456', N'', N'Phaạm Thị Heo', CAST(N'2011-10-20' AS Date), N'16425992363', 4, N'Pleiku', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (19, N'HoanThIenIn', N'2456hoan', N'', N'Mai Đào Thơm', CAST(N'1998-04-18' AS Date), N'90724583458', 2, N'Quận 1', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (20, N'NLhangHHH', N'NLhangHHH', N'', N'Mai Bảo Thắng', CAST(N'1997-01-28' AS Date), N'24543364436', 2, N'quận 2', N'', 1)
INSERT [dbo].[users] ([id], [username], [password], [auth_key], [name], [dob], [phone], [role], [address], [email], [status]) VALUES (21, N'admin', N'admin', N'', N'Phạm Thành Nghĩa', CAST(N'2000-09-19' AS Date), N'36347456345', 1, N'quận 7', N'nghia@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[users] OFF
ALTER TABLE [dbo].[discount_product]  WITH CHECK ADD FOREIGN KEY([created_uid])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[image_product]  WITH CHECK ADD FOREIGN KEY([id_product])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order_line]  WITH CHECK ADD FOREIGN KEY([id_bill])
REFERENCES [dbo].[sale_order] ([id])
GO
ALTER TABLE [dbo].[order_line]  WITH CHECK ADD FOREIGN KEY([id_product])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([created_uid])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([id_discount])
REFERENCES [dbo].[discount_product] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([id_type])
REFERENCES [dbo].[type] ([id])
GO
ALTER TABLE [dbo].[product_detail]  WITH CHECK ADD FOREIGN KEY([id_product])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[sale_order]  WITH CHECK ADD FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
USE [master]
GO
ALTER DATABASE [JD] SET  READ_WRITE 
GO
