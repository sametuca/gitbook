# Link tanımlamalarını fonksiyon üzerinde yap

```
<!DOCTYPE html>
<html>
<body>
 
<a id="myAnchor" href="http://www.microsoft.com">Microsoft</a>
<button onclick="myFunction()">Change link</button>
 
<script>
function myFunction() {
  document.getElementById("myAnchor").innerHTML = "W3Schools";
  document.getElementById("myAnchor").href = "https://www.w3schools.com";
  document.getElementById("myAnchor").target = "_blank";
}
</script>

</body>
</html> 

```
