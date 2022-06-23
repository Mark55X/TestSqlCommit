USE [RFID2022_OLD]
GO
/****** Object:  Table [web].[Sms]    Script Date: 23/06/2022 10:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [web].[Sms](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[MobileNumber] [varchar](50) NULL,
	[TextMessage] [varchar](2000) NULL,
	[SendDate] [datetime] NULL,
	[SentDate] [datetime] NULL,
	[SentResult] [varchar](50) NULL,
	[SentFeedback] [varchar](2000) NULL,
 CONSTRAINT [PK_Sms1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
