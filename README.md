# MS_SQL_Server_learning
For all scripts, logic, tips related with RDBMS MS SQL Server
# Fundamentals
Introduction to MS SQL Server
# T-SQL (Transact SQL Lenguaje)

# Common @@ Variables
📘 Common @@ System Functions in SQL Server 
<table>
<tr>
<td width="20%" valign="top">Command </td>	<td width="30%" valign="top">Description </td>	<td width="25%" valign="top">Example </td><td width="25%" valign="top">	Developer Tip</td>
</tr>
<tr>
  <td> @@VERSION	</td><td>SQL Server version info		</td><td>SELECT @@VERSION;		</td><td>Useful for debugging environment differences (Dev vs Prod).	</td></tr>
<tr>
  <td>@@SERVERNAME	Server name	SELECT @@SERVERNAME;	Verify which server you are connected to.</td></tr>
<tr>
  <td>@@SPID	Current session ID	SELECT @@SPID;	Useful when troubleshooting blocking.</td></tr>
<tr>
  <td>@@ROWCOUNT	Rows affected by last statement	SELECT @@ROWCOUNT;	Always read immediately after DML; next statement resets it.</td></tr>
<tr>
  <td>@@ERROR	Error number of last statement	SELECT @@ERROR;	Legacy. Prefer TRY/CATCH.</td></tr>
<tr>
  <td>@@IDENTITY	Last identity value in session	SELECT @@IDENTITY;	❌ Avoid – may return value from trigger.</td></tr>
<tr>
  <td>@@TRANCOUNT	Number of open transactions	SELECT @@TRANCOUNT;	Useful to detect open transactions.</td></tr>
<tr>
  <td>@@CONNECTIONS	Total connections since start	SELECT @@CONNECTIONS;	Good for monitoring.</td></tr>
<tr>
  <td>@@CPU_BUSY	CPU time used by SQL Server	SELECT @@CPU_BUSY;	Basic performance indicator.</td></tr>
<tr>
  <td>@@TOTAL_READ	Disk reads since start	SELECT @@TOTAL_READ;	Used for server diagnostics.</td></tr>
<tr>
  <td>@@TOTAL_WRITE	Disk writes since start	SELECT @@TOTAL_WRITE;	Monitor IO activity.</td></tr>
<tr>
  <td>@@LOCK_TIMEOUT	Current lock timeout setting	SELECT @@LOCK_TIMEOUT;	Important in high-concurrency systems.</td></tr>
<tr>
  <td>@@LANGUAGE	Current session language	SELECT @@LANGUAGE;	Affects date formats & messages.</td></tr>
<tr>
  <td>@@DATEFIRST	First day of week setting	SELECT @@DATEFIRST;	Important when calculating week numbers.</td></tr>
<tr>
  <td>@@MAX_CONNECTIONS	Maximum allowed connections	SELECT @@MAX_CONNECTIONS;	Capacity planning.</td></tr>

</td>
</tr>
</table>
