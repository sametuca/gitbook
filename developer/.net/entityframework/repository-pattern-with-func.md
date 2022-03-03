---
description: https://codewithmukesh.com/blog/repository-pattern-in-aspnet-core/
---

# Repository Pattern With FUNC



```
public interface IGenericRepository<T> where T : class
{
    T GetById(int id);
    IEnumerable<T> GetAll();
    IEnumerable<T> Find(Expression<Func<T, bool>> expression);
    void Add(T entity);
    void AddRange(IEnumerable<T> entities);
    void Remove(T entity);
    void RemoveRange(IEnumerable<T> entities);
}
```

```
public class GenericRepository<T> : IGenericRepository<T> where T : class
{
    protected readonly ApplicationContext _context;
    public GenericRepository(ApplicationContext context)
    {
        _context = context;
    }

    public void Add(T entity)
    {
        _context.Set<T>().Add(entity);
    }

    public void AddRange(IEnumerable<T> entities)
    {
        _context.Set<T>().AddRange(entities);
    }

    public IEnumerable<T> Find(Expression<Func<T, bool>> expression)
    {
        return _context.Set<T>().Where(expression);
    }

    public IEnumerable<T> GetAll()
    {
        return _context.Set<T>().ToList();
    }

    public T GetById(int id)
    {
        return _context.Set<T>().Find(id);
    }

    public void Remove(T entity)
    {
        _context.Set<T>().Remove(entity);
    }

    public void RemoveRange(IEnumerable<T> entities)
    {
        _context.Set<T>().RemoveRange(entities);
    }
}
```

```
public interface IDeveloperRepository : IGenericRepository<Developer>
{
    IEnumerable<Developer> GetPopularDevelopers(int count);
}
```

```
public class DeveloperRepository : GenericRepository<Developer>, IDeveloperRepository
{
    public DeveloperRepository(ApplicationContext context):base(context)
    {
    }
    public IEnumerable<Developer> GetPopularDevelopers(int count)
    {
        return _context.Developers.OrderByDescending(d => d.Followers).Take(count).ToList();
    }
}
```

```
public interface IProjectRepository : IGenericRepository<Project>
{
}
```

```
public class ProjectRepository : GenericRepository<Project>, IProjectRepository
{
    public ProjectRepository(ApplicationContext context): base(context)
    { 
    }
}
```

```
#region Repositories
services.AddTransient(typeof(IGenericRepository<>), typeof(GenericRepository<>));
services.AddTransient<IDeveloperRepository, DeveloperRepository>();
services.AddTransient<IProjectRepository, ProjectRepository>();
#endregion
```

