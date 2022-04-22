---
coverY: 0
---

# SignalR

İlk olarak bir hub sınıfı türetilir. Bu sınıf clientler arasındaki ilişkiyi sağlayacaktır.

Hubs adı ile bir klasör oluşturun.

Daha sonra içerisine myHubs şeklinde ismi değişebilir bir sınıf oluşturun ve Hubdan inherit edin.

Daha sonra

```
 public class MyHub : Hub
    {
        public async Task SendMessageAsync(string message)
        {
            await Clients.All.SendAsync("receiveMessage", message);
        }
    }
```

Sınıf bu şekilde olmalıdır.

await -> asenkron olduğunu

client sınıfının all sınıfının sendasync metodu 2 den fazla parametre alabilir.

"receiveMessage" clientlerde hangi fonksiyonun tetikleneceğini belirler.

message ise gelen mesajı yakalar. Şimdi client tarafına geçelim

`npm install jquery @microsoft/signalr`

daha sonra head kısmında min dosyaları gösterilir. signal başta olmalıdır.

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="signalr.min.js"></script>
    <script src="jquery.min.js"></script>
    <title>Document</title>
    <script>
        $(document).ready(function()
        {
            const connection = new signalR.HubConnectionBuilder().
            withUrl("http://localhost:58720/myhub").build();
            connection.start();
            $("#btn").click(function()
            {
                let message = $("#txtMessage").val();
                connection.invoke("SendMessageAsync",message).catch(
                    error=>console.log("Mesaj gönderilirken hata oluştu" +error));
                
            })
            connection.on("receiveMessage",message=>{
                let currentValue = $("#messages").val();
                $("#messages").val(currentValue+" "+message);
            })
        })
    </script>
</head>
<body>
    <div class="form-group col-md-6">
        <div class="input-group mb-3 mt-5">
            <input type="text" id="txtMessage" class="form-control" placeholder="Mesaj">
            <br>
            <input type="button" id="btn" class="form-control btn-success" value="Gönder">
        </div>

        <div class="input-group">
            <span class="input-group-text">Mesajlar</span>
            <textarea class="form-control" id="messages" aria-label="With textarea"></textarea>
          </div>
    </div>
</body>
</html>
```
