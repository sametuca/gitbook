# Distinct(Tekrarları yoksay)



The MS SQL Server **DISTINCT** keyword is used in conjunction with SELECT statement to eliminate all the duplicate records and fetching only unique records.

There may be a situation when you have multiple duplicate records in a table. While fetching such records, it makes more sense to fetch only unique records instead of fetching duplicate records.

### Syntax

Following is the basic syntax of DISTINCT keyword to eliminate duplicate records.

[ADVERTISEMENT BY ADRECOVER](https://adrecover.com/?utm\_campaign=ByAdRecover\&utm\_source=www.tutorialspoint.com\&utm\_medium=ByAdRecover-320)

```
SELECT DISTINCT column1, column2,.....columnN  
FROM table_name 
WHERE [condition] 
```

### Example

Consider the CUSTOMERS table having the following records.

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

[ADVERTISEMENT BY ADRECOVER](https://adrecover.com/?utm\_campaign=ByAdRecover\&utm\_source=www.tutorialspoint.com\&utm\_medium=ByAdRecover-320)

Let us see how the following SELECT query returns duplicate salary records.

```
SELECT SALARY FROM CUSTOMERS 
   ORDER BY SALARY 
```

The above command will produce the following output where salary 2000 comes twice which is a duplicate record from the original table.

```
SALARY 
1500.00 
2000.00 
2000.00 
4500.00 
6500.00 
8500.00 
10000.00
```

Let us now use DISTINCT keyword with the above SELECT query and see the result.

```
SELECT DISTINCT SALARY FROM CUSTOMERS 
   ORDER BY SALARY 
```

The above command produces the following output where we do not have any duplicate entry.

```
SALARY 
1500.00 
2000.00 
4500.00 
6500.00 
8500.00 
10000.00 
```
