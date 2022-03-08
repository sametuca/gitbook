# Browserify - CommonJS

Browserify

Module kavramı için gerekli olan bir paket. Asenkron çalışmıyor. Birden fazla modül arasında ki bağımlılıkları çözüp bize bir bundle verir. Bizde o bundle üzerinde çalışmaya devam ederiz. -g global olarak kurulduğunda heryerden kaynak ve çıktı olarak dosya gösterip convert işlemi yaptırabiliyoruz.

commonjs( const samet = reqire('utils')) i kullanmak için gereken convert işlemi(tarayıcının anlayabileceği) browserify gerekir.

AMD kullanmak için ise requireJs gerekir.

AMD şöyle bir şeye benzemektedir.

define(\['m1','m2']), function(m1import,m2import) { function test() {

```
}
return {
test 
```

} }
