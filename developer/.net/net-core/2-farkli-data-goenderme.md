# 2 Farklı Data Gönderme

```
using System.Diagnostics;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using OrnekUygulama.Models;
using OrnekUygulama.Models.ViewModels;

namespace OrnekUygulama.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public IActionResult Index()
        {
            //create new object
            var student = new Student
            {
                Name = "samet",
                LastName = "uca"
            };
            
            //create new object
            var teacher = new Teacher
            {
                Name = "ss",
                LastName = "dd"
            };
            
            //with view model
            /*var studentTeacher = new StudentTeacher
            {
                Student = student,
                Teacher = teacher
            };*/

            //with tupple
            var studentTeacher = (teacher, student);

            return View(studentTeacher);

            /*StudentTeacher studentTeacher = new StudentTeacher
            {
                Student = new Student
                {
                    StudentId = 1,
                    LastName = "uca",
                    Name = "samet"
                },
                Teacher = new Teacher
                {
                    Name = "samet",
                    LastName = "22"
                }
            };*/
        }

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public object Teacher { get; set; }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel {RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier});
        }
    }
}
```

```
List<Employee> employees = new List<Employee>()
            {
                new Employee{FirstName="Samet",LastName="Uca",ID=1},
                new Employee{FirstName="Samets",LastName="Ucas",ID=2}
            };
            List<string> cities = new List<string> { "İstanbul", "Ankara" };
            var model = new EmployeeListViewModel
            {
                Employee = employees,
                Cities = cities
            };
            
            return View(model);
```

?

![](<../../../.gitbook/assets/image (2).png>)
