# Jquery OMDB API

```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="jquery-3.5.1.min.js"></script>
   
</head>

<body>
<input type="text" name="" id="searchInput" placeholder="Ara">
  <button type="submit" id="submit">Ara</button>
  <script>
    $("#submit").click(function (e) {
        let search = $("#searchInput").val();
        $.getJSON("http://www.omdbapi.com/?",{ apikey: "fd161998", s: search },function (data) {
            $.each(data.Search,function (index,value) {
                $.getJSON("http://www.omdbapi.com/?",{ apikey: "fd161998", i: value.imdbID },function (movieData) {
                        console.log(movieData.Title)
                  })
            })
        })
    })
           
    
   
    </body>

</html>

```
