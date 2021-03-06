USE [master]
GO
/****** Object:  Database [WardrobeMVC]    Script Date: 3/18/2018 9:26:30 PM ******/
CREATE DATABASE [WardrobeMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ClothingWardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClothingWardrobe.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ClothingWardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ClothingWardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WardrobeMVC] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WardrobeMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WardrobeMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WardrobeMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WardrobeMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WardrobeMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WardrobeMVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WardrobeMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WardrobeMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WardrobeMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WardrobeMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WardrobeMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WardrobeMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WardrobeMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WardrobeMVC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WardrobeMVC] SET  MULTI_USER 
GO
ALTER DATABASE [WardrobeMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WardrobeMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WardrobeMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WardrobeMVC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WardrobeMVC] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WardrobeMVC]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 3/18/2018 9:26:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[AccessoriesID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occassion] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[AccessoriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottoms]    Script Date: 3/18/2018 9:26:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottoms](
	[BottomsID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Bottoms] PRIMARY KEY CLUSTERED 
(
	[BottomsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Outfits]    Script Date: 3/18/2018 9:26:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Outfits](
	[OutfitsID] [int] IDENTITY(1,1) NOT NULL,
	[TopsID] [int] NOT NULL,
	[BottomsID] [int] NOT NULL,
	[ShoesID] [int] NOT NULL,
	[AccessoriesID] [int] NOT NULL,
	[Photo] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_Outfits] PRIMARY KEY CLUSTERED 
(
	[OutfitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shoes]    Script Date: 3/18/2018 9:26:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shoes](
	[ShoesID] [int] IDENTITY(1,1) NOT NULL,
	[ShoeName] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Shoes] PRIMARY KEY CLUSTERED 
(
	[ShoesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tops]    Script Date: 3/18/2018 9:26:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tops](
	[TopsID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Season] [nvarchar](50) NOT NULL,
	[Occasion] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Tops] PRIMARY KEY CLUSTERED 
(
	[TopsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryName], [Color], [Season], [Occassion], [Type], [Photo]) VALUES (1, N'Tie', N'Black', N'Any', N'Formal', N'Tie', N'/Content/Images/BTie.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryName], [Color], [Season], [Occassion], [Type], [Photo]) VALUES (2, N'Tie', N'Red w/Blue&White stripes', N'Any', N'Formal', N'Tie', N'/Content/Images/RTie.png')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryName], [Color], [Season], [Occassion], [Type], [Photo]) VALUES (3, N'Oakley Sunglasses', N'Black', N'Any', N'Casual', N'Sunglasses', N'/Content/Images/OSunglasses.jpg')
INSERT [dbo].[Accessories] ([AccessoriesID], [AccessoryName], [Color], [Season], [Occassion], [Type], [Photo]) VALUES (4, N'Oakley Sunglasses', N'Black', N'Any', N'Casual', N'Sunglasses', N'/Content/Images/OFSunglasses.jpg')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[Bottoms] ON 

INSERT [dbo].[Bottoms] ([BottomsID], [BottomName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (1, N'Blue Jeans', N'Dark Blue', N'Any', N'Work-Casual', N'Pants', N'/Content/Images/BlJeans.jpg')
INSERT [dbo].[Bottoms] ([BottomsID], [BottomName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (2, N'Dress Slacks', N'Black', N'Any', N'Formal', N'Pants', N'/Content/Images/BSPants.jpg')
INSERT [dbo].[Bottoms] ([BottomsID], [BottomName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (3, N'Cargo Pants', N'Black', N'Any', N'Casual', N'Pants', N'/Content/Images/CPants.jpg')
INSERT [dbo].[Bottoms] ([BottomsID], [BottomName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (4, N'Under Armour Shorts', N'Black', N'Summer', N'Work out', N'Shorts', N'/Content/Images/UShorts.jpg')
SET IDENTITY_INSERT [dbo].[Bottoms] OFF
SET IDENTITY_INSERT [dbo].[Shoes] ON 

INSERT [dbo].[Shoes] ([ShoesID], [ShoeName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (1, N'Dress Shoes', N'Black', N'Any', N'Formal', N'Shoe', N'/Content/Images/DShoes.jpg')
INSERT [dbo].[Shoes] ([ShoesID], [ShoeName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (2, N'Oakley Boots', N'Black', N'Any', N'Hiking', N'Boots', N'/Content/Images/OBoots.jpg')
INSERT [dbo].[Shoes] ([ShoesID], [ShoeName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (3, N'Pink Floyd Flip-Flops', N'Black w/Rainbow', N'Summer', N'Casual', N'Flip-Flop', N'/Content/Images/PFFlipflops.jpg')
SET IDENTITY_INSERT [dbo].[Shoes] OFF
SET IDENTITY_INSERT [dbo].[Tops] ON 

INSERT [dbo].[Tops] ([TopsID], [TopName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (1, N'Pink Floyd The Wall', N'Black', N'Spring-Summer', N'Casual', N'T-Shirt', N'/Content/Images/PFTWT-shirt.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (2, N'Pink Floyd Dark Side Of The Moon', N'Black', N'Spring-Summer', N'Casual', N'T-Shirt', N'/Content/Images/PFDT-shirt.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (3, N'Marilyn Manson', N'Black', N'Spring-Summer', N'Casual', N'T-Shirt', N'/Content/Images/MMFT-shirt.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (4, N'Marilyn Manson', N'Black', N'Spring-Summer', N'Casual', N'T-Shirt', N'/Content/Images/MMCT-shirt.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (5, N'Pink Floyd The Wall', N'Black', N'Fall-Winter', N'Casual', N'Hoodie', N'/Content/Images/PFTWHoodie.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (6, N'Pink Floyd Dark Side Of The Moon', N'Gray', N'Fall-Winter', N'Casual', N'Hoodie', N'/Content/Images/PFDHoodie.png')
INSERT [dbo].[Tops] ([TopsID], [TopName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (7, N'Leather Jacket', N'Black', N'Spring-Summer-Fall', N'Casual', N'Jacket', N'/Content/Images/LJacket.jpg')
INSERT [dbo].[Tops] ([TopsID], [TopName], [Color], [Season], [Occasion], [Type], [Photo]) VALUES (8, N'Striped Suit', N'Black w/Gray stripes', N'Any', N'Formal', N'Suit Jacket', N'/Content/Images/SSJacket.jpg')
SET IDENTITY_INSERT [dbo].[Tops] OFF
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Accessories] FOREIGN KEY([AccessoriesID])
REFERENCES [dbo].[Accessories] ([AccessoriesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Accessories]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Bottoms] FOREIGN KEY([BottomsID])
REFERENCES [dbo].[Bottoms] ([BottomsID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Bottoms]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Shoes] FOREIGN KEY([ShoesID])
REFERENCES [dbo].[Shoes] ([ShoesID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Shoes]
GO
ALTER TABLE [dbo].[Outfits]  WITH CHECK ADD  CONSTRAINT [FK_Outfits_Tops] FOREIGN KEY([TopsID])
REFERENCES [dbo].[Tops] ([TopsID])
GO
ALTER TABLE [dbo].[Outfits] CHECK CONSTRAINT [FK_Outfits_Tops]
GO
USE [master]
GO
ALTER DATABASE [WardrobeMVC] SET  READ_WRITE 
GO
