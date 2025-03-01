USE [TihonovRequests]
GO
/****** Object:  Table [dbo].[Defect]    Script Date: 04.10.2024 10:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Defect](
	[DefectID] [int] IDENTITY(1,1) NOT NULL,
	[DefectName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Defect] PRIMARY KEY CLUSTERED 
(
	[DefectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Device]    Script Date: 04.10.2024 10:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Device](
	[DeviceID] [int] IDENTITY(1,1) NOT NULL,
	[DeviceName] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Device] PRIMARY KEY CLUSTERED 
(
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priory]    Script Date: 04.10.2024 10:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priory](
	[PrioryID] [int] IDENTITY(1,1) NOT NULL,
	[PrioryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Priory] PRIMARY KEY CLUSTERED 
(
	[PrioryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Request]    Script Date: 04.10.2024 10:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Request](
	[RequestID] [int] IDENTITY(1,1) NOT NULL,
	[RequestDate] [date] NOT NULL,
	[RequestDeviceID] [int] NOT NULL,
	[RequestDefectID] [int] NOT NULL,
	[RequestClientID] [int] NOT NULL,
	[RequestDescription] [nvarchar](500) NOT NULL,
	[RequestStatusID] [int] NOT NULL,
	[RequestMasterID] [int] NOT NULL,
	[RequestTime] [int] NOT NULL,
	[RequestPrioryID] [int] NOT NULL,
	[RequestStageID] [int] NOT NULL,
	[RequestComment] [nvarchar](500) NULL,
 CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED 
(
	[RequestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 04.10.2024 10:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stage]    Script Date: 04.10.2024 10:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stage](
	[StageID] [int] IDENTITY(1,1) NOT NULL,
	[StageName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Stage] PRIMARY KEY CLUSTERED 
(
	[StageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 04.10.2024 10:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04.10.2024 10:00:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(101,1) NOT NULL,
	[UserFullName] [nvarchar](150) NOT NULL,
	[UserLogin] [varchar](50) NOT NULL,
	[UserPassword] [varchar](50) NOT NULL,
	[UserRoleID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Defect] ON 

INSERT [dbo].[Defect] ([DefectID], [DefectName]) VALUES (1, N'Механическая')
INSERT [dbo].[Defect] ([DefectID], [DefectName]) VALUES (2, N'Электрическая')
INSERT [dbo].[Defect] ([DefectID], [DefectName]) VALUES (3, N'Ошибки эксплуатации')
INSERT [dbo].[Defect] ([DefectID], [DefectName]) VALUES (4, N'Программная')
INSERT [dbo].[Defect] ([DefectID], [DefectName]) VALUES (5, N'Ненадлежащее обслуживание')
SET IDENTITY_INSERT [dbo].[Defect] OFF
GO
SET IDENTITY_INSERT [dbo].[Device] ON 

INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (1, N'Токарный станок АП567')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (2, N'Фрезерный станок 12')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (3, N'Расточный станок ТИ90')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (4, N'Расточный станок ОР99')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (5, N'Расточный станок 55')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (6, N'Токарный станок ОР788')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (7, N'Сверлильный станок ВТ567')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (8, N'Лазерный станок для резки металла')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (9, N'Гибочный станок ВА34')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (10, N'Фрезерный станок 124')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (11, N'Фрезерный станок 45')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (12, N'Фрезерный станок ВА44')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (13, N'Фрезерный станок 766')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (14, N'Шлифовальный станок')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (15, N'Шлифовальный станок 66')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (16, N'Гибочный станок СМ44')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (17, N'Расточный станок СМИ56')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (18, N'Гибочный станок ВА35')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (19, N'Токарный станок ЛОР')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (20, N'Токарный станок')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (21, N'Плазменный станок ПС567')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (22, N'Шлифовальный станок РП77')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (23, N'Фрезерный станок 77')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (24, N'Токарный станок ФЫ567')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (25, N'Лазерный станок для резки металла ПА56')
INSERT [dbo].[Device] ([DeviceID], [DeviceName]) VALUES (26, N'Фрезерный станок РП77')
SET IDENTITY_INSERT [dbo].[Device] OFF
GO
SET IDENTITY_INSERT [dbo].[Priory] ON 

INSERT [dbo].[Priory] ([PrioryID], [PrioryName]) VALUES (1, N'Низкий')
INSERT [dbo].[Priory] ([PrioryID], [PrioryName]) VALUES (2, N'Высокий')
INSERT [dbo].[Priory] ([PrioryID], [PrioryName]) VALUES (3, N'Средний')
SET IDENTITY_INSERT [dbo].[Priory] OFF
GO
SET IDENTITY_INSERT [dbo].[Request] ON 

INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (1, CAST(N'2023-03-12' AS Date), 1, 1, 125, N'Износ элементов конструкции', 1, 105, 60, 1, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (2, CAST(N'2023-03-13' AS Date), 2, 2, 126, N'Нарушение в электрических цепях', 2, 110, 120, 1, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (3, CAST(N'2023-03-14' AS Date), 3, 3, 127, N'Износ деталей', 3, 105, 180, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (4, CAST(N'2023-03-15' AS Date), 4, 4, 128, N'Ошибки в работе управляещего ПО', 3, 105, 180, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (5, CAST(N'2023-03-16' AS Date), 5, 1, 129, N'Внешние признаки неработоспособности', 3, 119, 180, 1, 1, N'Ремонт полность выполнен без дополниетльных запчастей')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (6, CAST(N'2023-03-17' AS Date), 5, 1, 131, N'Появление дыма при работе', 1, 106, 60, 2, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (7, CAST(N'2023-03-18' AS Date), 6, 1, 131, N'Поломка механических деталей конструкции', 3, 137, 180, 2, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (8, CAST(N'2023-03-19' AS Date), 7, 1, 101, N'Посторонние шумы', 3, 105, 180, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (9, CAST(N'2023-03-20' AS Date), 8, 2, 101, N'Нарушения в электрических компонентах', 3, 137, 180, 1, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (10, CAST(N'2023-03-21' AS Date), 9, 3, 102, N'Ошибки монтажа', 3, 146, 180, 3, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (11, CAST(N'2023-03-22' AS Date), 10, 5, 102, N'Попадание грязи и влаги', 3, 119, 180, 2, 1, N'Потребовались дополнительные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (12, CAST(N'2023-03-23' AS Date), 11, 2, 102, N'Нарушения в электрических соединениях', 2, 115, 120, 1, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (13, CAST(N'2023-03-24' AS Date), 9, 2, 107, N'Нарушения в электрических соединениях', 3, 119, 180, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (14, CAST(N'2023-03-25' AS Date), 8, 4, 107, N'Ошибки в работе прошивок', 3, 106, 180, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (15, CAST(N'2023-03-26' AS Date), 12, 4, 131, N'Ошибки в работе управляещего ПО', 3, 106, 180, 2, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (16, CAST(N'2023-03-27' AS Date), 13, 5, 107, N'Попадание грязи и влаги', 1, 137, 60, 1, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (17, CAST(N'2023-03-28' AS Date), 9, 1, 116, N'Износ элементов конструкции', 2, 110, 120, 3, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (18, CAST(N'2023-03-29' AS Date), 14, 1, 101, N'Износ элементов конструкции', 2, 110, 120, 3, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (19, CAST(N'2023-03-30' AS Date), 5, 3, 117, N'Износ деталей', 1, 146, 60, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (20, CAST(N'2023-03-31' AS Date), 15, 1, 116, N'Поломка механических деталей конструкции', 1, 137, 60, 1, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (21, CAST(N'2023-04-01' AS Date), 16, 3, 134, N'Ошибки монтажа', 3, 106, 180, 1, 1, N'Ремонт полность выполнен без дополниетльных запчастей')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (22, CAST(N'2023-04-02' AS Date), 17, 3, 118, N'Воздействие вредных факторов среды', 3, 137, 180, 2, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (23, CAST(N'2023-04-03' AS Date), 18, 2, 111, N'Нарушения в электрических компонентах', 3, 137, 180, 1, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (24, CAST(N'2023-04-04' AS Date), 18, 5, 145, N'Ошибки проектирования', 3, 105, 180, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (25, CAST(N'2023-04-05' AS Date), 19, 1, 116, N'Внешние признаки неработоспособности', 2, 137, 120, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (26, CAST(N'2023-04-06' AS Date), 5, 5, 145, N'Воздействие вредных факторов среды', 2, 146, 120, 3, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (27, CAST(N'2023-04-07' AS Date), 16, 2, 150, N'Нарушение в электрических цепях', 3, 105, 180, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (28, CAST(N'2023-04-08' AS Date), 18, 1, 134, N'Появление дыма при работе', 3, 105, 180, 3, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (29, CAST(N'2023-04-09' AS Date), 15, 1, 116, N'Поломка механических деталей конструкции', 3, 146, 180, 2, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (30, CAST(N'2023-04-10' AS Date), 20, 1, 117, N'Поломка механических деталей конструкции', 2, 105, 120, 3, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (31, CAST(N'2023-04-11' AS Date), 21, 5, 117, N'Загрязнение деталей', 3, 119, 180, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (32, CAST(N'2023-04-12' AS Date), 18, 4, 111, N'Ошибки в работе управляещего ПО', 1, 115, 60, 3, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (33, CAST(N'2023-04-13' AS Date), 22, 4, 134, N'Ошибки в работе прошивок', 3, 115, 180, 2, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (34, CAST(N'2023-04-14' AS Date), 7, 5, 117, N'Загрязнение деталей', 1, 137, 60, 3, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (35, CAST(N'2023-04-15' AS Date), 18, 5, 117, N'Загрязнение деталей', 2, 106, 120, 3, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (36, CAST(N'2023-04-02' AS Date), 23, 2, 145, N'Нарушение в электрических цепях', 2, 137, 120, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (37, CAST(N'2023-04-03' AS Date), 18, 2, 118, N'Нарушение в электрических цепях', 2, 110, 120, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (38, CAST(N'2023-04-04' AS Date), 21, 1, 134, N'Износ элементов конструкции', 3, 137, 180, 2, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (39, CAST(N'2023-04-05' AS Date), 15, 1, 145, N'Износ элементов конструкции', 2, 137, 120, 1, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (40, CAST(N'2023-04-06' AS Date), 15, 1, 118, N'Посторонние шумы', 1, 105, 60, 2, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (41, CAST(N'2023-04-07' AS Date), 24, 1, 145, N'Появление дыма при работе', 3, 146, 180, 1, 3, N'Отсутствуют необходимые инностранные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (42, CAST(N'2023-04-08' AS Date), 21, 3, 145, N'Износ деталей', 2, 115, 120, 1, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (43, CAST(N'2023-04-09' AS Date), 16, 2, 117, N'Нарушения в электрических соединениях', 3, 105, 180, 1, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (44, CAST(N'2023-04-01' AS Date), 5, 1, 145, N'Поломка механических деталей конструкции', 2, 105, 120, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (45, CAST(N'2023-04-02' AS Date), 16, 5, 117, N'Загрязнение деталей', 3, 137, 180, 1, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (46, CAST(N'2023-04-03' AS Date), 25, 2, 145, N'Нарушения в электрических компонентах', 3, 110, 180, 2, 2, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (47, CAST(N'2023-04-04' AS Date), 21, 2, 111, N'Нарушение в электрических цепях', 3, 106, 180, 3, 1, N'Потребовались дополнительные запчасти')
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (48, CAST(N'2023-04-05' AS Date), 26, 5, 134, N'Загрязнение деталей', 1, 137, 60, 2, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (49, CAST(N'2023-04-06' AS Date), 25, 4, 145, N'Ошибки в работе управляещего ПО', 3, 115, 180, 3, 1, NULL)
INSERT [dbo].[Request] ([RequestID], [RequestDate], [RequestDeviceID], [RequestDefectID], [RequestClientID], [RequestDescription], [RequestStatusID], [RequestMasterID], [RequestTime], [RequestPrioryID], [RequestStageID], [RequestComment]) VALUES (50, CAST(N'2023-04-07' AS Date), 5, 1, 118, N'Посторонние шумы', 3, 105, 180, 2, 1, NULL)
SET IDENTITY_INSERT [dbo].[Request] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Заказчик')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Мастер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Оператор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Stage] ON 

INSERT [dbo].[Stage] ([StageID], [StageName]) VALUES (1, N'Выполнено')
INSERT [dbo].[Stage] ([StageID], [StageName]) VALUES (2, N'В работе')
INSERT [dbo].[Stage] ([StageID], [StageName]) VALUES (3, N'Не выполнено')
SET IDENTITY_INSERT [dbo].[Stage] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (1, N'В ожидании')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (2, N'В работе')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (3, N'Выполнено')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (101, N'Ефремов Сергей Пантелеймонович', N'loginDEppn2018', N'6}i+FD', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (102, N'Родионова Тамара Валентиновна', N'loginDElqb2018', N'RNynil', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (103, N'Миронова Галина Улебовна', N'loginDEydn2018', N'34I}X9', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (104, N'Сидоров Роман Иринеевич', N'loginDEijg2018', N'4QlKJW', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (105, N'Ситников Парфений Всеволодович', N'loginDEdpy2018', N'MJ0W|f', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (106, N'Никонов Роман Геласьевич', N'loginDEwdm2018', N'&PynqU', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (107, N'Щербаков Владимир Матвеевич', N'loginDEdup2018', N'JM+2{s', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (108, N'Кулаков Мартын Михаилович', N'loginDEhbm2018', N'9aObu4', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (109, N'Сазонова Оксана Лаврентьевна', N'loginDExvq2018', N'hX0wJz', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (110, N'Архипов Варлам Мэлорович', N'loginDErks2018', N'LQNSjo', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (111, N'Устинова Ираида Мэлоровна', N'loginDErvb2018', N'ceAf&R', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (112, N'Лукин Георгий Альбертович', N'loginDEulo2018', N'fg56DRgh', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (113, N'Кононов Эдуард Валентинович', N'loginDEgfw2018', N'3c2Ic1', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (114, N'Орехова Клавдия Альбертовна', N'loginDEmxb2018', N'ZPXcRS', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (115, N'Яковлев Яков Эдуардович', N'loginDEgeq2018', N'&&Eim0', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (116, N'Воронов Мэлс Семёнович', N'loginDEkhj2018', N'Pbc0t{', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (117, N'Вишнякова Ия Данииловна', N'loginDEliu2018', N'32FyTl', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (118, N'Третьяков Фёдор Вадимович', N'loginDEsmf2018', N'{{O2QG', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (119, N'Макаров Максим Ильяович', N'loginDEutd2018', N'GbcJvC', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (120, N'Шубина Маргарита Анатольевна', N'loginDEpgh2018', N'YV2lvh', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (121, N'Блинова Ангелина Владленовна', N'loginDEvop2018', N'pBP8rO', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (122, N'Воробьёв Владлен Фролович', N'loginDEwjo2018', N'EQaD|d', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (123, N'Сорокина Прасковья Фёдоровна', N'loginDEbur2018', N'aZKGeI', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (124, N'Давыдов Яков Антонович', N'loginDEszw2018', N'EGU{YE', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (125, N'Рыбакова Евдокия Анатольевна', N'loginDExsu2018', N'*2RMsp', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (126, N'Маслов Геннадий Фролович', N'loginDEztn2018', N'nJBZpU', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (127, N'Цветкова Элеонора Аристарховна', N'loginDEtmn2018', N'UObB}N', 4)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (128, N'Евдокимов Ростислав Александрович', N'loginDEhep2018', N'SwRicr', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (129, N'Никонова Венера Станиславовна', N'loginDEevr2018', N'zO5l}l', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (130, N'Громов Егор Антонович', N'loginDEnpa2018', N'M*QLjf', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (131, N'Суворова Валерия Борисовна', N'loginDEgyt2018', N'Pav+GP', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (132, N'Мишина Елизавета Романовна', N'loginDEbrr2018', N'Z7L|+i', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (133, N'Зимина Ольга Аркадьевна', N'loginDEyoo2018', N'UG1BjP', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (134, N'Игнатьев Игнатий Антонинович', N'loginDEaob2018', N'3fy+3I', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (135, N'Пахомова Зинаида Витальевна', N'loginDEwtz2018', N'&GxSST', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (136, N'Устинов Владимир Федосеевич', N'loginDEctf2018', N'sjt*3N', 3)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (137, N'Кулаков Мэлор Вячеславович', N'loginDEipm2018', N'MAZl6|', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (138, N'Сазонов Авксентий Брониславович', N'loginDEjoi2018', N'o}C4jv', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (139, N'Бурова Наина Брониславовна', N'loginDEwap2018', N'4hny7k', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (140, N'Фадеев Демьян Федосеевич', N'loginDEaxm2018', N'BEc3xq', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (141, N'Бобылёва Дарья Якуновна', N'loginDEsmq2018', N'ATVmM7', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (142, N'Виноградов Созон Арсеньевич', N'loginDEeur2018', N'n4V{wP', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (143, N'Гордеев Владлен Ефимович', N'loginDEvke2018', N'WQLXSl', 4)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (144, N'Иванова Зинаида Валерьевна', N'loginDEvod2018', N'0EW93v', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (145, N'Гусев Руслан Дамирович', N'loginDEjaw2018', N'h6z&Ky', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (146, N'Маслов Дмитрий Иванович', N'loginDEpdp2018', N'8NvRfC', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (147, N'Антонова Ульяна Семёновна', N'loginDEjpp2018', N'oMOQq3', 1)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (148, N'Орехова Людмила Владимировна', N'loginDEkiy2018', N'BQzsts', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (149, N'Авдеева Жанна Куприяновна', N'loginDEhmn2018', N'a|Iz|7', 2)
INSERT [dbo].[User] ([UserID], [UserFullName], [UserLogin], [UserPassword], [UserRoleID]) VALUES (150, N'Кузнецов Фрол Варламович', N'loginDEfmn2018', N'cw3|03', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Defect] FOREIGN KEY([RequestDefectID])
REFERENCES [dbo].[Defect] ([DefectID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Defect]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Device] FOREIGN KEY([RequestDeviceID])
REFERENCES [dbo].[Device] ([DeviceID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Device]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Priory] FOREIGN KEY([RequestPrioryID])
REFERENCES [dbo].[Priory] ([PrioryID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Priory]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Stage] FOREIGN KEY([RequestStageID])
REFERENCES [dbo].[Stage] ([StageID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Stage]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_Status] FOREIGN KEY([RequestStatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_Status]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_User] FOREIGN KEY([RequestClientID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_User]
GO
ALTER TABLE [dbo].[Request]  WITH CHECK ADD  CONSTRAINT [FK_Request_User1] FOREIGN KEY([RequestMasterID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Request] CHECK CONSTRAINT [FK_Request_User1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
