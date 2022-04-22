# Bağlantı Ayarları - Migrations

[https://www.youtube.com/watch?v=AHqIrJ\_PlPY](https://www.youtube.com/watch?v=AHqIrJ\_PlPY)

Context içerisinde ctor üretilir.

```
public SchoolContext(DbContextOptions<SchoolContext> options):base(options)
        {
            
        }
```

App.json içerisine

(Virgül)

```
"ConnectionStrings": {
    "DevConnection": "Server=(localdb)\\MSSQLLocalDB;Database=School;Trusted_Connection=True;MultipleActiveResultSets=True"
```

Startup içerisindeki configureservice metodu içerisine,

```
services.AddDbContext<SchoolContext>(options=>
            options.UseSqlServer(Configuration.GetConnectionString("DevConnection")));
```
