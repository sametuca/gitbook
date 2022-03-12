---
coverY: 0
---

# ViewData - ViewBag - TempData

## ViewBag

View'a taşınacak olan veriyi dynamic bir değişkenle taşımamıza olanak tanır.

Örnek olarak ViewBag.simdiTanimlananDegisken = product;

Burada ki çalışma sonucunda view tarafında ViewBag.simdiTanimlananDegisken şeklinde karşılanır.

View tarafında runtime ile karşılanacağı için for içerisinde as ile türü belirlenebilir.

### ViewData

Yukarıda ki gibi datayı view'a taşımamızı sağlar.

ViewData\["products"];

```
public ActionResult Index()
{
    IList<Student> studentList = new List<Student>();
    studentList.Add(new Student(){ StudentName = "Bill" });
    studentList.Add(new Student(){ StudentName = "Steve" });
    studentList.Add(new Student(){ StudentName = "Ram" });

    ViewData["students"] = studentList;
  
    return View();
}
```

```
<ul>
@foreach (var std in ViewData["students"] as IList<Student>)
{
    <li>
        @std.StudentName
    </li>
}
</ul>
```

### TempData

TempData\["products"];

Cookie şeklinde olduğundan farklı bir action arası veri tasıma yapılabilir. Verinin serilize edilmesi gerekir. Eğer düz bir değişken gönderilecekse serilise edilmesine gerek yoktur.



