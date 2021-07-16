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
>  var --> mutable (değiştirilebilir)
```swift
var source = "asd"
source = "xxx"
```

>  Bizim c# vb dillerdeki const ifadesinin Swift deki karşılıgı 'let' reserved keyword ' üdür.
>  Tabiki buda let ile tanımlanan variable 'larda değişiklik yapılamaz!
>  let --> immutable (değiştirilemez)
```swift
let url = "htpps://alicanyilmaz.com.tr"
url = "xxx" // gets an error

let baseUrl : String = "htpps://alicanyilmaz.com.tr"
baseUrl ="sample.com.tr" // gets an error
```

>  Hata vermez çünkü değeri değiştirmiyoruz initial value sunu veriyoruz.
```swift
let url : String
url = "sample.com.tr"
```

>  Swift de değişkenler initialize ederkende value 'su verilebilir sonradan da verebilirsin.
```swift
var classNumber : Int = 21
var courseNumber : Int
courseNumber = 2
```

>  Swift de type casting
```swift
var telephone : Int = Int(10.6) // type casting Double to Int

var numbers : Double = 123.4;
var takeNumbers : String = String(numbers); // type casting Double to String

var exactNumber : Int = 23
var notExactNumber : Double = 52.1

var floatingNumber : Double = Double(exactNumber)
var integerNumber : Int = Int(notExactNumber)
```

>  Swift de string sınıfının methodlarının kullanımları
```swift
var corse : String = "notation"
corse = corse.uppercased()
```

> Primitive Types (Int)
```swift
print("Int8 max value is : \(Int8.max)")
print("Int8 min value is : \(Int8.min)")

print(Int16.max)
print(Int16.min)
print(INT16_MIN)
print(INT16_MAX)

print(INT32_MAX)
print(Int32.min)

print(Int64.min)
print(Int64.max)

print(Int.min) // Int kullandıgımızda aslında Int64 kullanıyoruz Int = Int64
print(Int.max) // Bu yuzden Int ile Int64 ün min ve max değerleri aynıdır.

var numbers : Int = 1
var sizes = MemoryLayout.size(ofValue: numbers) //ekrana basarsak 8 yazar (yani 8 byte = 64 bit oldugunu bize söylüyor)

```

> String interpolation on Swift 
> Console.WriteLine($"{name} is {age} year{(age == 1 ? "" : "s")} old."); mesela c# da şekildeki gibi kullanılıyor.
> Swift de de aşağıdaki gibi "\()" şeklinde kullanılıyor.
```swift
var name : String = "alican"
var surname : String = "yilmaz"

var fullName : String = "\(name) \(surname)"
```

>  Swift de typeof kullanımı
```swift
var numbers : Int = 1
type(of: numbers)
var bigNumbers : Float = 1.34
type(of: bigNumbers)
```

>  Swift de string sınıfı ile birtakım işlemler
```swift
var bookmarkName : String = "this sample is very simple"
bookmarkName.replacingOccurrences(of: "is", with: "newvalue") // "is" yerlerine "newvalue" koyar
bookmarkName.replacingOccurrences(of: "a", with: "") //böylece a ların yerine "" koyarak a 'ları silmiş oluyoruz.
bookmarkName.append("and I realize this sample is very impressive")
```

>  print komutunda alt satıra gecebilmek için aşağıdaki gibi kullanım bulunmaktadır.Ayrıca değişken atama stillerine de dikkat edelim.
```swift
var name : String = "alican"
var surname : String = "yılmaz"
var age : Int = 26
var maybe : Bool = true

print("""
name : \(name)
surname : \(surname)
age : \(age)
isAdult : \(age > 18 ? " adult " : " child ")
""")

let res = age > 18
let isActive = maybe == true


print("""
name : \(name)
surname : \(surname)
age : \(age)
isAdult : \(age > 18 ? " adult " : " child ")
isActive  : \(isActive ? "active" : "passive")
""")

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
>  Fakat şu da unutulmamalıdır ki o zaman everything[0].uppercase() gibi array methodları calısmayacaktır zira array object type olarak değerlendirecek eklenen item'ları dolayısıyla array string method 'ları vs kullanılamaz.
```swift
var everything = ["game of thrones","The Witcher",12.9,44] as [Any] 

everything[0].uppercased() // gets an error
```

#### Set at Swift
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

>  Unordered Collection and Unique variable
>  Set yapısının array den farkı sırasız karısık bir sekilde elemanları tutar bu yuzden index ile erişim yapılamaz.
>  Ve Set içerisinde aynı elemandan birden fazla bulunamaz atsak bile Set içerisine eklemez.
```swift
var mySet : Set = [1,2,3,4,5,1,2,12] // unordered bir şekilde ve eleman tekrarına düşmeden sıralar
var myStringSet : Set = ["a","b","c","d","e","a","b"] // unordered bir şekilde ve eleman tekrarına düşmeden sıralar

var myNumberArray = [1,2,3,1,2,5,6,2,1] // array olusturuyoruz
var myNumberSet = Set(myNumberArray); // Array 'imizi Set olarak convertion yapıyoruz. Böylece array de tekrar eden value ' lardan kurtuluyoruz.

var mySetOne : Set = [1,2,3]
var mySetTwo : Set = [3,4,5]

var mySetThree : Set = mySetOne.union(mySetTwo) // Union ile iki Set 'i birleştiriyoruz.
```

#### Dictionary at Swift
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

> Dictionary yapısı "key : value " pair şeklinde çalışır.
```swift
var colorized = ["rose" : "pink" , "sea" : "blue" , "tree" : "green"]
colorized["sea"] // şeklinde key üzerinden 'blue' value değerine ulasabiliriz.
colorized["tree"] = "darkgreen" // key imiz üzerinden erişip karşılık gelen value değerini değiştirebiliriz.

colorized["mordens"] = "red" // sonradan dictionary 'imize yeni eleman ekledik.

var activities = ["run" : 100 , "swim" : 200 , "football" : 300] // dictionary yapısı ile çalışırken farklı type ile de çalışabiliriz.

activities["run"] // ekrana 100 sonucunu verir.
```
