# Virtual Metodlar

```
using System;

namespace VirtualMetodlar
{
  internal class Program
  {
    public static void Main(string[] args)
    {
      SqlServer sqlServer = new SqlServer();
      sqlServer.Add();
    }
    
  }

  class Database
  {
    public virtual void Add()
    {
      Console.WriteLine("Added by default");
    }

    public void Delete()
    {
      Console.WriteLine("Deleted by default");
    }
  }

  class SqlServer : Database
  {
    public override void Add()
    {
      Console.WriteLine("sql server bu işler değişik xd");
      //base.Add(); -> ezmemize rağmen basedeki varsayılan koduda çalıştır.
    }
  }
}
```
