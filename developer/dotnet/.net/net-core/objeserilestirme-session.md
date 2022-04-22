---
description: ObjeSerileştirme (Session)
---

# ObjeSerileştirme (Session)

```
    Bir klasör içerisine yeni bir class içerisine yazılır
    public static class SessionExtensionMethods
    {
        public static void SetObject(this ISession session,string key, object value)
        {
            string objectString = JsonConvert.SerializeObject(value);
            session.SetString(key, objectString);
        }

        public static T GetObject<T>(this ISession session, string key, object value)where T:class
        {
            string objectString = session.GetString(key);
            if (string.IsNullOrEmpty(objectString))
            {
                return null;
            }
            T valueToDeserialize = JsonConvert.DeserializeObject<T>(objectString);
            return valueToDeserialize;

        }
    }
```

```
        public string Index()
        {
            HttpContext.Session.SetInt32("Yas",25);
            HttpContext.Session.SetString("İsim", "Samet");
            HttpContext.Session.SetObject("student",new Student { Email = "sametuca@mail.com", FirstName = "Samet", LastName = "Uca", ID = 1 });
            return "Session oluşturuldu";
        }
        public string GetSession()
        {
            return String.Format(
                "Hello {0},{1}. Student is {2}",
                HttpContext.Session.GetInt32("Yas"),
                HttpContext.Session.GetString("İsim"),
                HttpContext.Session.GetObject<Student>("student")
                );
        }
```
