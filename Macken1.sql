USE [Macken]
GO
/****** Object:  Table [dbo].[Assortment]    Script Date: 2018-04-05 14:40:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assortment](
	[ID] [int] NOT NULL,
	[Item] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Stock] [int] NULL,
	[ItemCategory] [int] NULL,
 CONSTRAINT [PK_Assortment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CashRegister]    Script Date: 2018-04-05 14:40:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CashRegister](
	[ID] [nchar](10) NOT NULL,
	[CashBalance] [nchar](10) NOT NULL,
 CONSTRAINT [PK_CashRegister] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2018-04-05 14:40:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PhoneNumber] [bigint] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[ICE] [nvarchar](50) NULL,
	[Salary] [float] NULL,
	[Position] [nvarchar](50) NOT NULL,
	[ClosestBoss] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeSchedule]    Script Date: 2018-04-05 14:40:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSchedule](
	[ID] [nchar](10) NOT NULL,
	[Employee] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL,
 CONSTRAINT [PK_EmployeeSchedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fuel]    Script Date: 2018-04-05 14:40:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fuel](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[AmountLeft] [float] NULL,
 CONSTRAINT [PK_Fuel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GasPump]    Script Date: 2018-04-05 14:40:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GasPump](
	[ID] [int] NOT NULL,
	[PayMethod] [int] NOT NULL,
	[Fuel] [int] NOT NULL,
 CONSTRAINT [PK_GasPump] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemCategory]    Script Date: 2018-04-05 14:40:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCategory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ItemCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2018-04-05 14:40:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[PriceSum] [float] NULL,
	[PayMethod] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderRow]    Script Date: 2018-04-05 14:40:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderRow](
	[OrderID] [int] NOT NULL,
	[AssortmentID] [int] NOT NULL,
	[FuelID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderRow] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[AssortmentID] ASC,
	[FuelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayMethod]    Script Date: 2018-04-05 14:40:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayMethod](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PayMethod] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Fuel] ([ID], [Name], [Price], [AmountLeft]) VALUES (1, N'Octane95  ', 14.94, 1000)
INSERT [dbo].[Fuel] ([ID], [Name], [Price], [AmountLeft]) VALUES (2, N'Octane98  ', 15.1, 500)
INSERT [dbo].[Fuel] ([ID], [Name], [Price], [AmountLeft]) VALUES (3, N'Diesel    ', 14.39, 900)
INSERT [dbo].[Fuel] ([ID], [Name], [Price], [AmountLeft]) VALUES (4, N'H2        ', 90, 100)
INSERT [dbo].[Fuel] ([ID], [Name], [Price], [AmountLeft]) VALUES (5, N'Biogas    ', 20, 300)
INSERT [dbo].[Fuel] ([ID], [Name], [Price], [AmountLeft]) VALUES (6, N'Ethanol   ', 14.54, 400)
INSERT [dbo].[Fuel] ([ID], [Name], [Price], [AmountLeft]) VALUES (7, N'Electricity    ', 110.9, 1000)
ALTER TABLE [dbo].[Assortment]  WITH CHECK ADD  CONSTRAINT [FK_Assortment_ItemCategory] FOREIGN KEY([ItemCategory])
REFERENCES [dbo].[ItemCategory] ([ID])
GO
ALTER TABLE [dbo].[Assortment] CHECK CONSTRAINT [FK_Assortment_ItemCategory]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Employees] FOREIGN KEY([ClosestBoss])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Employees]
GO
ALTER TABLE [dbo].[EmployeeSchedule]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeSchedule_Employees] FOREIGN KEY([Employee])
REFERENCES [dbo].[Employees] ([ID])
GO
ALTER TABLE [dbo].[EmployeeSchedule] CHECK CONSTRAINT [FK_EmployeeSchedule_Employees]
GO
ALTER TABLE [dbo].[GasPump]  WITH CHECK ADD  CONSTRAINT [FK_GasPump_Fuel] FOREIGN KEY([Fuel])
REFERENCES [dbo].[Fuel] ([ID])
GO
ALTER TABLE [dbo].[GasPump] CHECK CONSTRAINT [FK_GasPump_Fuel]
GO
ALTER TABLE [dbo].[GasPump]  WITH CHECK ADD  CONSTRAINT [FK_GasPump_PayMethod] FOREIGN KEY([PayMethod])
REFERENCES [dbo].[PayMethod] ([ID])
GO
ALTER TABLE [dbo].[GasPump] CHECK CONSTRAINT [FK_GasPump_PayMethod]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PayMethod] FOREIGN KEY([PayMethod])
REFERENCES [dbo].[PayMethod] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PayMethod]
GO
ALTER TABLE [dbo].[OrderRow]  WITH CHECK ADD  CONSTRAINT [FK_OrderRow_Assortment] FOREIGN KEY([AssortmentID])
REFERENCES [dbo].[Assortment] ([ID])
GO
ALTER TABLE [dbo].[OrderRow] CHECK CONSTRAINT [FK_OrderRow_Assortment]
GO
ALTER TABLE [dbo].[OrderRow]  WITH CHECK ADD  CONSTRAINT [FK_OrderRow_Fuel] FOREIGN KEY([FuelID])
REFERENCES [dbo].[Fuel] ([ID])
GO
ALTER TABLE [dbo].[OrderRow] CHECK CONSTRAINT [FK_OrderRow_Fuel]
GO
ALTER TABLE [dbo].[OrderRow]  WITH CHECK ADD  CONSTRAINT [FK_OrderRow_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderRow] CHECK CONSTRAINT [FK_OrderRow_Order]
GO
