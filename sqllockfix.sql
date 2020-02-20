-- DBCC OPENTRAN helps to identify active transactions that may be preventing log truncation. DBCC OPENTRAN displays information about the oldest active transaction and the oldest distributed and nondistributed replicated transactions, if any, within the transaction log of the specified database. Results are displayed only if there is an active transaction that exists in the log or if the database contains replication information. An informational message is displayed if there are no active transactions in the log.
DBCC OPENTRAN

--example result. the most useful information is the SPID, we use it to kill the transaction that is perpetually running
/*Transaction information for database 'master'.
Oldest active transaction:
SPID (server process ID) : 52
UID (user ID) : -1
Name          : user_transaction
LSN           : (518:1576:1)
Start time    : Jun  1 2004  3:30:07:197PM
SID           : 0x010500000000000515000000a065cf7e784b9b5fe77c87709e611500
DBCC execution completed. If DBCC printed error messages, contact your system administrator.
*/
--finally the command to kill the transaction
KILL  67