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
  <td>@@SERVERNAME</td><td>	Server name</td><td>	SELECT @@SERVERNAME;</td><td>	Verify which server you are connected to.</td></tr>
<tr>
  <td>@@SPID</td><td>	Current session ID</td><td>	SELECT @@SPID;</td><td>	Useful when troubleshooting blocking.</td></tr>
<tr>
  <td>@@ROWCOUNT</td><td>	Rows affected by last statement</td><td>	SELECT @@ROWCOUNT;</td><td>	Always read immediately after DML; next statement resets it.</td></tr>
<tr>
  <td>@@ERROR</td><td>	Error number of last statement</td><td>	SELECT @@ERROR;</td><td>	Legacy. Prefer TRY/CATCH.</td></tr>
<tr>
  <td>@@IDENTITY</td><td>	Last identity value in session</td><td>	SELECT @@IDENTITY;</td><td>	❌ Avoid – may return value from trigger.</td></tr>
<tr>
  <td>@@TRANCOUNT</td><td>	Number of open transactions</td><td>	SELECT @@TRANCOUNT;	</td><td>Useful to detect open transactions.</td></tr>
<tr>
  <td>@@CONNECTIONS</td><td>	Total connections since start</td><td>	SELECT @@CONNECTIONS;</td><td>	Good for monitoring.</td></tr>
<tr>
  <td>@@CPU_BUSY</td><td>	CPU time used by SQL Server</td><td>	SELECT @@CPU_BUSY;</td><td>	Basic performance indicator.</td></tr>
<tr>
  <td>@@TOTAL_READ</td><td>	Disk reads since start</td><td>	SELECT @@TOTAL_READ;</td><td>	Used for server diagnostics.</td></tr>
<tr>
  <td>@@TOTAL_WRITE</td><td>	Disk writes since start</td><td>	SELECT @@TOTAL_WRITE;</td><td>	Monitor IO activity.</td></tr>
<tr>
  <td>@@LOCK_TIMEOUT</td><td>	Current lock timeout setting</td><td>	SELECT @@LOCK_TIMEOUT;</td><td>	Important in high-concurrency systems.</td></tr>
<tr>
  <td>@@LANGUAGE</td><td>	Current session language</td><td>	SELECT @@LANGUAGE;</td><td>	Affects date formats & messages.</td></tr>
<tr>
  <td>@@DATEFIRST</td><td>	First day of week setting</td><td>	SELECT @@DATEFIRST;</td><td>	Important when calculating week numbers.</td></tr>
<tr>
  <td>@@MAX_CONNECTIONS</td><td>	Maximum allowed connections</td><td>	SELECT @@MAX_CONNECTIONS;	</td><td>Capacity planning.</td></tr>

</td>
</tr>
</table>
