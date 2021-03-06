CREATE DATABASE [MachineTestDB];
go
USE [MachineTestDB]
GO
/****** Object:  Table [dbo].[ProductentryformDB]    Script Date: 06/05/2020 20:01:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductentryformDB](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[IsGSTApplicable] [bit] NULL,
	[Purchase_Date] [datetime] NULL,
	[Expiry_date] [datetime] NULL,
	[Color_Id] [int] NULL,
 CONSTRAINT [PK_ProductentryformDB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Color_Master]    Script Date: 06/05/2020 20:01:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Color_Master](
	[Color_Id] [int] IDENTITY(1,1) NOT NULL,
	[Color_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Color_Master] PRIMARY KEY CLUSTERED 
(
	[Color_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Color_Master] ON
INSERT [dbo].[Color_Master] ([Color_Id], [Color_Name]) VALUES (1, N'Red')
INSERT [dbo].[Color_Master] ([Color_Id], [Color_Name]) VALUES (2, N'Green')
INSERT [dbo].[Color_Master] ([Color_Id], [Color_Name]) VALUES (3, N'Yellow')
INSERT [dbo].[Color_Master] ([Color_Id], [Color_Name]) VALUES (4, N'Blue')
INSERT [dbo].[Color_Master] ([Color_Id], [Color_Name]) VALUES (5, N'Purple')
SET IDENTITY_INSERT [dbo].[Color_Master] OFF
