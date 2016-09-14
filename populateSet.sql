drop table dbo.reports_active_accounts;

/****** Object:  Table [dbo].[reports_active_accounts]    Script Date: 02/03/2016 16:28:57 ******/
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
	[FirstPaymentDue] [date] NULL,
	[NextDueDate] [date] NULL,
	[InterestPaidThroughDate] [date] NULL,
	[AgingNextDue] [date] NULL,
	[CashToBorrower] [money] NOT NULL,
	[CashToRefi] [money] NOT NULL,
	[AmountFinanced] [money] NOT NULL,
	[NoteAmount] [money] NOT NULL,
	[FinanceCharge] [money] NOT NULL,
	[NumberOfPayments] [smallint] NOT NULL,
	[InterestRate] [money] NOT NULL,
	[APR] [money] NOT NULL,
	[PaidThruDate] [date] NULL,
	[CurrentBalance] [money] NOT NULL,
	[CollateralCode] [char](2) NULL,
	[AccountStatus] [varchar](25) NULL,
	[PastDueAmount] [money] NULL,
	[LastPaidDate] [date] NULL,
	[LastPaymentAmount] [money] NOT NULL,
	[BKFlag] [smallint] NOT NULL,
	[DateTimeAdded] [date] NULL,
	[PandIPaymentAmount] [money] NOT NULL,
	[LastCalledDate] [datetime] NULL,
	[WhoCalledLast] [varchar](50) NULL,
	[ChargeOffDate] [date] NULL,
	[LegalFlag] [smallint] NOT NULL,
	[ChargeOffFlag] [int] NULL,
	[ChargeOffAmount] [money] NOT NULL,
	[PriorMonthBalance] [money] NOT NULL,
	[AutoDraftIsOn] [smallint] NOT NULL,
	[NextAutoPaymentDue] [varchar](50) NULL,
	[UnderwriterID] [bigint] NOT NULL,
	[debtRatio] [real] NOT NULL,
	[PurposeOfLoan] [varchar](50) NULL,
	[OutsideCollectionAgency] [bigint] NOT NULL,
	[UnearnedAmortizedInterestBalance] [money] NOT NULL,
	[PaidOffAccount] [varchar](25) NULL,
	[BorrowerType] [int] NULL,
	[HowPaidOff] [smallint] NOT NULL,
	[Military] [int] NULL,
	[followupdate] [date] NULL,
	[FICO] [smallint] NULL,
	[TodaysDate] [date] NULL,
	[Borrower] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Pot30] [varchar](50) NULL,
	[Pot60] [varchar](50) NULL,
	[Pot90] [varchar](50) NULL,
	[Pot120] [varchar](50) NULL,
	[ChargeOff] [varchar](50) NULL
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

insert into dbo.reports_active_accounts
(LoanNumber,LoanCategory,Delinquency,DaysLate,CSRID,BranchID,FirstPaymentDue,NextDueDate,InterestPaidThroughDate,AgingNextDue,CashToBorrower,CashToRefi,AmountFinanced,NoteAmount,
FinanceCharge,NumberOfPayments,InterestRate,APR,PaidThruDate,CurrentBalance,CollateralCode,AccountStatus,PastDueAmount,LastPaidDate,LastPaymentAmount,BKFlag,DateTimeAdded,
PandIPaymentAmount,LastCalledDate,WhoCalledLast,ChargeOffDate,LegalFlag,ChargeOffFlag,ChargeOffAmount,PriorMonthBalance,AutoDraftIsOn,NextAutoPaymentDue,UnderwriterID,debtRatio,
PurposeOfLoan,OutsideCollectionAgency,UnearnedAmortizedInterestBalance,PaidOffAccount,BorrowerType,HowPaidOff,Military,followupdate,FICO,TodaysDate,Borrower,Email,
Pot30,Pot60,Pot90,Pot120,ChargeOff)
select '15125251LC' as LoanNumber,'UPC' as LoanCategory,'6. 150 to 180 Days'as Delinquency,	'171' as DaysLate,	'NCUNNINGHAM' AS CSRID,'3' as BranchID,'2015-08-16'as FirstPaymentDue,
'2015-08-16'as NextDueDate,'2015-07-02'as InterestPaidThroughDate,'2015-08-16'as AgingNextDue,'2139.00'as CashToBorrower,'0.00'as CashToRefi,
'2139.00'as AmountFinanced,'2816.82'as	NoteAmount,'677.82'as FinanceCharge,'18'as NumberOfPayments,'34.96'as InterestRate,'34.96'as APR,'2015-07-02'as PaidThruDate,
'2816.82'as	CurrentBalance,'U'as CollateralCode,'NORMAL'as AccountStatus,'938.94'as PastDueAmount,'2015-07-02'as LastPaidDate,	'0.00'as LastPaymentAmount,'0'as BKFlag,
'2015-07-02'as DateTimeAdded,'156.49'as PandIPaymentAmount,'2016-02-03 12:19:00'as	LastCalledDate,''as	WhoCalledLast,'1900-01-01'as ChargeOffDate,
'0'as LegalFlag,'0'as ChargeOffFlag,'0.00'as ChargeOffAmount,'2816.82'as PriorMonthBalance,'0'as AutoDraftIsOn,'NULL'as	NextAutoPaymentDue,'0'as UnderwriterID,'0'as debtRatio,
'Live Check'as PurposeOfLoan,'0'as	OutsideCollectionAgency,'0.00'as UnearnedAmortizedInterestBalance,'NULL'as PaidOffAccount,'0'as	BorrowerType,'0'as	HowPaidOff,'0'as Military,
'1900-01-01' as followupdate,'632'as FICO,'2016-02-03'as TodaysDate,'Johnny Dillard'as	Borrower,'bizzops@setfinancial.com'as Email,
NULL AS Pot30,NULL AS	Pot60, NULL AS Pot90,'2-3-2016'AS Pot120,NULL AS ChargeOff;
