# Interface isteyene context ver

```
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddTransient<IEmployee, EmployeeDataAccessLayer>();
            services.AddMvc(options => options.EnableEndpointRouting = false);

            // In production, the Angular files will be served from this directory
            services.AddSpaStaticFiles(configuration =>
            {
                configuration.RootPath = "ClientApp/dist";
            });
        }
```
