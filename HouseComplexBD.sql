USE [ÈÌß ÁÄ]
GO
/****** Object:  Table [dbo].[Apartaments]    Script Date: 18.11.2021 0:15:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apartaments](
	[ID] [int] NOT NULL,
	[HouseID] [int] NOT NULL,
	[Number] [int] NOT NULL,
	[Area] [float] NULL,
	[CountOfRooms] [int] NULL,
	[Section] [int] NULL,
	[Floor] [int] NULL,
	[IsSold] [bit] NOT NULL,
	[BuildingCost] [money] NOT NULL,
	[ApartmentValueAdded] [int] NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Apartaments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (457, 1, 1, 67.6, 2, 1, 1, 1, 11882000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (458, 1, 2, 79.2, 3, 1, 1, 1, 13925000.0000, 375000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (776, 1, 320, 79.2, 3, 2, 15, 1, 13925000.0000, 375000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (777, 1, 321, 35.4, 1, 2, 15, 1, 7852000.0000, 200000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (778, 1, 322, 35.4, 1, 2, 15, 1, 7852000.0000, 200000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (923, 1, 467, 79.2, 3, 2, 39, 0, 13925000.0000, 375000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (924, 1, 468, 67.6, 2, 2, 39, 1, 11882000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (925, 3, 1, 67.6, 2, 1, 1, 1, 10697000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (926, 3, 2, 79.2, 3, 1, 1, 0, 12558000.0000, 375000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1002, 3, 78, 67.6, 2, 1, 13, 1, 10697000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1003, 3, 79, 67.6, 2, 1, 14, 1, 10697000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1004, 3, 80, 79.2, 3, 1, 14, 1, 12558000.0000, 375000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1005, 3, 81, 35.4, 1, 1, 14, 0, 6900000.0000, 200000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1152, 3, 228, 67.6, 2, 1, 38, 1, 10697000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1153, 3, 229, 67.6, 2, 1, 39, 1, 10697000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1154, 3, 230, 79.2, 3, 1, 39, 1, 12558000.0000, 375000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1410, 3, 486, 67.6, 2, 3, 3, 1, 10697000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1411, 3, 487, 67.6, 2, 3, 4, 0, 10697000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1412, 3, 488, 79.2, 3, 3, 4, 0, 12558000.0000, 375000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1647, 6, 21, 35.4, 1, 1, 4, 1, 7200000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1648, 6, 22, 35.4, 1, 1, 4, 1, 7200000.0000, 300000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1649, 6, 23, 79.7, 3, 1, 4, 0, 12560000.0000, 475000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1836, 6, 210, 68.7, 2, 2, 8, 0, 10854000.0000, 400000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1837, 6, 211, 68.7, 2, 2, 9, 1, 10854000.0000, 400000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1978, 5, 28, 35.4, 1, 1, 5, 0, 8955000.0000, 350000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1979, 5, 29, 79.7, 3, 1, 5, 1, 14432000.0000, 525000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1980, 5, 30, 68.7, 2, 1, 5, 0, 16885000.0000, 450000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (1981, 5, 31, 68.7, 2, 1, 6, 0, 16885000.0000, 450000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2274, 5, 324, 68.7, 2, 2, 27, 0, 16885000.0000, 450000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2275, 8, 1, 68.9, 2, 1, 1, 1, 10975000.0000, 375000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2276, 8, 2, 79.2, 3, 1, 1, 1, 12787000.0000, 420000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2597, 8, 323, 79.2, 3, 2, 27, 1, 14432000.0000, 420000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2598, 8, 324, 68.9, 2, 2, 27, 0, 16885000.0000, 375000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2599, 9, 1, 68.9, 2, 1, 1, 0, 14552000.0000, 420000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2600, 9, 2, 59.1, 3, 1, 1, 0, 11198000.0000, 440000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2787, 9, 189, 39.5, 1, 2, 8, 1, 8196000.0000, 305000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2788, 9, 190, 39.5, 1, 2, 8, 1, 8196000.0000, 305000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2923, 10, 37, 65.5, 2, 2, 1, 0, 7731000.0000, 650000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2924, 10, 38, 40.6, 1, 2, 1, 0, 5850000.0000, 390000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (2925, 10, 39, 40.6, 1, 2, 1, 0, 5850000.0000, 390000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (3405, 11, 91, 40.9, 1, 3, 5, 0, 5955000.0000, 350000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (3406, 11, 92, 62.7, 2, 3, 5, 1, 7453000.0000, 450000, 0)
GO
INSERT [dbo].[Apartaments] ([ID], [HouseID], [Number], [Area], [CountOfRooms], [Section], [Floor], [IsSold], [BuildingCost], [ApartmentValueAdded], [IsDeleted]) VALUES (3407, 11, 93, 63.3, 2, 3, 6, 0, 7453000.0000, 450000, 0)
GO
ALTER TABLE [dbo].[Apartaments]  WITH CHECK ADD  CONSTRAINT [FK_Apartaments_House] FOREIGN KEY([HouseID])
REFERENCES [dbo].[House] ([ID])
GO
ALTER TABLE [dbo].[Apartaments] CHECK CONSTRAINT [FK_Apartaments_House]
GO
