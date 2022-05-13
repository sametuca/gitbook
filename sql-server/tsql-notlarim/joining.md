# Joining

**seç(select), hangi tabloya göre?(tableName) bağla(join)(!) hangi tabloyu?(tableName) hangi alanlar bağlanacak(on)?**

**gibi bir söz dizimi vardır.**



**SELECT** \* **from** Customer, Employee  **WHERE** Customer.SupportRepId = Employee.EmployeeId&#x20;

**select** \* **from** Customer c **inner** **join** Employee e **on** c.SupportRepId  = e.EmployeeId&#x20;

**select** \* **FROM** Employee e **inner** **join** Customer c **on** e.EmployeeId =c .SupportRepId&#x20;
