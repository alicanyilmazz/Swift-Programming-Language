### IOS DEVELOPMENT NOTES


#### Swift Programming Language Syntax ####
-----------------------------------------------------------------------------------------------------------------------------------------------------------------



>  Swift de aslında c# da da var (int yerine değişkene var ile de baslayabiliyorduk) olan sadece yazımı farklı olan bir değişken tanımlama şekli var.
```swift
var name = "asd";  // implicitly declaration
var surname : String = "tanca"  // explicitly declaration
var numbers : Double = 123.4;
var status : Bool = false
```

>  Swift de aslında c# da da var (int yerine değişkene var ile de baslayabiliyorduk) olan sadece yazımı farklı olan bir değişken tanımlama şekli var.
```swift
var source = "asd"
source = "xxx"
```

>  Bizim c# vb dillerdeki const ifadesinin Swift deki karşılıgı 'let' reserved keyword ' üdür.
>  Tabiki buda let ile tanımlanan variable 'lar değişiklik yapılamaz!
```swift
let url = "htpps://alicanyilmaz.com.tr"
url = "xxx" // gets an error
```

>  Swift de type casting
```swift
var telephone : Int = Int(10.6) // type casting Double to Int

var numbers : Double = 123.4;
var takeNumbers : String = String(numbers); // type casting Double to String
```

>  Swift de string sınıfının methodlarının kullanımları
```swift
var corse : String = "notation"
corse = corse.uppercased()
```

#### Arrays at Swift
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

>  Swift de array kullanımı
```swift
var numbers = [1,2,3,4,5,6]
var movies = ["game of thrones","Reservior Dogs","The Witcher"] // Diğer dillerideki gibi Swift de de Array içerisinde tek bir type kullanilabilir.

movies[0].uppercased() // 0. index elemanının harflerini büyütür

movies.count // dizideki eleman sayısını verir

movies[movies.count-2] // sondan ikinci elemanı verir

movies.last // son elemanı verir

movies.sort() // array i sort eder

movies.append(9); // append() metodu ile array lere eleman ekleyebiliriz.Mesela c# da arraylere eleman eklemek için böyle bir method yok List yapısında var.

```

>  Swift de array ler içerisine farklı primitive types etc. de eklenebilir aşağıdaki gibi array sonuna 'as [Any]' denilerek.
>  Fakat şu da unutulmamalıdır ki o zaman everything[0].uppercase() gibi array methodları calısmayacaktır zira array object type da dolayısıyla array method 'ları kullanılamaz.
```swift
var everything = ["game of thrones","The Witcher",12.9,44] as [Any] 

everything[0].uppercased() // gets an error
```

#### Set at Swift
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

>  Tabiki buda let ile tanımlanan variable 'lar değişiklik yapılamaz!
```swift
var mySet : Set = [1,2,3,4,5,1,2,12]
var myStringSet : Set = ["a","b","c","d","e","a","b"]
```
