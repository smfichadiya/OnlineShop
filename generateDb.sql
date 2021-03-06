USE [master]
GO
DECLARE @DBName varchar(50) = 'OnlineStore'
/****** Object:  Database [OnlineStore]    Script Date: 2/26/2017 11:31:16 AM ******/
IF EXISTS(select * from sys.databases where name= @DBName)
EXEC('DROP DATABASE ' + @DBName)

EXEC('CREATE DATABASE ' + @DBName)
GO
ALTER DATABASE [OnlineStore] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnlineStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OnlineStore] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineStore] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OnlineStore] SET DELAYED_DURABILITY = DISABLED 
GO
USE [OnlineStore]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/26/2017 11:31:16 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/26/2017 11:31:16 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/26/2017 11:31:16 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/26/2017 11:31:16 AM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/26/2017 11:31:16 AM ******/
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
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cart]    Script Date: 2/26/2017 11:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AspNetUserId] [nvarchar](128) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 2/26/2017 11:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 2/26/2017 11:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Total] [decimal](19, 4) NULL,
	[OrderDate] [datetime] NOT NULL,
	[AspNetUserId] [nvarchar](128) NOT NULL,
	[LastFourCardDigits] [nvarchar](4) NULL,
	[FirstName] [nvarchar](200) NULL,
	[LastName] [nvarchar](200) NULL,
	[OrderStatusId] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2/26/2017 11:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](19, 4) NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 2/26/2017 11:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/26/2017 11:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ProductImagePath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductReview]    Script Date: 2/26/2017 11:31:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReview](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[AspNetUserId] [nvarchar](128) NOT NULL,
	[Rating] [int] NOT NULL,
	[Review] [nvarchar](max) NOT NULL,
	[ReviewDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductReview] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'47503803-122a-45d6-9a34-a621617498dd', N'Customer')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'5a691fb0-3091-4027-9dfc-ffcd06d05e64', N'Administrator')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'28b574c0-02a7-4bc4-8cc1-e01a87bc92f2', N'5a691fb0-3091-4027-9dfc-ffcd06d05e64')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6791523d-9f1d-4263-ac9c-e349c8e2fb81', N'5a691fb0-3091-4027-9dfc-ffcd06d05e64')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9505b2be-0c99-4baf-aa45-6c04456a8460', N'47503803-122a-45d6-9a34-a621617498dd')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'28b574c0-02a7-4bc4-8cc1-e01a87bc92f2', N'admin@gmail.com', 0, N'AO60W8KMD6yUFgjvz+1VO62tqHDD/LakhqIuzxFijhmr5QCII6BP96Enf8kKxufhhw==', N'8f8d9500-63a0-4871-991d-fb4f140927f2', NULL, 0, 0, NULL, 1, 0, N'admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6791523d-9f1d-4263-ac9c-e349c8e2fb81', N'israelovg@gmail.com', 1, N'ANw5G3ovnT+wQMg2DptZhfUiPMs5Go7GbVtr2QEXNEnknvxJDo5OQ4v+XahGEqpxKw==', N'74a03e07-24ff-46ea-8664-376fc970904b', NULL, 0, 0, NULL, 1, 0, N'israelovg@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'9505b2be-0c99-4baf-aa45-6c04456a8460', N'ihenry@walla.co.il', 0, N'ACp3bHLxGBOEs/oeeJ4JFed6LqYxDYb7X8ZkLyGDQxYgjySyN6m4buWFSgeRLtbyjw==', N'e2edd5a0-7ef6-4f24-8444-c61232edd617', NULL, 0, 0, NULL, 1, 0, N'ihenry@walla.co.il')
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Id], [AspNetUserId], [ProductId], [Quantity], [DateCreated]) VALUES (7, N'6791523d-9f1d-4263-ac9c-e349c8e2fb81', 21, 1, CAST(N'2017-02-24 18:04:20.303' AS DateTime))
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (2, N'Dresses', N'Dresses')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (3, N'Jackets', N'Jackets')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (4, N'Blazers', N'Blazers')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (5, N'Body', N'Body')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (6, N'Jeans', N'Jeans')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (7, N'Skirts', N'Skirts')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (8, N'T-Shirt', N'T-Shirt')
INSERT [dbo].[Category] ([Id], [Name], [Description]) VALUES (9, N'Shoes', N'Shoes')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [Address], [City], [State], [PostalCode], [Country], [Phone], [Total], [OrderDate], [AspNetUserId], [LastFourCardDigits], [FirstName], [LastName], [OrderStatusId]) VALUES (2, N'Habanim 25', N'Holon', NULL, N'12345', N'Israel', N'+972545390648', CAST(214.0000 AS Decimal(19, 4)), CAST(N'2017-02-24 17:34:38.640' AS DateTime), N'6791523d-9f1d-4263-ac9c-e349c8e2fb81', N'4123', N'Gabi', N'Israeli', 1)
INSERT [dbo].[Order] ([Id], [Address], [City], [State], [PostalCode], [Country], [Phone], [Total], [OrderDate], [AspNetUserId], [LastFourCardDigits], [FirstName], [LastName], [OrderStatusId]) VALUES (3, N'Ali', N'Holon', N'Galii', N'12345', N'Israel', N'0545390648', CAST(98.0000 AS Decimal(19, 4)), CAST(N'2017-02-24 18:07:03.730' AS DateTime), N'6791523d-9f1d-4263-ac9c-e349c8e2fb81', N'4123', N'Gabi', N'Israeli', 1)
INSERT [dbo].[Order] ([Id], [Address], [City], [State], [PostalCode], [Country], [Phone], [Total], [OrderDate], [AspNetUserId], [LastFourCardDigits], [FirstName], [LastName], [OrderStatusId]) VALUES (4, N'Sagi', N'Holon', N'Merkaz', N'12345', N'Israel', N'0545390648', CAST(260.0000 AS Decimal(19, 4)), CAST(N'2017-02-24 18:08:26.587' AS DateTime), N'6791523d-9f1d-4263-ac9c-e349c8e2fb81', N'4123', N'Gabi', N'Israeli', 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (2, 2, 4, 1, CAST(50.0000 AS Decimal(19, 4)))
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (3, 2, 5, 2, CAST(42.0000 AS Decimal(19, 4)))
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (4, 2, 2, 2, CAST(40.0000 AS Decimal(19, 4)))
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (5, 3, 11, 1, CAST(98.0000 AS Decimal(19, 4)))
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [ProductId], [Quantity], [UnitPrice]) VALUES (6, 4, 19, 2, CAST(130.0000 AS Decimal(19, 4)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (1, N'Pending')
INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (2, N'Incomplete')
INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (3, N'Refunded')
INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (4, N'Delivered')
INSERT [dbo].[OrderStatus] ([Id], [Name]) VALUES (5, N'Complete')
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (2, N'SHORT PRINTED JUMPSUIT', N'Short printed jumpsuit with round neck. Sleeveless. Front knot detail. Slit at the waist. Side pockets. Back zip fastening.', CAST(40.00 AS Decimal(10, 2)), 2, N'images/productImg/dress1.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (4, N'OFF-THE-SHOULDER MIDI DRESS', N'Poplin midi dress with straight, off-the-shoulder neckline. Stretch neckline. Waist seam. Flounce skirt. Side zip fastening.', CAST(50.00 AS Decimal(10, 2)), 2, N'images/productImg/dress2.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (5, N'PRINTED DRESS WITH ZIP', N'Printed dress with V-neck and long sleeves. Buttoned cuffs. Front zip fastening. Pull-tab detail on the zip.', CAST(42.00 AS Decimal(10, 2)), 2, N'images/productImg/dress3.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (6, N'DRESS WITH OPEN SLEEVES', N'Short dress with a round neck and long, open sleeves. Cuffs with lined buttons for fastening. Flowing layer detail. Back button fastening.', CAST(38.00 AS Decimal(10, 2)), 2, N'images/productImg/dress4.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (7, N'SHIFT DRESS', N'Tube dress with off-the-shoulder neckline. Long sleeves with frill detail on the cuffs. Front opening. Back zip fastening.', CAST(32.00 AS Decimal(10, 2)), 2, N'images/productImg/dress5.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (8, N'SHIRT-STYLE TUNIC WITH FRILLED HEM', N'Poplin shirt-style tunic with lapel collar and long sleeves. Buttoned cuffs. Frilled hem. Contrast belt. Front button fastening.', CAST(42.00 AS Decimal(10, 2)), 2, N'images/productImg/dress6.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (9, N'CROPPED JUMPSUIT WITH METALLIC DETAIL', N'Cropped jumpsuit with crossover V-neck and wide straps. Metallic details on the neckline. Waist seam. Side zip fastening.', CAST(35.00 AS Decimal(10, 2)), 2, N'images/productImg/dress7.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (10, N'PRINTED SARONG MIDI DRESS', N'Sarong midi dress with floral print. Crossover V-neck and short sleeves. Contrast bow at the waist. Front button fastening.', CAST(42.00 AS Decimal(10, 2)), 2, N'images/productImg/dress8.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (11, N'GATHERED SLEEVE JACKET', N'Round neck jacket with long gathered sleeves. Stretch cuffs. Adjustable waist with bow. Front pockets. Front zip fastening. Pull-tab detail on the zip', CAST(98.00 AS Decimal(10, 2)), 3, N'images/productImg/jacket1.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (12, N'EMBROIDERED BLAZER', N'Blazer with floral embroidery, round neck and long sleeves. Ribbed collar and cuffs. Front frills. Front zip fastening.', CAST(92.00 AS Decimal(10, 2)), 3, N'images/productImg/jacket2.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (13, N'PAINTED OVERSHIRT', N'Wide overshirt with a shirt collar and long sleeves. Frayed cuffs with slit detail. Front flap pockets. Worn collar and frayed hem details. Prints and embroideries details. Front button placket fastening', CAST(88.00 AS Decimal(10, 2)), 3, N'images/productImg/jacket3.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (14, N'PARKA WITH BACK SEQUINS PRINT', N'Parka with lapel collar and long sleeves. Cuffs with press stud fastening. Front pockets with flap. Side pockets. Back sequins print and embroidery detail. Front press stud fastening.', CAST(120.00 AS Decimal(10, 2)), 3, N'images/productImg/jacket4.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (15, N'JACKET WITH EMBROIDERIES AND STUDS', N'Funnel collar parka with long sleeves. Front and back embroideries with metallic details on the shoulders. Breast pocket with press stud fastening. Front pockets with flap and press stud fastening. Adjustable hem with ribbon. Front zip and press stud placket fastening', CAST(78.00 AS Decimal(10, 2)), 3, N'images/productImg/jacket5.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (16, N'CROPPED LEATHER JACKET', N'Jacket with graffiti print and animal print. Chains and pockets with zip. Neckline with studs and details.', CAST(250.00 AS Decimal(10, 2)), 3, N'images/productImg/jacket6.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (17, N'FRINGED FAUX LEATHER JACKET', N'Jacket with fringe and studs details. Front zipped pockets. Belt with loops', CAST(220.00 AS Decimal(10, 2)), 3, N'images/productImg/jacket7.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (18, N'JACKET WITH METALLIC DETAILS', N'High collar jacket with long sleeves. Cuffs with press stud fastening. Metallic details. Frayed and distressed detail. Front pockets with flap and press stud fastening. Frayed hem. Front zip and press stud placket fastening', CAST(120.00 AS Decimal(10, 2)), 3, N'images/productImg/jacket8.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (19, N'DOUBLE BREASTED JACKET', N'Crossover jacket with lapel collar and long sleeves. Front pockets with flap. Double breasted front detail. Front button fastening.', CAST(130.00 AS Decimal(10, 2)), 4, N'images/productImg/blazer1.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (20, N'PIQUÉ JACKET WITH CONTRASTING PIPING', N'Piqué jacket with contrasting piping. Lapel collar and long sleeves. Front pockets. Back slit at the hem. Front button fastening', CAST(130.00 AS Decimal(10, 2)), 4, N'images/productImg/blazer2.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (21, N'PRINTED JACKET WITH SASH BELT', N'Printed jacket with lapel collar and long sleeves. Contrasting sash belt.
', CAST(155.00 AS Decimal(10, 2)), 4, N'images/productImg/blazer3.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (22, N'VELVET THREE-QUARTER-LENGTH JACKET WITH PEARL BUTTONS', N'Velvet three-quarter-length jacket. High collar and long, full sleeves. Frilled hem. Front pearl buttons detail. Front press stud fastening.', CAST(125.00 AS Decimal(10, 2)), 4, N'images/productImg/blazer4.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (23, N'CROSSOVER FROCK COAT WITH FRILL', N'Crossover frock coat with front frill detail. Round neck and long sleeves. Front pockets. Front press stud fastening.', CAST(95.00 AS Decimal(10, 2)), 4, N'images/productImg/blazer5.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (24, N'TUXEDO STYLE BLAZER', N'Tuxedo collar blazer with shiny lapels and long sleeves with lined buttons on the cuffs. Front pockets detail. Slit on the back of hem. Front lined button fastening.', CAST(88.00 AS Decimal(10, 2)), 4, N'images/productImg/blazer6.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (25, N'ASYMMETRIC HEM JACKET', N'Round neck jacket with long sleeves. Asymmetric frilled hem. Back hem slit. Front zip fastening. Metallic zip detail', CAST(120.00 AS Decimal(10, 2)), 4, N'images/productImg/blazer7.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (26, N'FRAYED CHECKED FROCK COAT', N'Checked frock coat with frayed detail. Front pocket detail. Hook and eye front fastening', CAST(125.00 AS Decimal(10, 2)), 4, N'images/productImg/blazer8.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (27, N'ORIENTAL PRINT BODYSUIT', N'Bodysuit with V-neck and scarf on the neckline. Raglan sleeves with frill.', CAST(45.00 AS Decimal(10, 2)), 5, N'images/productImg/body1.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (28, N'TROPICAL PRINT BODYSUIT', N'Bodysuit with rounded neckline. Long full sleeves.
', CAST(50.00 AS Decimal(10, 2)), 5, N'images/productImg/blazer2.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (29, N'SHINY STRAP BODYSUIT', N'Fitted bodysuit. Thin straps. Chest frill detail. Press stud fastening at the hem.', CAST(32.00 AS Decimal(10, 2)), 5, N'images/productImg/blazer3.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (30, N'SHINY STRAP BODYSUIT', N'Fitted bodysuit. Thin straps. Chest frill detail. Press stud fastening at the hem.', CAST(32.00 AS Decimal(10, 2)), 5, N'images/productImg/blazer4.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (31, N'TULLE BODYSUIT', N'Contrast fabric bodysuit with round neck and long sleeves. Sheer chest and back. Back teardrop opening and button fastening. Fastens at the bottom with press stud.', CAST(48.00 AS Decimal(10, 2)), 5, N'images/productImg/blazer5.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (32, N'STRAPPY TULLE BODYSUIT', N'Tulle bodysuit with thin straps and rounded neckline. Press stud fastening at the hem.', CAST(12.00 AS Decimal(10, 2)), 5, N'images/productImg/blazer6.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (33, N'BODYSUIT WITH TULLE PUFF SLEEVES', N'Contrast fabric bodysuit. Round neck and tulle puff sleeves. Press stud fastening on the ', CAST(28.00 AS Decimal(10, 2)), 5, N'images/productImg/blazer7.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (34, N'STRAPPY TULLE BODYSUIT', N'Tulle bodysuit with thin straps and rounded neckline. Press stud fastening at the hem.', CAST(22.00 AS Decimal(10, 2)), 5, N'images/productImg/blazer8.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (35, N'HIGH WAISTED PATCHES JEANS', N'High-rise jeans with patches detail. Cropped. Five pockets. Front zip and button fastening.', CAST(85.00 AS Decimal(10, 2)), 6, N'images/productImg/jeans1.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (36, N'MID-RISE SKINNY JEANS', N'Skinny jeans with five pockets. Rips and frayed hem.', CAST(78.00 AS Decimal(10, 2)), 6, N'images/productImg/jeans2.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (37, N'HIGH RISE JEANS WITH PRINTED SCRAF', N'High rise jeans with printed scarf and metallic detail. Distressed and ripped detail. Five pockets. Button fastening.', CAST(78.00 AS Decimal(10, 2)), 6, N'images/productImg/jeans3.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (38, N'MID-RISE CAMOUFLAGE PRINTED JEANS', N'Mid-rise jeans. Print and rips detail. Asymmetric hem. Five pockets. Front zip and button fastening.', CAST(78.00 AS Decimal(10, 2)), 6, N'images/productImg/jeans4.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (39, N'MID-RISE JEANS', N'Mid-rise cropped jeans. Frayed detail. Five pockets. Front zip and button fastening.', CAST(78.00 AS Decimal(10, 2)), 6, N'images/productImg/jeans5.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (40, N'PREMIUM COLLECTION BOYFRIEND TROUSERS', N'Mid rise trousers. Front rips and back pocket rips. Metallic button fastening. Frayed hem.', CAST(78.00 AS Decimal(10, 2)), 6, N'images/productImg/jeans6.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (41, N'MOM-FIT TROUSERS', N'High-rise trousers. Frayed leaf embroidery detail.', CAST(78.00 AS Decimal(10, 2)), 6, N'images/productImg/jeans7.jpg')
INSERT [dbo].[Product] ([Id], [Name], [Description], [Price], [CategoryId], [ProductImagePath]) VALUES (42, N'MID-RISE SKINNY JEANS', N'Mid-rise skinny jeans. Cropped hem. Five pockets. Front zip and button fastening.
', CAST(75.00 AS Decimal(10, 2)), 6, N'images/productImg/jeans8.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductReview] ON 

INSERT [dbo].[ProductReview] ([Id], [ProductId], [AspNetUserId], [Rating], [Review], [ReviewDate]) VALUES (1, 2, N'6791523d-9f1d-4263-ac9c-e349c8e2fb81', 4, N'I wore a pair of brand new jeans from zara once, tried them back on and they completed ripped down the leg. Brought them back into the store, and they told me I couldn''t return them without a recipe (i got them as a gift and don''t have the receipt', CAST(N'2015-05-10 15:27:19.833' AS DateTime))
INSERT [dbo].[ProductReview] ([Id], [ProductId], [AspNetUserId], [Rating], [Review], [ReviewDate]) VALUES (3, 2, N'9505b2be-0c99-4baf-aa45-6c04456a8460', 4, N'Very excallanse Dress ', CAST(N'2016-05-10 00:00:00.000' AS DateTime))
INSERT [dbo].[ProductReview] ([Id], [ProductId], [AspNetUserId], [Rating], [Review], [ReviewDate]) VALUES (7, 2, N'9505b2be-0c99-4baf-aa45-6c04456a8460', 3, N'I ordered online on 9 feb valentine gift for my husband but today it''s 17th I dint recieve anything yet.i called to call centre twice they said your order is delay nd u gonna get ur order on 17th.', CAST(N'2017-02-20 23:47:57.673' AS DateTime))
INSERT [dbo].[ProductReview] ([Id], [ProductId], [AspNetUserId], [Rating], [Review], [ReviewDate]) VALUES (8, 2, N'9505b2be-0c99-4baf-aa45-6c04456a8460', 1, N'This is my favorite shopping brand. The stuffs are weekly refreshed and all the items are in vogue. Every time I visit the store, I see all the refreshed stock.', CAST(N'2017-02-20 23:48:34.023' AS DateTime))
INSERT [dbo].[ProductReview] ([Id], [ProductId], [AspNetUserId], [Rating], [Review], [ReviewDate]) VALUES (10, 4, N'6791523d-9f1d-4263-ac9c-e349c8e2fb81', 4, N'the quality of being outstanding or extremely good', CAST(N'2017-02-26 10:38:25.783' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductReview] OFF
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
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_AspNetUsers] FOREIGN KEY([AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_AspNetUsers]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [FK_Cart_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [FK_Cart_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_AspNetUsers] FOREIGN KEY([AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_AspNetUsers]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([OrderStatusId])
REFERENCES [dbo].[OrderStatus] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductReview]  WITH CHECK ADD  CONSTRAINT [FK_ProductReview_AspNetUsers] FOREIGN KEY([AspNetUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ProductReview] CHECK CONSTRAINT [FK_ProductReview_AspNetUsers]
GO
ALTER TABLE [dbo].[ProductReview]  WITH CHECK ADD  CONSTRAINT [FK_ProductReview_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[ProductReview] CHECK CONSTRAINT [FK_ProductReview_Product]
GO
USE [master]
GO
ALTER DATABASE [OnlineStore] SET  READ_WRITE 
GO
