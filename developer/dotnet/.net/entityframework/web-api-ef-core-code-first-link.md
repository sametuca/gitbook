# Web API EF Core Code First Link

```
using Microsoft.EntityFrameworkCore;

namespace EFCoreCodeFirstSample.Models
{
    public class EmployeeContext : DbContext
    {
        public EmployeeContext(DbContextOptions options)
            : base(options)
        {
        }

        public DbSet<Employee> Employees { get; set; }
    }
}
```

```
{
  "Logging": {
    "LogLevel": {
      "Default": "Information",
      "Microsoft": "Warning",
      "Microsoft.Hosting.Lifetime": "Information"
    }
  },
  "ConnectionString": {
    "EmployeeDB": "server=MY_SERVER;database=EmployeeDB;User ID=MY_USER;password=MY_PASSWORD;"
  },
  "AllowedHosts": "*"
}
```

```
public void ConfigureServices(IServiceCollection services)
{
    services.AddDbContext<EmployeeContext>(opts => opts.UseSqlServer(Configuration["ConnectionString:EmployeeDB"]));
    services.AddControllers();
}
```

Let’s install the `Microsoft.EntityFrameworkCore.Tools` package and run the following command in the Package Manager console:

`PM> Add-Migration EFCoreCodeFirstSample.Models.EmployeeContext`

Now let’s apply those changes to the database.

Run the following command:

`PM> update-database`

This will update the database based on our models.

Now let’s verify that the database and tables are created by opening SQL Server Management Studio or Visual Studio Server Explorer:
