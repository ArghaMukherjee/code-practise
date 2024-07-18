
### 1. **SUMIF**
Calculates the sum of a range based on a condition.

**Formula:**
```excel
=SUMIF(range, condition, [sum_range])
```

**Example:**
Calculate the total sales where the region is "West".
```excel
=SUMIF(A2:A10, "West", B2:B10)
```

### 2. **AVERAGEIF**
Calculates the average of a range based on a condition.

**Formula:**
```excel
=AVERAGEIF(range, condition, [average_range])
```

**Example:**
Calculate the average sales where the region is "East".
```excel
=AVERAGEIF(A2:A10, "East", B2:B10)
```

### 3. **COUNTIF**
Counts the number of cells that meet a condition.

**Formula:**
```excel
=COUNTIF(range, condition)
```

**Example:**
Count the number of times "North" appears in the region column.
```excel
=COUNTIF(A2:A10, "North")
```

### 4. **VLOOKUP**
Looks for a value in the first column of a range and returns a value in the same row from a specified column.

**Formula:**
```excel
=VLOOKUP(search_key, range, index, [is_sorted])
```

**Example:**
Find the sales figure for "Region 3".
```excel
=VLOOKUP("Region 3", A2:C10, 3, FALSE)
```

### 5. **HLOOKUP**
Looks for a value in the top row of a range and returns a value in the same column from a specified row.

**Formula:**
```excel
=HLOOKUP(search_key, range, index, [is_sorted])
```

**Example:**
Find the sales figure for "Region 4".
```excel
=HLOOKUP("Region 4", A1:D10, 3, FALSE)
```

### 6. **INDEX**
Returns the value of a cell in a range based on a row and column number.

**Formula:**
```excel
=INDEX(range, row, [column])
```

**Example:**
Get the value from the second row and third column.
```excel
=INDEX(A2:C10, 2, 3)
```

### 7. **MATCH**
Returns the relative position of an item in a range that matches a specified value.

**Formula:**
```excel
=MATCH(search_key, range, [search_type])
```

**Example:**
Find the position of "Region 2" in the region column.
```excel
=MATCH("Region 2", A2:A10, 0)
```

### 8. **IF**
Returns one value if a condition is true and another value if it's false.

**Formula:**
```excel
=IF(condition, value_if_true, value_if_false)
```

**Example:**
Check if sales are greater than 1000, if true return "Good", otherwise "Bad".
```excel
=IF(B2>1000, "Good", "Bad")
```

### 9. **ARRAYFORMULA**
Applies a function to a range of cells and returns a range of results.

**Formula:**
```excel
=ARRAYFORMULA(function(range))
```

**Example:**
Multiply each value in column B by 2.
```excel
=ARRAYFORMULA(B2:B10 * 2)
```

### 10. **QUERY**
Runs a Google Visualization API Query Language query across data.

**Formula:**
```excel
=QUERY(data, query, [headers])
```

**Example:**
Select regions where sales are greater than 1000.
```excel
=QUERY(A1:B10, "SELECT A WHERE B > 1000", 1)
```

