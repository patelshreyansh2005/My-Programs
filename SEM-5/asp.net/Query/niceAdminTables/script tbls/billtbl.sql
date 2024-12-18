USE [Coffee_Shop]
GO

/****** Object:  Table [dbo].[Bills]    Script Date: 09-08-2024 07:57:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Bills](
	[BillID] [int] IDENTITY(1,1) NOT NULL,
	[BillNumber] [varchar](100) NOT NULL,
	[BillDate] [datetime] NOT NULL,
	[OrderID] [int] NOT NULL,
	[TotalAmount] [decimal](10, 2) NOT NULL,
	[Discount] [decimal](10, 2) NULL,
	[NetAmount] [decimal](10, 2) NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO

ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_Order]
GO

ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO

ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_User]
GO


-----------------------




