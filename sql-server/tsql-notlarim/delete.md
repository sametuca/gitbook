# Delete

## T-SQL - DELETE Statement

***

\
[ Previous Page](https://www.tutorialspoint.com/t\_sql/t\_sql\_update\_statement.htm)[Next Page  ](https://www.tutorialspoint.com/t\_sql/t\_sql\_where\_clause.htm)

The SQL Server **DELETE** Query is used to delete the existing records from a table.

You have to use WHERE clause with DELETE query to delete selected rows, otherwise all the records would be deleted.

### Syntax

Following is the basic syntax of DELETE query with WHERE clause −

[ADVERTISEMENT BY ADRECOVER](https://adrecover.com)

```
DELETE FROM table_name 
WHERE [condition]; 
```

You can combine N number of conditions using AND or OR operators.

### Example

[ADVERTISEMENT BY ADRECOVER](https://adrecover.com)

Consider the CUSTOMERS table having the following records −

```
ID  NAME       AGE       ADDRESS            SALARY 
1   Ramesh     32        Ahmedabad          2000.00 
2   Khilan     25        Delhi              1500.00 
3   kaushik    23        Kota               2000.00 
4   Chaitali   25        Mumbai             6500.00 
5   Hardik     27        Bhopal             8500.00 
6   Komal      22        MP                 4500.00 
7   Muffy      24        Indore             10000.00 
```

Following command is an example, which would DELETE a customer, whose ID is 6 −

```
DELETE FROM CUSTOMERS 
WHERE ID = 6;
```

CUSTOMERS table will now have the following records.

```
ID  NAME       AGE       ADDRESS              SALARY 
1   Ramesh     32        Ahmedabad            2000.00 
2   Khilan     25        Delhi                1500.00 
3   kaushik    23        Kota                 2000.00 
4   Chaitali   25        Mumbai               6500.00 
5   Hardik     27        Bhopal               8500.00 
7   Muffy      24        Indore               10000.00 
```

If you want to DELETE all the records from CUSTOMERS table, you do not need to use WHERE clause. DELETE query would be as follows −

```
DELETE FROM CUSTOMERS;
```

CUSTOMERS table now will not have any record.
