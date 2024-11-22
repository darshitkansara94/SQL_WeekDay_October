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
			
		Getdate() :
			Getdate is returning where sql server is installed.

			-- Example :
				Select GETDATE()

		GetUTCDate() :
			GetUTCDate is returning UTC date and time where sql server is installed.

			-- Example :
				Select GETUTCDATE()
		datename :
			DateName return value as a string datatype.
			We can extract a different part of a date using this function.

			-- Example :
				Select DATENAME(day,getdate()) as today
				Select DATENAME(month,getdate()) as current_month
				select DATENAME(YEAR,GETDATE()) as current_year

				Select DATENAME(WEEKDAY,getdate()) as current_day
				Select DATENAME(DAYOFYEAR,getdate()) as current_dayofyear
				Select DATENAME(QUARTER,getdate()) as current_Quater
				Select DATENAME(WEEK,getdate()) as current_week
				Select DATENAME(hour,getdate()) as current_hour
				Select DATENAME(minute,getdate()) as current_minute
				Select DATENAME(second,getdate()) as current_second
				Select DATENAME(MILLISECOND,GETDATE()) as current_ms
				Select DATENAME(MS,GETDATE()) as current_ms

		datepart :
			-- Exercise
		month
			Return current month.

			-- Example
			Select MONTH(GETDATE())
		year
			Return current year

			-- Example
				Select YEAR(GETDATE())
		isdate :
			Verify the date is valid or not.
			This function return bool value. If date is valid then it will retun 1 else return 0.

			-- Example :
				Select GETDATE()

				Select ISDATE('2024-11-22 08:54:18.337') -- Valid date
				Select ISDATE('2024-11-35 08:54:18.337') -- Invalid date
		
		CURRENT_TIMESTAMP :
			Return current date and time of system where sql is installed.
			-- Example
			Select CURRENT_TIMESTAMP

		Datediff :
			If we want to get a difference between two date, month or year.

			-- Syntax
				Select DATEDIFF(interval,date1,date2)

			-- Example
			select GETDATE()

				Select DATEDIFF(day,'2024-11-22 09:01:54.663','2024-11-30 09:01:54.663') as date_difference
				Select DATEDIFF(month,'2024-11-22 09:01:54.663','2024-12-30 09:01:54.663') as date_difference