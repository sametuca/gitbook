# Update



The SQL Server **UPDATE** Query is used to modify the existing records in a table.

You can use WHERE clause with UPDATE query to update selected rows otherwise all the rows would be affected.

### Syntax

Following is the basic syntax of UPDATE query with WHERE clause −



```
UPDATE table_name 
SET column1 = value1, column2 = value2...., columnN = valueN 
WHERE [condition];
```

You can combine N number of conditions using AND or OR operators.

### Example

[ADVERTISEMENT BY ADRECOVER](https://adrecover.com/?utm\_campaign=ByAdRecover\&utm\_source=www.tutorialspoint.com\&utm\_medium=ByAdRecover-320)

Consider the CUSTOMERS table having the following records −

```
ID  NAME       AGE       ADDRESS             SALARY 
1   Ramesh     32        Ahmedabad           2000.00 
2   Khilan     25        Delhi               1500.00 
3   kaushik    23        Kota                2000.00 
4   Chaitali   25        Mumbai              6500.00 
5   Hardik     27        Bhopal              8500.00 
6   Komal      22        MP                  4500.00 
7   Muffy      24        Indore              10000.00 
```

Following command is an example, which would update ADDRESS for a customer whose ID is 6 −

```
UPDATE CUSTOMERS 
SET ADDRESS = 'Pune' 
WHERE ID = 6; 
```

CUSTOMERS table will now have the following records −

```
ID  NAME       AGE       ADDRESS             SALARY 
1   Ramesh     32        Ahmedabad           2000.00 
2   Khilan     25        Delhi               1500.00 
3   kaushik    23        Kota                2000.00 
4   Chaitali   25        Mumbai              6500.00 
5   Hardik     27        Bhopal              8500.00 
6   Komal      22        Pune                4500.00 
7   Muffy      24        Indore              10000.00 
```

If you want to modify all ADDRESS and SALARY column values in CUSTOMERS table, you do not need to use WHERE clause. UPDATE query would be as follows −

```
UPDATE CUSTOMERS 
SET ADDRESS = 'Pune', SALARY = 1000.00;
```

CUSTOMERS table will now have the following records.

```
ID  NAME       AGE       ADDRESS          SALARY 
1   Ramesh     32        Pune             1000.00 
2   Khilan     25        Pune             1000.00 
3   kaushik    23        Pune             1000.00 
4   Chaitali   25        Pune             1000.00 
5   Hardik     27        Pune             1000.00 
6   Komal      22        Pune             1000.00 
7   Muffy      24        Pune             1000.00 
```
