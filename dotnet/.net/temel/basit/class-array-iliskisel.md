# Class-Array İlişkisel

```
using System;
using System.Linq;

namespace Ders1
{
    class Program
    {
        static void Main(string[] args)
        {
            var calisanlar = new[]
            {
                new Calisanlar("x","Uca",5000),
                new Calisanlar("x","Uca",4000),
                new Calisanlar("x","Uca",3000),
                new Calisanlar("x","Uca",2000)
            };
            var ara = from c in calisanlar
                      where c.Adi == "x" && c.x == "Uca"
                      select c;
            if (ara.Any())
                Console.WriteLine(calisanlar[0].Adi+calisanlar[0].Soyadi);

            Console.ReadKey();
           
        }        
    }
    public class Calisanlar
    {
        public string Adi { get; set; }
        public string Soyadi { get; set; }
        public decimal Maas { get; set; }
                                         
        public Calisanlar(string adi, string soyadi, decimal maas)
        {
            Adi = adi;
            Soyadi = soyadi;
            Maas = maas;
        }
    }
}
```
