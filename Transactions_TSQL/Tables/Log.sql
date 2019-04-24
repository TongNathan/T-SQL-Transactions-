CREATE TABLE [dbo].[Log]
(
	[OrigAcct] INT NOT NULL, 
    [LogDateTime] DATETIME NOT NULL,
	PRIMARY KEY (OrigAcct, LogDateTime),
    [RecAcct] INT NULL, 
    [Amount] MONEY NOT NULL,
	FOREIGN KEY (OrigAcct) REFERENCES Account(AcctNo),
	FOREIGN KEY (RecAcct) REFERENCES Account(AcctNo)
)
