# Insert



The SQL Server **INSERT INTO** statement is used to add new rows of data to a table in the database.

### Syntax

Following are the two basic syntaxes of INSERT INTO statement.

```
INSERT INTO TABLE_NAME [(column1, column2, column3,...columnN)]   
VALUES (value1, value2, value3,...valueN); 
```

Where column1, column2,...columnN are the names of the columns in the table into which you want to insert data.

You need not specify the column(s) name in the SQL query if you are adding values for all the columns of the table. But make sure the order of the values is in the same order as the columns in the table. Following is the SQL INSERT INTO syntax −

```
INSERT INTO TABLE_NAME VALUES (value1,value2,value3,...valueN);
```

### Example

Following statements will create six records in CUSTOMERS table −

```
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );
  
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 );  

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (3, 'kaushik', 23, 'Kota', 2000.00 );  

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00 ); 
 
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00 );  

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY) 
VALUES (6, 'Komal', 22, 'MP', 4500.00 );
```

### Syntax

You can create a record in CUSTOMERS table using second syntax as follows −

```
INSERT INTO CUSTOMERS VALUES (7, 'Muffy', 24, 'Indore', 10000.00 );
```
