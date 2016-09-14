/****** Object:  Table [dbo].[reports_active_accounts]    Script Date: 02/03/2016 15:42:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[reports_active_accounts](
	[LoanNumber] [varchar](25) NOT NULL,
	[LoanCategory] [varchar](3) NULL,
	[Delinquency] [varchar](25) NOT NULL,
	[DaysLate] [int] NULL,
	[CSRID] [varchar](50) NULL,
	[BranchID] [int] NOT NULL,
	[FirstPaymentDue] [smalldatetime] NULL,
	[NextDueDate] [smalldatetime] NULL,
	[InterestPaidThroughDate] [smalldatetime] NULL,
	[AgingNextDue] [smalldatetime] NULL,
	[CashToBorrower] [money] NOT NULL,
	[CashToRefi] [money] NOT NULL,
	[AmountFinanced] [money] NOT NULL,
	[NoteAmount] [money] NOT NULL,
	[FinanceCharge] [money] NOT NULL,
	[NumberOfPayments] [smallint] NOT NULL,
	[InterestRate] [money] NOT NULL,
	[APR] [money] NOT NULL,
	[PaidThruDate] [smalldatetime] NULL,
	[CurrentBalance] [money] NOT NULL,
	[CollateralCode] [char](2) NULL,
	[AccountStatus] [varchar](25) NULL,
	[PastDueAmount] [money] NULL,
	[LastPaidDate] [smalldatetime] NULL,
	[LastPaymentAmount] [money] NOT NULL,
	[BKFlag] [smallint] NOT NULL,
	[DateTimeAdded] [datetime] NULL,
	[PandIPaymentAmount] [money] NOT NULL,
	[LastCalledDate] [smalldatetime] NULL,
	[WhoCalledLast] [varchar](50) NULL,
	[ChargeOffDate] [smalldatetime] NULL,
	[LegalFlag] [smallint] NOT NULL,
	[ChargeOffFlag] [int] NULL,
	[ChargeOffAmount] [money] NOT NULL,
	[PriorMonthBalance] [money] NOT NULL,
	[AutoDraftIsOn] [smallint] NOT NULL,
	[NextAutoPaymentDue] [smalldatetime] NULL,
	[UnderwriterID] [bigint] NOT NULL,
	[debtRatio] [real] NOT NULL,
	[PurposeOfLoan] [varchar](50) NULL,
	[OutsideCollectionAgency] [bigint] NOT NULL,
	[UnearnedAmortizedInterestBalance] [money] NOT NULL,
	[PaidOffAccount] [varchar](25) NULL,
	[BorrowerType] [int] NULL,
	[HowPaidOff] [smallint] NOT NULL,
	[Military] [int] NULL,
	[followupdate] [smalldatetime] NULL,
	[FICO] [smallint] NULL,
	[TodaysDate] [smalldatetime] NULL,
	[Borrower] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Pot30] [smalldatetime] NULL,
	[Pot60] [smalldatetime] NULL,
	[Pot90] [smalldatetime] NULL,
	[Pot120] [smalldatetime] NULL,
	[ChargeOff] [smalldatetime] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING ON
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_TypeOfLoan]  DEFAULT ((0)) FOR [Delinquency]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_CSRID]  DEFAULT ((0)) FOR [CSRID]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_BranchID]  DEFAULT ((0)) FOR [BranchID]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_CashToBorrower]  DEFAULT ((0)) FOR [CashToBorrower]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_CashToRefi]  DEFAULT ((0)) FOR [CashToRefi]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_AmountFinanced]  DEFAULT ((0)) FOR [AmountFinanced]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_NoteAmount]  DEFAULT ((0)) FOR [NoteAmount]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_FinanceCharge]  DEFAULT ((0)) FOR [FinanceCharge]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_NumberOfPayments]  DEFAULT ((0)) FOR [NumberOfPayments]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_InterestRate]  DEFAULT ((0)) FOR [InterestRate]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_APR]  DEFAULT ((0)) FOR [APR]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_CurrentBalance]  DEFAULT ((0)) FOR [CurrentBalance]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_LastPaymentAmount]  DEFAULT ((0)) FOR [LastPaymentAmount]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_BKFlag]  DEFAULT ((0)) FOR [BKFlag]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_PandIPaymentAmount]  DEFAULT ((0)) FOR [PandIPaymentAmount]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_LegalFlag]  DEFAULT ((0)) FOR [LegalFlag]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_ChargeOffAmount]  DEFAULT ((0)) FOR [ChargeOffAmount]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_PriorMonthBalance]  DEFAULT ((0)) FOR [PriorMonthBalance]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_AutoDraftIsOn]  DEFAULT ((0)) FOR [AutoDraftIsOn]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_UnderwriterID]  DEFAULT ((0)) FOR [UnderwriterID]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_debtRatio]  DEFAULT ((0)) FOR [debtRatio]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_OutsideCollectionAgency]  DEFAULT ((0)) FOR [OutsideCollectionAgency]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_UnearnedAmortizedInterestBalance]  DEFAULT ((0)) FOR [UnearnedAmortizedInterestBalance]
GO

ALTER TABLE [dbo].[reports_active_accounts] ADD  CONSTRAINT [DF_reports_active_accounts_HowPaidOff]  DEFAULT ((0)) FOR [HowPaidOff]
GO

