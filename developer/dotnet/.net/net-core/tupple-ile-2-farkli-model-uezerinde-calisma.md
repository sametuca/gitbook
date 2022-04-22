# Tupple İle 2 farklı model üzerinde çalışma

```
        public IActionResult Index()
        {
           
            var tuppleModel = (new Sams(),new Sam());
            return View(tuppleModel);
        }

        [HttpPost]
        public IActionResult TuppleResult([Bind(Prefix ="item1")]Sams sams, [Bind(Prefix = "item2")] Sam sam)
        {
            return Ok();
        }
```

```
@model (Sams same, Sam samses)
```

```
    <form method="post" asp-controller="Home" asp-action="TuppleResult">
        <input type="text" asp-for="@Model.same.Name" placeholder=" Name" />
        <input type="text" asp-for="@Model.samses.Name" placeholder=" Name" />
        <input type="submit" name="name" value="Gönder" />
    </form>
```

