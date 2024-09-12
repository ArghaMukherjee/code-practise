

---

### **SQL Questions**

---

### 1. **What is SQL?**
   SQL (Structured Query Language) is a language used to communicate with databases. It’s used for querying, inserting, updating, and deleting data, as well as managing database structures.

### 2. **What are the different types of SQL commands?**
   SQL commands are categorized as:
   - **DDL (Data Definition Language)**: `CREATE`, `ALTER`, `DROP`.
   - **DML (Data Manipulation Language)**: `SELECT`, `INSERT`, `UPDATE`, `DELETE`.
   - **DCL (Data Control Language)**: `GRANT`, `REVOKE`.
   - **TCL (Transaction Control Language)**: `COMMIT`, `ROLLBACK`, `SAVEPOINT`.

### 3. **What is a Primary Key?**
   A Primary Key uniquely identifies each record in a table. It must contain unique values and cannot contain `NULL` values.

### 4. **What is a Foreign Key?**
   A Foreign Key is a field (or a collection of fields) in one table that refers to the Primary Key in another table. It is used to establish a relationship between the two tables.

### 5. **What is a JOIN in SQL?**
   A `JOIN` clause is used to combine rows from two or more tables based on a related column between them.

### 6. **What are the types of JOINs in SQL?**
   - **INNER JOIN**: Returns rows when there is a match in both tables.
   - **LEFT (OUTER) JOIN**: Returns all rows from the left table and matched rows from the right table.
   - **RIGHT (OUTER) JOIN**: Returns all rows from the right table and matched rows from the left table.
   - **FULL (OUTER) JOIN**: Returns rows when there is a match in one of the tables.

### 7. **Explain the difference between `WHERE` and `HAVING`.**
   - **WHERE** filters records before any groupings are made.
   - **HAVING** filters records after the grouping.

### 8. **What is a `GROUP BY` statement?**
   The `GROUP BY` statement groups rows that have the same values in specified columns into aggregate data, like totals or averages.

   **Example**:
   ```sql
   SELECT department, COUNT(employee_id) 
   FROM employees 
   GROUP BY department;
   ```

### 9. **What is the difference between `COUNT()`, `SUM()`, and `AVG()`?**
   - **COUNT()**: Returns the number of rows in a table.
   - **SUM()**: Returns the total sum of a numeric column.
   - **AVG()**: Returns the average value of a numeric column.

### 10. **What is the difference between `CHAR` and `VARCHAR` data types?**
   - **CHAR**: Fixed-length character data type (padded with spaces to fill).
   - **VARCHAR**: Variable-length character data type (no padding).

### 11. **How can you fetch only unique records in SQL?**
   Use the `DISTINCT` keyword to retrieve unique values.

   **Example**:
   ```sql
   SELECT DISTINCT column1 FROM table;
   ```

### 12. **What is the `BETWEEN` operator?**
   The `BETWEEN` operator selects values within a given range.

   **Example**:
   ```sql
   SELECT * FROM products WHERE price BETWEEN 100 AND 500;
   ```

### 13. **What is an alias in SQL?**
   An alias is a temporary name for a table or column.

   **Example**:
   ```sql
   SELECT column1 AS col1 FROM table AS t;
   ```

### 14. **What are constraints in SQL?**
   Constraints are rules applied to table columns to enforce data integrity. Examples include `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, and `CHECK`.

### 15. **What is a subquery in SQL?**
   A subquery is a query nested within another SQL query.

   **Example**:
   ```sql
   SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
   ```

### 16. **Explain the `CASE` statement in SQL.**
   The `CASE` statement goes through conditions and returns a value when the first condition is met.

   **Example**:
   ```sql
   SELECT employee_id, 
          CASE 
             WHEN salary > 5000 THEN 'High'
             ELSE 'Low' 
          END AS salary_level
   FROM employees;
   ```

### 17. **What is a `VIEW` in SQL?**
   A `VIEW` is a virtual table that contains a SELECT query. It doesn’t store data physically but presents data stored in tables.

   **Example**:
   ```sql
   CREATE VIEW employee_view AS 
   SELECT employee_id, name, department 
   FROM employees;
   ```

### 18. **How can you avoid SQL injection?**
   SQL injection can be avoided by using parameterized queries or prepared statements.

   **Example in MySQL**:
   ```sql
   PREPARE stmt FROM 'SELECT * FROM users WHERE id = ?';
   ```

### 19. **What is the `LIMIT` clause?**
   The `LIMIT` clause restricts the number of rows returned by a query.

   **Example**:
   ```sql
   SELECT * FROM employees LIMIT 10;
   ```

### 20. **What is `UNION` and how is it different from `UNION ALL`?**
   - **UNION**: Combines results of two queries and removes duplicates.
   - **UNION ALL**: Combines results and includes duplicates.

### 21. **What is normalization?**
   Normalization is the process of organizing data to reduce redundancy and improve data integrity. There are several forms, with the most common being the **First Normal Form (1NF)**, **Second Normal Form (2NF)**, and **Third Normal Form (3NF)**.

### 22. **What is denormalization?**
   Denormalization is the process of combining normalized tables to improve read performance at the expense of write performance and storage efficiency.

### 23. **What is the `COALESCE` function?**
   The `COALESCE` function returns the first non-null value in a list of arguments.

   **Example**:
   ```sql
   SELECT COALESCE(NULL, NULL, 'Default') AS result;
   ```

### 24. **How do you create an index in SQL?**
   An index improves the speed of data retrieval.

   **Example**:
   ```sql
   CREATE INDEX idx_employee ON employees(employee_id);
   ```

### 25. **What is a trigger in SQL?**
   A trigger is a stored procedure that automatically runs when certain events (INSERT, UPDATE, DELETE) occur in a table.

   **Example**:
   ```sql
   CREATE TRIGGER after_insert_trigger
   AFTER INSERT ON employees
   FOR EACH ROW 
   BEGIN 
      INSERT INTO audit_log (employee_id, action) 
      VALUES (NEW.employee_id, 'Inserted');
   END;
   ```

---

### **Advanced SQL Questions**

---

### 26. **What is a `CROSS JOIN`?**
   A `CROSS JOIN` produces the Cartesian product of two tables. It returns all possible combinations of rows.

   **Example**:
   ```sql
   SELECT * FROM employees CROSS JOIN departments;
   ```

### 27. **What is a `SELF JOIN`?**
   A `SELF JOIN` is a join where a table is joined with itself.

   **Example**:
   ```sql
   SELECT A.employee_id, B.employee_id
   FROM employees A, employees B
   WHERE A.manager_id = B.employee_id;
   ```

### 28. **What are window functions in SQL?**
   Window functions perform calculations across a set of rows related to the current row without collapsing them into a single result.

   **Example** (using `ROW_NUMBER`):
   ```sql
   SELECT employee_id, salary, 
          ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
   FROM employees;
   ```

### 29. **Explain the difference between `RANK()` and `DENSE_RANK()`.**
   - **RANK()**: Assigns a unique rank to each row but leaves gaps for duplicate ranks.
   - **DENSE_RANK()**: Assigns a unique rank without gaps.

### 30. **What is a CTE (Common Table Expression)?**
   A CTE is a temporary result set defined within the execution scope of a single `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statement.

   **Example**:
   ```sql
   WITH EmployeeCTE AS (
      SELECT employee_id, department_id, salary
      FROM employees
      WHERE department_id = 5
   )
   SELECT * FROM EmployeeCTE;
   ```

### 31. **How do you handle recursive queries in SQL?**
   Recursive queries are handled using a recursive CTE.

   **Example**:
   ```sql
   WITH RECURSIVE hierarchy AS (
      SELECT employee_id, manager_id, 1 AS level
      FROM employees
      WHERE manager_id IS NULL
      UNION ALL
      SELECT e.employee_id, e.manager_id, h.level + 1
      FROM employees e
      INNER JOIN hierarchy h ON e.manager_id = h

### 32. **What is an execution plan, and how do you view it?**
   An execution plan shows how SQL Server executes a query, detailing the steps it takes. It helps identify performance bottlenecks.

   **Example**: In MySQL, you can use `EXPLAIN` before a `SELECT` statement to view the execution plan:
   ```sql
   EXPLAIN SELECT * FROM employees WHERE department_id = 5;
   ```

### 33. **What are clustered and non-clustered indexes?**
   - **Clustered Index**: Physically arranges the data in a table in the order of the index. Each table can have only one clustered index.
   - **Non-clustered Index**: Does not alter the physical order of the table but creates a separate structure to store the index. Tables can have multiple non-clustered indexes.

### 34. **What is the difference between `DELETE`, `TRUNCATE`, and `DROP`?**
   - **DELETE**: Removes rows from a table. It can be rolled back and triggers are fired.
   - **TRUNCATE**: Removes all rows from a table, but faster than `DELETE`. It cannot be rolled back.
   - **DROP**: Deletes the entire table from the database.

### 35. **How do you optimize a slow query?**
   Several steps can be taken to optimize slow queries:
   - Use appropriate indexing.
   - Avoid `SELECT *` and instead specify columns.
   - Rewrite subqueries as `JOINs`.
   - Use `LIMIT` to restrict the number of rows.
   - Analyze the execution plan and reduce the complexity of the query.

### 36. **What is a composite index, and when would you use it?**
   A composite index is an index on two or more columns. Use it when you frequently query on multiple columns together.

   **Example**:
   ```sql
   CREATE INDEX idx_emp_dept ON employees (department_id, salary);
   ```

### 37. **What are `ACID` properties in databases?**
   - **Atomicity**: All operations in a transaction must succeed or all fail.
   - **Consistency**: A transaction must bring the database from one valid state to another.
   - **Isolation**: Transactions are isolated from one another until completed.
   - **Durability**: Once a transaction is committed, it remains committed even if the system crashes.

### 38. **What is a stored procedure, and how do you create one?**
   A stored procedure is a reusable SQL code that can take parameters and perform actions such as `SELECT`, `INSERT`, `UPDATE`, and `DELETE`.

   **Example**:
   ```sql
   CREATE PROCEDURE GetEmployeeInfo (@EmployeeID INT)
   AS
   BEGIN
      SELECT * FROM employees WHERE employee_id = @EmployeeID;
   END;
   ```

### 39. **What is a materialized view, and how is it different from a regular view?**
   A **materialized view** stores the result set of a query and can be refreshed at intervals. A **regular view** is a virtual table that runs the query each time the view is accessed.

### 40. **How do you handle NULL values in SQL?**
   Use the `IS NULL` or `IS NOT NULL` operators to filter `NULL` values. The `COALESCE` function can be used to replace `NULL` values with a default.

   **Example**:
   ```sql
   SELECT COALESCE(salary, 0) FROM employees;
   ```

### 41. **What are transactions in SQL?**
   A transaction is a sequence of one or more SQL operations treated as a single unit of work. They ensure that the `ACID` properties are maintained.

   **Example**:
   ```sql
   BEGIN TRANSACTION;
   UPDATE employees SET salary = salary * 1.10 WHERE department = 'HR';
   COMMIT;
   ```

### 42. **What is an index scan and an index seek?**
   - **Index Scan**: The database engine scans the entire index to find the desired rows. This is slower.
   - **Index Seek**: The engine quickly locates the rows by traversing the index structure. This is faster and more efficient.

### 43. **What is the difference between `EXISTS` and `IN`?**
   - **IN**: Checks if a value exists in a list of values. It retrieves the whole result set first.
   - **EXISTS**: Checks the existence of a row and stops once it finds a match, making it faster for large datasets.

   **Example**:
   ```sql
   SELECT * FROM employees WHERE department_id IN (SELECT department_id FROM departments);
   ```

### 44. **How can you update data in one table based on data in another table?**
   You can use an `UPDATE` statement with a `JOIN`.

   **Example**:
   ```sql
   UPDATE employees 
   SET salary = salary * 1.05 
   FROM employees e 
   INNER JOIN departments d 
   ON e.department_id = d.department_id 
   WHERE d.department_name = 'HR';
   ```

### 45. **What is the difference between `UNION` and `JOIN`?**
   - **UNION**: Combines the results of two queries into one dataset, removing duplicates by default.
   - **JOIN**: Combines rows from two tables based on a related column between them.

### 46. **What are database locks?**
   Locks are mechanisms to ensure that multiple transactions do not interfere with each other. Types of locks include:
   - **Shared Lock**: Allows reading but prevents writing.
   - **Exclusive Lock**: Prevents both reading and writing by other transactions.

### 47. **How do you use `RANK()` in SQL to rank data?**
   `RANK()` assigns a rank to each row within a partition. If there are duplicate ranks, the next rank will skip by the number of duplicates.

   **Example**:
   ```sql
   SELECT employee_id, salary, 
          RANK() OVER (ORDER BY salary DESC) AS salary_rank 
   FROM employees;
   ```

### 48. **What is partitioning in SQL?**
   Partitioning is dividing a table into smaller, more manageable pieces while keeping them logically a part of the same table. It improves performance on large datasets.

   **Example**: Range partitioning:
   ```sql
   CREATE TABLE employees (
      employee_id INT,
      employee_name VARCHAR(50),
      salary INT
   )
   PARTITION BY RANGE (salary) (
      PARTITION p1 VALUES LESS THAN (5000),
      PARTITION p2 VALUES LESS THAN (10000),
      PARTITION p3 VALUES LESS THAN MAXVALUE
   );
   ```

### 49. **What is the difference between a `VIEW` and a `TEMPORARY TABLE`?**
   - **VIEW**: A virtual table based on a `SELECT` query that always retrieves up-to-date data.
   - **TEMPORARY TABLE**: A table that exists for the duration of a session or a transaction, storing temporary data.

   **Example** for Temporary Table:
   ```sql
   CREATE TEMPORARY TABLE temp_employees AS SELECT * FROM employees WHERE department = 'HR';
   ```

### 50. **Explain the `MERGE` statement in SQL.**
   The `MERGE` statement allows you to perform `INSERT`, `UPDATE`, and `DELETE` operations in a single statement based on conditions.

   **Example**:
   ```sql
   MERGE INTO employees AS target
   USING new_employees AS source
   ON target.employee_id = source.employee_id
   WHEN MATCHED THEN 
      UPDATE SET target.salary = source.salary
   WHEN NOT MATCHED THEN 
      INSERT (employee_id, name, salary) VALUES (source.employee_id, source.name, source.salary);
   ```

### 51. **What is a correlated subquery?**
   A correlated subquery is a subquery that depends on the outer query for its values. It is executed for each row in the outer query.

   **Example**:
   ```sql
   SELECT employee_id, salary
   FROM employees e1
   WHERE salary > (SELECT AVG(salary) 
                   FROM employees e2 
                   WHERE e2.department_id = e1.department_id);
   ```

### 52. **What are the advantages and disadvantages of indexing in SQL?**
   - **Advantages**: Improves query performance by making data retrieval faster.
   - **Disadvantages**: Indexes slow down data modification (INSERT, UPDATE, DELETE) because the index also needs to be updated.

### 53. **Explain `ROLLUP` and `CUBE` in SQL.**
   `ROLLUP` and `CUBE` are extensions of `GROUP BY` used for generating subtotals and grand totals.
   - **ROLLUP**: Generates subtotals for the groups and a grand total.
   - **CUBE**: Generates subtotals for all combinations of grouping columns.

   **Example** using `ROLLUP`:
   ```sql
   SELECT department, employee_id, SUM(salary)
   FROM employees
   GROUP BY ROLLUP(department, employee_id);
   ```

### 54. **What is the difference between `TRIGGER` and `STORED PROCEDURE`?**
   - **TRIGGER**: Automatically invoked when a specific event (INSERT, UPDATE, DELETE) occurs in the database. It is event-driven and tied to a specific table or event.
   - **STORED PROCEDURE**: A precompiled set of SQL statements that can be manually invoked as needed. Stored procedures are not tied to any specific event but can be called explicitly.

   **Example of a Trigger**:
   ```sql
   CREATE TRIGGER trg_after_insert
   AFTER INSERT ON employees
   FOR EACH ROW
   BEGIN
      INSERT INTO audit_log (employee_id, action)
      VALUES (NEW.employee_id, 'Insert');
   END;
   ```

   **Example of a Stored Procedure**:
   ```sql
   CREATE PROCEDURE UpdateEmployeeSalary (IN emp_id INT, IN new_salary DECIMAL)
   BEGIN
      UPDATE employees
      SET salary = new_salary
      WHERE employee_id = emp_id;
   END;
   ```

---

### 55. **What is a `FULL OUTER JOIN` in SQL?**
   A `FULL OUTER JOIN` returns all rows when there is a match in either table, and unmatched rows from both tables are also included. It combines the results of both `LEFT JOIN` and `RIGHT JOIN`.

   **Example**:
   ```sql
   SELECT e.employee_id, d.department_name
   FROM employees e
   FULL OUTER JOIN departments d
   ON e.department_id = d.department_id;
   ```

### 56. **Explain the `LEAD()` and `LAG()` window functions in SQL.**
   - **LEAD()**: Returns the value of a column from the next row in the result set.
   - **LAG()**: Returns the value of a column from the previous row in the result set.
   
   These functions are useful for accessing data from other rows without using self-joins.

   **Example**:
   ```sql
   SELECT employee_id, salary,
          LAG(salary, 1, 0) OVER (ORDER BY salary) AS previous_salary,
          LEAD(salary, 1, 0) OVER (ORDER BY salary) AS next_salary
   FROM employees;
   ```

### 57. **What is a `COMMON TABLE EXPRESSION` (CTE)?**
   A **CTE** is a temporary result set that is defined within the execution scope of a single `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statement. CTEs make complex queries easier to read and maintain.

   **Example**:
   ```sql
   WITH EmployeeCTE AS (
      SELECT employee_id, department_id, salary
      FROM employees
   )
   SELECT * FROM EmployeeCTE WHERE salary > 5000;
   ```

### 58. **Explain the difference between a **SEQUENCE** and an **AUTO_INCREMENT** in SQL.**
   - **SEQUENCE**: A database object that generates a sequence of numeric values, often used for generating unique keys.
   - **AUTO_INCREMENT**: A column attribute that automatically generates a unique value for each new row in a table, typically used for primary keys.

   **Example of SEQUENCE**:
   ```sql
   CREATE SEQUENCE seq_employee
   START WITH 1
   INCREMENT BY 1;
   
   INSERT INTO employees (employee_id, name) 
   VALUES (NEXTVAL(seq_employee), 'John Doe');
   ```

### 59. **What is `ISNULL()` in SQL, and how is it different from `COALESCE()`?**
   - **ISNULL()**: Replaces `NULL` with a specified replacement value. It works with two arguments and is more limited.
   - **COALESCE()**: Returns the first non-null expression from a list of arguments. It can take multiple arguments and is more flexible.

   **Example**:
   ```sql
   SELECT ISNULL(salary, 0) FROM employees;  -- Only two arguments allowed

   SELECT COALESCE(salary, bonus, 0) FROM employees;  -- Multiple arguments
   ```

### 60. **What are `HAVING` and `GROUP BY` used for?**
   - **GROUP BY**: Groups rows that have the same values in specified columns into aggregate data, such as sums or counts.
   - **HAVING**: Filters the grouped rows returned by a `GROUP BY` clause. Unlike `WHERE`, `HAVING` is used to filter groups based on aggregate functions.

   **Example**:
   ```sql
   SELECT department, COUNT(employee_id) AS employee_count
   FROM employees
   GROUP BY department
   HAVING COUNT(employee_id) > 5;
   ```

---

These questions cover a range of topics including SQL basics, advanced queries, indexing, performance optimization, and SQL features such as triggers, procedures, and window functions. Let me know if you'd like further clarification on any of the concepts!
