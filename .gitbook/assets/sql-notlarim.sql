select * from Products
select ProductName as samet ,ProductID as uca from Products

-- Kolonlar� �arpma/B�lme/��karma/Toplama
select p.ProductName,p.UnitsInStock * p.UnitPrice  as "Hepsi sat�l�r ise" from Products as p 

--Kolonlar� Birle�tirme
Select p.ProductName+' '+p.QuantityPerUnit from Products as p

--Herhangi bir i�lem
Select 3*5 as Sonuc

Select * from Products where UnitsInStock=UnitPrice * UnitsOnOrder

Select a.ProductName from Products as a where UnitsInStock = 0 and UnitsOnOrder>0

Select �r�nler.ProductName from Products as �r�nler where not �r�nler.ProductName='Alice Mutton'

-- Order by s�ralamad�r. desc ise i�i tersine �evirir
Select * from Products order by UnitPrice desc

Select * from Products order by UnitPrice asc,ProductName desc
--ascending [default]
--descending [desc]

Select * from Products where ProductName like 'ch%'
--'%ch' bas� ne olursa olsun sonu ch olacak
--'ch%' sonu ne olursa olsun basi ch olacak
--'%ch%' i�inde ch olan t�m kay�tlari getir

Select * from Products where UnitPrice between 10 and 50 order by UnitPrice
-- between = deger araligi verme

Select * from Products where CategoryID in(1,2)
--Kategori id si 1 ve iki olanlar. Metinsel ise tek t�rnak i�erisinde yaz�l�r

Select Count(*) as [�r�n Sayisi] from Products
--Bir tablodaki sat�r say�s�

Select Count(ProductName) from Products

Select Count(Region) from Customers

Select Min(UnitPrice) from Products
Select Max(UnitPrice) from Products
Select Avg(UnitPrice) from Products
--average = ortala demek

Select Sum(UnitPrice * Quantity) as Kazanc from [Order Details]

--kayd�n solundan yada sa��ndan 3 karakter al ve listele
Select left('Samet UCA',3)
Select left(ProductName,3) from Products

Select right('Samet UCA',3)
Select right(ProductName,3) from Products

--kayd�n ka� karakter oldu�unu sayar
Select len('Samet UCA')
Select LEN(ProductName) as sayi, ProductName from Products

--kayd�n ifadelerini, 
--k���k b�y�k harfe �evir.
Select lower('Samet UCA')
Select upper('Samet UCA')

--kayd�n bo�luklar�n� temizle
select trim('   samet uca   ')
select trim(ProductName) from Products where Trim(ProductName) = 'Chai' 

select * from Products where Len(ProductName)>10
--Select ltrim() soldaki bo�lu�u at
--Select rtrim() sa�daki bo�lu�u at

--�fadeyi tersten yaz
Select Reverse('Samet UCA')

--char index bir metin i�erisinde bir ifade aramaya yarar
--bir kelimede aranabilir
Select ProductName 
from Products 
where charindex(' ',ProductName,1)>0
Select charindex('m','Samet UCA',1)
--(hangi ifade aranacak, nerede aranacak, ka��nc� harften baslayacak)

Select replace('Samet UCA',' ','_')
--neyi de�i�tirmek istiyoruz 
--o metinde neyi de�i�tiricez ve 
--neyle de�i�tirecez

Select replace(ProductName,' ','_') from Products 

--ifadeyi par�ala
--(hangi ifade,nerden baslanacak,nereye kadar)
Select substring('Samet Uca',1,5)

--kayd�n ascii kars�l�g�n� getir
select ascii(ProductName) from Products

--say�ya kar��l�k gelen ifadeler
select char(24061994)

--kolondodaki ifadeleri tekrars�z getir
select distinct Country,City from Customers 
order by Country






