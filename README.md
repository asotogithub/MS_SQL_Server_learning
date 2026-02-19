# MS_SQL_Server_learning
For all scripts, logic, tips related with RDBMS MS SQL Server
# Fundamentals
Introduction to MS SQL Server
# T-SQL (Transact SQL Lenguaje)

# Common @@ Variables
#📘 Common @@ System Functions in SQL Server 
<table>
<tr>
<td width="33%" valign="top">

Command	Description	Example	Developer Tip
@@VERSION	SQL Server version info	SELECT @@VERSION;	Useful for debugging environment differences (Dev vs Prod).
@@SERVERNAME	Server name	SELECT @@SERVERNAME;	Verify which server you are connected to.
@@SPID	Current session ID	SELECT @@SPID;	Useful when troubleshooting blocking.
@@ROWCOUNT	Rows affected by last statement	SELECT @@ROWCOUNT;	Always read immediately after DML; next statement resets it.
@@ERROR	Error number of last statement	SELECT @@ERROR;	Legacy. Prefer TRY/CATCH.
@@IDENTITY	Last identity value in session	SELECT @@IDENTITY;	❌ Avoid – may return value from trigger.
@@TRANCOUNT	Number of open transactions	SELECT @@TRANCOUNT;	Useful to detect open transactions.
@@CONNECTIONS	Total connections since start	SELECT @@CONNECTIONS;	Good for monitoring.
@@CPU_BUSY	CPU time used by SQL Server	SELECT @@CPU_BUSY;	Basic performance indicator.
@@TOTAL_READ	Disk reads since start	SELECT @@TOTAL_READ;	Used for server diagnostics.
@@TOTAL_WRITE	Disk writes since start	SELECT @@TOTAL_WRITE;	Monitor IO activity.
@@LOCK_TIMEOUT	Current lock timeout setting	SELECT @@LOCK_TIMEOUT;	Important in high-concurrency systems.
@@LANGUAGE	Current session language	SELECT @@LANGUAGE;	Affects date formats & messages.
@@DATEFIRST	First day of week setting	SELECT @@DATEFIRST;	Important when calculating week numbers.
@@MAX_CONNECTIONS	Maximum allowed connections	SELECT @@MAX_CONNECTIONS;	Capacity planning.

</td>
</tr>
</table>
