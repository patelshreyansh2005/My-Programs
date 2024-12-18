USE [Coffee_Shop]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 09-08-2024 07:57:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](100) NOT NULL,
	[HomeAddress] [varchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[MobileNo] [varchar](15) NOT NULL,
	[GSTNo] [varchar](15) NOT NULL,
	[CityName] [varchar](100) NOT NULL,
	[PinCode] [varchar](15) NOT NULL,
	[NetAmount] [decimal](10, 2) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_User]
GO


