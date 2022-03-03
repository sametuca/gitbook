select * from Products
select ProductName as samet ,ProductID as uca from Products

-- Kolonlarý Çarpma/Bölme/Çýkarma/Toplama
select p.ProductName,p.UnitsInStock * p.UnitPrice  as "Hepsi satýlýr ise" from Products as p 

--Kolonlarý Birleþtirme
Select p.ProductName+' '+p.QuantityPerUnit from Products as p

--Herhangi bir iþlem
Select 3*5 as Sonuc

Select * from Products where UnitsInStock=UnitPrice * UnitsOnOrder

Select a.ProductName from Products as a where UnitsInStock = 0 and UnitsOnOrder>0

Select ürünler.ProductName from Products as ürünler where not ürünler.ProductName='Alice Mutton'

-- Order by sýralamadýr. desc ise iþi tersine çevirir
Select * from Products order by UnitPrice desc

Select * from Products order by UnitPrice asc,ProductName desc
--ascending [default]
--descending [desc]

Select * from Products where ProductName like 'ch%'
--'%ch' basý ne olursa olsun sonu ch olacak
--'ch%' sonu ne olursa olsun basi ch olacak
--'%ch%' içinde ch olan tüm kayýtlari getir

Select * from Products where UnitPrice between 10 and 50 order by UnitPrice
-- between = deger araligi verme

Select * from Products where CategoryID in(1,2)
--Kategori id si 1 ve iki olanlar. Metinsel ise tek týrnak içerisinde yazýlýr

Select Count(*) as [Ürün Sayisi] from Products
--Bir tablodaki satýr sayýsý

Select Count(ProductName) from Products

Select Count(Region) from Customers

Select Min(UnitPrice) from Products
Select Max(UnitPrice) from Products
Select Avg(UnitPrice) from Products
--average = ortala demek

Select Sum(UnitPrice * Quantity) as Kazanc from [Order Details]

--kaydýn solundan yada saðýndan 3 karakter al ve listele
Select left('Samet UCA',3)
Select left(ProductName,3) from Products

Select right('Samet UCA',3)
Select right(ProductName,3) from Products

--kaydýn kaç karakter olduðunu sayar
Select len('Samet UCA')
Select LEN(ProductName) as sayi, ProductName from Products

--kaydýn ifadelerini, 
--küçük büyük harfe çevir.
Select lower('Samet UCA')
Select upper('Samet UCA')

--kaydýn boþluklarýný temizle
select trim('   samet uca   ')
select trim(ProductName) from Products where Trim(ProductName) = 'Chai' 

select * from Products where Len(ProductName)>10
--Select ltrim() soldaki boþluðu at
--Select rtrim() saðdaki boþluðu at

--Ýfadeyi tersten yaz
Select Reverse('Samet UCA')

--char index bir metin içerisinde bir ifade aramaya yarar
--bir kelimede aranabilir
Select ProductName 
from Products 
where charindex(' ',ProductName,1)>0
Select charindex('m','Samet UCA',1)
--(hangi ifade aranacak, nerede aranacak, kaçýncý harften baslayacak)

Select replace('Samet UCA',' ','_')
--neyi deðiþtirmek istiyoruz 
--o metinde neyi deðiþtiricez ve 
--neyle deðiþtirecez

Select replace(ProductName,' ','_') from Products 

--ifadeyi parçala
--(hangi ifade,nerden baslanacak,nereye kadar)
Select substring('Samet Uca',1,5)

--kaydýn ascii karsýlýgýný getir
select ascii(ProductName) from Products

--sayýya karþýlýk gelen ifadeler
select char(24061994)

--kolondodaki ifadeleri tekrarsýz getir
select distinct Country,City from Customers 
order by Country






