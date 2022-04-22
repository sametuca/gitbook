# Post İşlemleri

```
@using(html.beginform("Metodadi","Home",Formmetod.post))
{
<div class="form-group">
@html.labelfor(m=>m.ad)
	@html.textfor(m=>m.ad,new{@class="form-control"})
</div>
<button type="submit" class ="btn btn-success">Ekle</button>
Form buraya
	
}

[httpPost]
Public actionresult Yeni(Departman departman)
{
Db.Departman.add(departman);
Db.savechanges();
Return redirectoaction("index","departman");

}
```
