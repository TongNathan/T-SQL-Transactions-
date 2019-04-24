CREATE TABLE [dbo].[Account]
(
	[AcctNo] INT NOT NULL PRIMARY KEY, 
    [Fname] NVARCHAR(50) NOT NULL, 
    [Lname] NVARCHAR(50) NOT NULL,
	[Fullname] AS CONCAT (Fname, ' ', Lname),
    [CreditLimit] MONEY NULL CONSTRAINT ConstraintCreditLimit CHECK (CreditLimit<0),  
    [Balance] MONEY NULL CONSTRAINT ConstraintBalance CHECK (Balance >CreditLimit)
)
