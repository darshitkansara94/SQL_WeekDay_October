Date function :
	Date function returns date which is system date or global date.

	-- Types of date function :
		SYSDATETIME
			Return current date and time of system where sql server is installed.

			-- Example :
				Select SYSDATETIME() as Current_DateAndTime
		SYSDATETIMEOFFSET
			Return current date and time with offset (Offset is current system GMT timezone.)

			-- Example :	
				Select SYSDATETIMEOFFSET()
		SYSUTCDATETIME
			UTC - Coordinated Universal Time.

			Return systemdatetime with UTC.

			Select SYSUTCDATETIME()
			
		Getdate()
		GetUTCDate()	
		datepart
		datename
		month
		year
		isdate
		CURRENT_DATE
		CURRENT_TIMESTAMP	


IST : 8:55 AM 21 Nov 2024
US : 6:30 Pm 20 Nov 2024