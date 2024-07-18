
### 1. **SUM**
Calculates the sum of a range of cells.

**Formula:**
```excel
=SUM(range)
```
**Example:**
Sum the values in cells B2 to B10.
```excel
=SUM(B2:B10)
```

### 2. **AVERAGE**
Calculates the average of a range of cells.

**Formula:**
```excel
=AVERAGE(range)
```
**Example:**
Average the values in cells B2 to B10.
```excel
=AVERAGE(B2:B10)
```

### 3. **MIN**
Finds the minimum value in a range of cells.

**Formula:**
```excel
=MIN(range)
```
**Example:**
Find the minimum value in cells B2 to B10.
```excel
=MIN(B2:B10)
```

### 4. **MAX**
Finds the maximum value in a range of cells.

**Formula:**
```excel
=MAX(range)
```
**Example:**
Find the maximum value in cells B2 to B10.
```excel
=MAX(B2:B10)
```

### 5. **COUNTA**
Counts the number of non-empty cells in a range.

**Formula:**
```excel
=COUNTA(range)
```
**Example:**
Count the number of non-empty cells in B2 to B10.
```excel
=COUNTA(B2:B10)
```

### 6. **COUNT**
Counts the number of cells that contain numbers in a range.

**Formula:**
```excel
=COUNT(range)
```
**Example:**
Count the number of cells with numbers in B2 to B10.
```excel
=COUNT(B2:B10)
```

### 7. **LEN**
Returns the length of a string.

**Formula:**
```excel
=LEN(text)
```
**Example:**
Find the length of the text in cell A2.
```excel
=LEN(A2)
```

### 8. **TRIM**
Removes leading and trailing spaces from a string.

**Formula:**
```excel
=TRIM(text)
```
**Example:**
Trim the text in cell A2.
```excel
=TRIM(A2)
```

### 9. **LEFT**
Extracts a specified number of characters from the left side of a string.

**Formula:**
```excel
=LEFT(text, [number_of_characters])
```
**Example:**
Extract the first 3 characters of the text in A2.
```excel
=LEFT(A2, 3)
```

### 10. **RIGHT**
Extracts a specified number of characters from the right side of a string.

**Formula:**
```excel
=RIGHT(text, [number_of_characters])
```
**Example:**
Extract the last 3 characters of the text in A2.
```excel
=RIGHT(A2, 3)
```

### 11. **MID**
Extracts a substring from a string (starting at any position).

**Formula:**
```excel
=MID(text, start, number_of_characters)
```
**Example:**
Extract 3 characters from the text in A2 starting at position 2.
```excel
=MID(A2, 2, 3)
```

### 12. **CONCATENATE**
Combines multiple strings into one.

**Formula:**
```excel
=CONCATENATE(string1, [string2, ...])
```
**Example:**
Combine text in A2 and B2.
```excel
=CONCATENATE(A2, " ", B2)
```

### 13. **SPLIT**
Divides text around a specified character or string, and puts each fragment into a separate cell.

**Formula:**
```excel
=SPLIT(text, delimiter)
```
**Example:**
Split the text in A2 by spaces.
```excel
=SPLIT(A2, " ")
```

### 14. **TEXT**
Converts a number into text according to a specified format.

**Formula:**
```excel
=TEXT(number, format)
```
**Example:**
Format the number in A2 as currency.
```excel
=TEXT(A2, "$0.00")
```

### 15. **UPPER**
Converts a string to uppercase.

**Formula:**
```excel
=UPPER(text)
```
**Example:**
Convert the text in A2 to uppercase.
```excel
=UPPER(A2)
```

### 16. **LOWER**
Converts a string to lowercase.

**Formula:**
```excel
=LOWER(text)
```
**Example:**
Convert the text in A2 to lowercase.
```excel
=LOWER(A2)
```

### 17. **PROPER**
Capitalizes the first letter of each word in a text string.

**Formula:**
```excel
=PROPER(text)
```
**Example:**
Capitalize each word in the text in A2.
```excel
=PROPER(A2)
```

### 18. **DATE**
Converts a year, month, and day into a date.

**Formula:**
```excel
=DATE(year, month, day)
```
**Example:**
Create a date for January 1, 2024.
```excel
=DATE(2024, 1, 1)
```

### 19. **YEAR**
Returns the year of a date.

**Formula:**
```excel
=YEAR(date)
```
**Example:**
Get the year of the date in A2.
```excel
=YEAR(A2)
```

### 20. **MONTH**
Returns the month of a date.

**Formula:**
```excel
=MONTH(date)
```
**Example:**
Get the month of the date in A2.
```excel
=MONTH(A2)
```

### 21. **DAY**
Returns the day of the month of a date.

**Formula:**
```excel
=DAY(date)
```
**Example:**
Get the day of the date in A2.
```excel
=DAY(A2)
```

### 22. **WEEKDAY**
Returns the day of the week for a given date.

**Formula:**
```excel
=WEEKDAY(date, [type])
```
**Example:**
Get the day of the week for the date in A2.
```excel
=WEEKDAY(A2, 1)
```

### 23. **DAYS**
Calculates the number of days between two dates.

**Formula:**
```excel
=DAYS(end_date, start_date)
```
**Example:**
Calculate the number of days between A2 and B2.
```excel
=DAYS(B2, A2)
```

### 24. **NETWORKDAYS**
Calculates the number of working days between two dates.

**Formula:**
```excel
=NETWORKDAYS(start_date, end_date, [holidays])
```
**Example:**
Calculate the number of working days between A2 and B2, excluding holidays in C2:C5.
```excel
=NETWORKDAYS(A2, B2, C2:C5)
```

### 25. **EDATE**
Returns a date that is a specified number of months before or after a given date.

**Formula:**
```excel
=EDATE(start_date, months)
```
**Example:**
Find the date 3 months after the date in A2.
```excel
=EDATE(A2, 3)
```

### 26. **EOMONTH**
Returns the last day of the month a specified number of months before or after a given date.

**Formula:**
```excel
=EOMONTH(start_date, months)
```
**Example:**
Find the last day of the month 2 months after the date in A2.
```excel
=EOMONTH(A2, 2)
```

### 27. **TODAY**
Returns the current date.

**Formula:**
```excel
=TODAY()
```
**Example:**
Get the current date.
```excel
=TODAY()
```

### 28. **NOW**
Returns the current date and time.

**Formula:**
```excel
=NOW()
```
**Example:**
Get the current date and time.
```excel
=NOW()
```

### 29. **TIME**
Converts hours, minutes, and seconds into a time.

**Formula:**
```excel
=TIME(hour, minute, second)
```
**Example:**
Create a time for 2:30:00 PM.
```excel
=TIME(14, 30, 0)
```

### 30. **HOUR**
Returns the hour of a time.

**Formula:**
```excel
=HOUR(time)
```
**Example:**
Get the hour of the time in A2.
```excel
=HOUR(A2)
```

### 31. **MINUTE**
Returns the minute of a time.

**Formula:**
```excel
=MINUTE(time)
```
**Example:**
Get the minute of the time in A2.
```excel
=MINUTE(A2)
```

### 32. **SECOND**
Returns the second of a time.

**Formula:**
```excel
=SECOND(time)
```
**Example:**
Get the second of the time in A2.
```excel
=SECOND(A2)
```

### 33. **TEXTJOIN**
Combines the text from multiple ranges and/or strings, with a specified delimiter separating the different texts.

**Formula:**
```excel
=TEXTJOIN(delimiter, ignore_empty, text1, [text2, ...])


```
**Example:**
Combine text in A2, B2, and C2 with a comma.
```excel
=TEXTJOIN(",", TRUE, A2, B2, C2)
```

### 34. **UNIQUE**
Returns unique values from a range.

**Formula:**
```excel
=UNIQUE(range)
```
**Example:**
Get unique values from A2:A10.
```excel
=UNIQUE(A2:A10)
```

### 35. **FILTER**
Filters a range of data based on criteria you define.

**Formula:**
```excel
=FILTER(range, condition1, [condition2, ...])
```
**Example:**
Filter values in B2:B10 where A2:A10 is "North".
```excel
=FILTER(B2:B10, A2:A10="North")
```

### 36. **SORT**
Sorts the rows of a range by the values in one or more columns.

**Formula:**
```excel
=SORT(range, sort_column, is_ascending, [sort_column2, is_ascending2, ...])
```
**Example:**
Sort the range A2:B10 by the values in column B in ascending order.
```excel
=SORT(A2:B10, 2, TRUE)
```

### 37. **SORTN**
Returns the first n items in a data set after performing a sort.

**Formula:**
```excel
=SORTN(range, n, [display_ties_mode], [sort_column], [is_ascending], [sort_column2], [is_ascending2])
```
**Example:**
Get the top 3 highest values from B2:B10.
```excel
=SORTN(B2:B10, 3, 0, B2:B10, FALSE)
```

### 38. **ARRAY_CONSTRAIN**
Constrain an array result to a specified size.

**Formula:**
```excel
=ARRAY_CONSTRAIN(array, num_rows, num_cols)
```
**Example:**
Constrain the range A2:B10 to 5 rows and 1 column.
```excel
=ARRAY_CONSTRAIN(A2:B10, 5, 1)
```

### 39. **IMPORTRANGE**
Imports a range of cells from a specified spreadsheet.

**Formula:**
```excel
=IMPORTRANGE(spreadsheet_url, range_string)
```
**Example:**
Import data from another spreadsheet.
```excel
=IMPORTRANGE("https://docs.google.com/spreadsheets/d/abcd1234/edit", "Sheet1!A1:B10")
```

### 40. **IMPORTDATA**
Imports data from a given URL in .csv (comma-separated value) or .tsv (tab-separated value) format.

**Formula:**
```excel
=IMPORTDATA(url)
```
**Example:**
Import data from a CSV file on the web.
```excel
=IMPORTDATA("http://example.com/data.csv")
```

### 41. **IMPORTXML**
Imports data from a structured data source (XML).

**Formula:**
```excel
=IMPORTXML(url, xpath_query)
```
**Example:**
Import data from an XML file on the web.
```excel
=IMPORTXML("http://example.com/data.xml", "//title")
```

### 42. **IMPORTHTML**
Imports a table or list from a specified URL.

**Formula:**
```excel
=IMPORTHTML(url, query, index)
```
**Example:**
Import the first table from a web page.
```excel
=IMPORTHTML("http://example.com", "table", 1)
```

### 43. **REGEXMATCH**
Returns TRUE if a piece of text matches a regular expression.

**Formula:**
```excel
=REGEXMATCH(text, regular_expression)
```
**Example:**
Check if the text in A2 contains "abc".
```excel
=REGEXMATCH(A2, "abc")
```

### 44. **REGEXEXTRACT**
Extracts matching substrings according to a regular expression.

**Formula:**
```excel
=REGEXEXTRACT(text, regular_expression)
```
**Example:**
Extract the first occurrence of "abc" from the text in A2.
```excel
=REGEXEXTRACT(A2, "abc")
```

### 45. **REGEXREPLACE**
Replaces part of a text string with a different text string using regular expressions.

**Formula:**
```excel
=REGEXREPLACE(text, regular_expression, replacement)
```
**Example:**
Replace "abc" with "xyz" in the text in A2.
```excel
=REGEXREPLACE(A2, "abc", "xyz")
```

### 46. **ISNUMBER**
Checks if a value is a number.

**Formula:**
```excel
=ISNUMBER(value)
```
**Example:**
Check if the value in A2 is a number.
```excel
=ISNUMBER(A2)
```

### 47. **ISERROR**
Checks if a value is an error.

**Formula:**
```excel
=ISERROR(value)
```
**Example:**
Check if the value in A2 is an error.
```excel
=ISERROR(A2)
```

### 48. **IFERROR**
Returns a value you specify if a formula evaluates to an error; otherwise, returns the result of the formula.

**Formula:**
```excel
=IFERROR(formula, [value_if_error])
```
**Example:**
Return 0 if the formula in A2 results in an error.
```excel
=IFERROR(A2, 0)
```

### 49. **SHEET**
Returns the sheet number of a reference.

**Formula:**
```excel
=SHEET([value])
```
**Example:**
Get the sheet number of the current sheet.
```excel
=SHEET()
```

### 50. **SHEETS**
Returns the number of sheets in a spreadsheet.

**Formula:**
```excel
=SHEETS()
```
**Example:**
Get the number of sheets in the current spreadsheet.
```excel
=SHEETS()
```

