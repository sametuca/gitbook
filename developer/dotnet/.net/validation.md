# Validation

```
using FluentValidation;

namespace Validation
{
    internal class Program
    {
        public static void Main(string[] args)
        {
            
        }

        public void Add(Urunler ürünler)
        {
            ValidationTool.Validate(new UrunlerDogrulama(), ürünler);
        }
    }

    public static class ValidationTool
    {
        public static void Validate(IValidator validator, object entity)
        {
            var yanit = validator.Validate(entity);
            if (yanit.Errors.Count>0)
            {
                throw new ValidationException(yanit.Errors);
            }
        }
    }
    //fluent validation dökümasyonuna bakabilirsiniz.
    public class UrunlerDogrulama:AbstractValidator<Urunler>
    {
        public UrunlerDogrulama()
        {
            RuleFor(p => p.Price).NotEmpty().WithMessage("Ürün fiyatı boş olamaz");
            RuleFor(p => p.Name).NotEmpty();
            RuleFor(p => p.Id).NotEmpty();
            RuleFor(p => p.Stock).GreaterThan(0);
            RuleFor(p => p.Price).GreaterThan(10).When(p => p.Stock == 2);
            RuleFor(p => p.Name).Must(StartWithA);
        }
        
        private bool StartWithA(string arg)
        {
            return arg.StartsWith("A");
        }
    }
    public class Urunler
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Price { get; set; }
        public int Stock { get; set; }
    }
}
```
