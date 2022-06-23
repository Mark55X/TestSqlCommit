USE [RFID2022_OLD]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Widgets](
	[Id] [varchar](200) NOT NULL,
	[Description] [varchar](150) NULL,
	[WidgetType] [varchar](50) NULL,
	[LayerIndex] [int] NULL,
	[DragEnabled] [bit] NULL,
	[ResizeEnabled] [bit] NULL,
	[CompactEnabled] [bit] NULL,
	[MaxItemRows] [int] NULL,
	[MinItemRows] [int] NULL,
	[MaxItemCols] [int] NULL,
	[MinItemCols] [int] NULL,
	[MinItemArea] [int] NULL,
	[MaxItemArea] [int] NULL,
	[HasContent] [bit] NULL,
	[SupportedDeviceType] [varchar](20) NULL,
	[RouteComponentId] [varchar](200) NULL,
	[DataType] [varchar](50) NULL,
	[CreationDate] [datetime] NULL,
	[CreationUser] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[LastModifiedUser] [int] NULL,
 CONSTRAINT [PK_Widgets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [web].[Widgets] ADD  CONSTRAINT [DF_Widgets_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
