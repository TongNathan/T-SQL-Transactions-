/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
--IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM Log;
DELETE FROM Account;

INSERT INTO ACCOUNT (AcctNo, Fname, Lname, CreditLimit, Balance) VALUES
(56, 'Nathan', 'Tong', -67, 99),
(97, 'Kyle', 'Garvie', -55, 98);

INSERT INTO LOG (OrigAcct, LogDateTime, RecAcct, Amount) VALUES
(56, CURRENT_TIMESTAMP, 97, 33);

END;
