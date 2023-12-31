USE [ReceiptsWpf]
GO
/****** Object:  Table [dbo].[Ingridient]    Script Date: 26.05.2023 14:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingridient](
	[IngridientId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Ingridient] PRIMARY KEY CLUSTERED 
(
	[IngridientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receipt]    Script Date: 26.05.2023 14:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receipt](
	[ReceiptId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](500) NULL,
 CONSTRAINT [PK_Receipt] PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReceiptIngridient]    Script Date: 26.05.2023 14:34:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReceiptIngridient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Receipt] [int] NOT NULL,
	[Ingridient] [int] NOT NULL,
	[Count] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_ReceiptIngridient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ingridient] ON 

INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (1, N'Сахар')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (2, N'Куриное яйцо')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (3, N'Пшеничная мука')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (4, N'Яблоко')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (5, N'Разрыхлитель')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (6, N'Растительное масло')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (7, N'Молоко')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (8, N'Соль')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (9, N'Картофель')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (10, N'Морковь')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (11, N'Маринованные огурцы')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (12, N'Консервированный зеленый горошек')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (13, N'Докторская колбаса')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (14, N'Сметана')
INSERT [dbo].[Ingridient] ([IngridientId], [Name]) VALUES (15, N'Майонез')
SET IDENTITY_INSERT [dbo].[Ingridient] OFF
GO
SET IDENTITY_INSERT [dbo].[Receipt] ON 

INSERT [dbo].[Receipt] ([ReceiptId], [Name], [Description], [Image]) VALUES (3, N'Классическая шарлотка', N'Классическая шарлотка. Важное сладкое блюдо советской и постсоветской истории. Легкое, пышное тесто, максимум яблочной начинки — у шарлотки всегда был образ приятного, простого и при этом лакомого и диетического блюда. Яблоки настоятельно рекомендуем взять из кислых сортов — вроде антоновки. Их можно класть как сырыми, так и предварительно слегка карамелизованными на сковородке. И сахара лучше не жалеть. Он магическим образом распределяется в нужном количестве в тесте, а излишки образуют сладкую корочку.', N'apple_pie.png')
INSERT [dbo].[Receipt] ([ReceiptId], [Name], [Description], [Image]) VALUES (5, N'Тонкие блины на молоке', N'Тонкие блины на молоке — это английский вариант традиционных пышных русских блинов, выпеченных на дрожжах. В Европе блинчики имеют вид тонких, почти прозрачных салфеток. Во Франции их называют «крепы» и подают с сотней разнообразных начинок. Никаких особых уловок в приготовлении нет: чем более жидкое тесто, тем тоньше получается блинчики. Ажурный вариант, в дырочку, получится, если часть молока из рецепта добавить в тесто немного горячим. Перед тем как залить первый блин, следует хорошо прокалить сковороду. Блинчик готов, когда он начинает зарумяниваться до хрустящих краев.', N'blyn.png')
INSERT [dbo].[Receipt] ([ReceiptId], [Name], [Description], [Image]) VALUES (6, N'Оливье по-советски', N'Первым опубликовал рецепт оливье журнал «Наша пища» в 1894 году. Та версия предполагала наличие в составе рябчиков и каперсов. В следующих вариантах (1913 и 1984 годов) появляются салат-латук и соус соя-кабуль (пикантная заправка на основе мясного бульона, уксуса и различных овощей и кореньев). Но питание гражданина Советского Союза не предполагало таких дорогих и редких ингредиентов, так что постепенно рябчиков вытеснила докторская колбаса, каперсы — соленые огурцы, а сою-кабуль — соус «Провансаль». Так и появился этот базовый рецепт — оливье по-советски, — на основе которого готовим его все мы.', N'ussr_olive.png')
SET IDENTITY_INSERT [dbo].[Receipt] OFF
GO
SET IDENTITY_INSERT [dbo].[ReceiptIngridient] ON 

INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (3, 3, 1, N'1 стакан')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (4, 3, 2, N'5 шт.')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (5, 3, 3, N'1 стакан')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (6, 3, 4, N'7 штук')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (7, 3, 6, N'1 ст. ложка')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (9, 3, 5, N'1/2 ч. ложка')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (12, 5, 3, N'400 г.')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (13, 5, 1, N'2 ст. ложки')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (14, 5, 2, N'5 штук')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (15, 5, 7, N'1 литр')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (16, 5, 8, N'На кончике ножа')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (17, 5, 6, N'2 ст. ложки')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (18, 6, 9, N'650 г.')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (19, 6, 10, N'450 г.')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (20, 6, 11, N'200 г.')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (21, 6, 12, N'1 банка')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (22, 6, 2, N'6 штук')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (23, 6, 13, N'500 г.')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (24, 6, 14, N'100 г.')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (25, 6, 15, N'200 г.')
INSERT [dbo].[ReceiptIngridient] ([Id], [Receipt], [Ingridient], [Count]) VALUES (26, 6, 8, N'по вкусу')
SET IDENTITY_INSERT [dbo].[ReceiptIngridient] OFF
GO
ALTER TABLE [dbo].[ReceiptIngridient]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptIngridient_Ingridient] FOREIGN KEY([Ingridient])
REFERENCES [dbo].[Ingridient] ([IngridientId])
GO
ALTER TABLE [dbo].[ReceiptIngridient] CHECK CONSTRAINT [FK_ReceiptIngridient_Ingridient]
GO
ALTER TABLE [dbo].[ReceiptIngridient]  WITH CHECK ADD  CONSTRAINT [FK_ReceiptIngridient_Receipt] FOREIGN KEY([Receipt])
REFERENCES [dbo].[Receipt] ([ReceiptId])
GO
ALTER TABLE [dbo].[ReceiptIngridient] CHECK CONSTRAINT [FK_ReceiptIngridient_Receipt]
GO
