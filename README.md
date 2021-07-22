### IOS DEVELOPMENT NOTES


#### Swift Programming Language Syntax ####
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

>  Swift basic operations.
```swift
let num1 = 5
let num2 = 20

let addition = num1 + num2
let subtract = num1 - num2
let division = num2 / num1
let multiplication = num2 * num1

let num3 : Int = 90
let num4 : Int = 7
var modIntegerResult : Int = num3 % num4

let num5 : Double = 90.2
let num6 : Double = 7.1
// Ondalıklı sayılarda mod truncatingRemainder ile alınabilir swift e ait guzel bir özellik.
var modFloatingPointNumbersResult : Double = num5.truncatingRemainder(dividingBy: num6)


var num7 = 10
num7 += 5
var num8 = 10
num8 -= 2
var num9 = 10
num9 /= 5
var num10 = 10
num10 *= 5
var num11 = 112
num11 %= 5

var prefixMessage : String = "this"
var SuffixMessage : String = "sample"
var message : String = prefixMessage + " is a " + SuffixMessage
var interpolationMessage : String = "\(prefixMessage) is a \(SuffixMessage)"

```

>  Swift Logical Operators
```swift
// Logical Operators

var isHigher : Bool = 4 > 1
print(5>=3)
print(1>3)
print(!(2==1))

var num1 : Int = 21
var num2 : Int = 34
print(num2==num1)

var sentence1 = "logic"
var sentence2 = "Logic"
print(sentence1==sentence2) // return false because this logic is case sensitive.
print(sentence1.uppercased()==sentence2.uppercased()) // return true

var sample1 : String = "Aesult"
var sample2 : String = "Communicate"
print(sample1>sample2) // C nin ASCII değeri > A nın ASCII değeri

print(2 != 7)
print(3 == 3)
print(!true)
print(!(num2==num1))

var myTrue = true
var myFalse = false

// && -> ve operatörü
// || -> or operatörü
var (k1,k2) = ("alican","yilmaz")
print(!(myTrue && myFalse) && !(k1 != k2))

var isAdult = true
var age = 22
var isAccepted : Bool?
isAccepted = (age >= 21 || isAdult)
print(isAccepted ?? false)

```

>  Swift de aslında c# da da var (int yerine değişkene var ile de baslayabiliyorduk) olan sadece yazımı farklı olan bir değişken tanımlama şekli var.
```swift
var name = "asd";  // implicitly declaration
var surname : String = "tanca"  // explicitly declaration
var numbers : Double = 123.4;
var status : Bool = false

// Bu sekildeki klasik tanımlamalarda yapılabiliniyor.
var res1 : Int = 1 , res2 : Bool = false , res3 : String = "message"
var val1 = 2 , val2 = 21.2 , val3 = true
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

let sizeofInt = MemoryLayout<Int8>.size // Int8 8 bit yani 1 byte demek ondan ekrana 1 basar
let sizeofBoolean = MemoryLayout<Bool>.size // Boolean ifade ise 1 veya sıfır yani sadece 1 bitten olusur fakat ekrana yine 1 (byte) basar 
// Cunku işlemci Ramdeki alan tahsisini yapar ve en az 1 byte (8 bitlik) alan tahsisi yapabilir ondan 1 çıktısını alırız.
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

#### Conditional Expression and Loops  at Swift
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

>  if - else statements
```swift
var operatingSystem : String = "IOS"
var usedMemoryRate : Int = 23
var errorExist : Bool = false
if operatingSystem == "IOS" && usedMemoryRate > 21 || !errorExist{
    print("IOS Device launched!")
}else if  operatingSystem == "ANDROID" && usedMemoryRate > 21 || !errorExist{
    print("ANDROID Device launched!")
}
else{
    print("No device could be initialized!")
}

var errorCode : Int = 63
if errorCode >= 20 && errorCode <= 79 { // [20,79] kapalı aralık yani sınırlar dahil (terminolojide ClosedRange olarak geciyor.)
    print("warning level")
} else if (80...100) ~= errorCode {
    print("danger level")
}else if (101...112).contains(errorCode){
    print("fatal level")
}else{
    print("there is no active error")
}
```
>  for loops

>  Swift programlama dilinde for in donguleri kullanılır birçok dilde var ama burda kullanımı daha geniş yerine klasik for yapısı yok.
```swift

// 1 den 12 ye kadar olan sayıları ekrana basar 1 ve 10 dahil.
for mynumber in 1...12 {
    print(mynumber)
}

// 1 den 4 e kadar olan sayıları ekrana basar.
for mynumber in 1..<5 {
    print(mynumber)
}

var message : String = "The shortest way to make dreams come true is to wake up."
var numberOfA : Int = 0
var numberOfAllCharacter : Int = 0
// string ifade içerisinde her bir karakteri dönüyoruz
for ch in message {
    if ch == "a" {
        numberOfA += 1
    }
}
print("number of a character is \(numberOfA)")

// underscore kullanımı (dart'dada vardı) ilgili parametreyi kullanmayacaksan ihtiyacın yoksa kod daha okunabilir olsun diye kullanılır.
for _ in message {
    numberOfAllCharacter += 1
}
print("number of all characters is :" + String(numberOfAllCharacter))

// ikinci bir underscore (_) kullanımı örneği
var baseValue : Int = 2
var exponentValue : Int = 3
var result : Int = 1

for _ in 1...exponentValue {
    result *= baseValue
}
print("result is \(result)")

// stride function kullanımı

// 2 den baslayıp 44 e kadar 7 şer şer artırarak ekrana basar fakat to değeri dahil değildir.
for eachValue in stride(from: 2, to: 44, by: 7) {
    print(eachValue)
}

// 2 den baslayıp 44 e kadar 7 şer şer artırarak ekrana basar fakat through değeri dahildir.
for val in stride(from: 2, through: 44, by: 7) {
    print(val)
}

// 20 den geriye dogru 20 , 17 , 14 .... şeklinde geriye sayar.
for val in stride(from: 20, through: 0, by: -3) {
    print(val)
}

// closedRange değişken ile for in kullanımı
let rangeOfItem = 0...10
for item in rangeOfItem {
    print(item)
}

// Bu sekilde de bir kullanımda bulunabiliriz 1 den 8 e kadar olan sayıları ekrana basar.
for number in 1..<9 {
    print(number)
}

// Nested Loops Örneği
for s1 in 1...3 {
    for s2 in 1...4 {
        print("---------------> \(s1),\(s2)")
    }
}

```

>  while loops
```swift
var textMessage : String = "alican"
var i : Int = 0

while i <= textMessage.count {
    print("every while value is \(i)")
    i=i+1
}

var counter : Int = 5
while counter<10 {
    print(counter)
    counter+=1
}

var randomNumber : Int = Int(arc4random_uniform(9))
```

>  repeat while loops
```swift
// repeat while loops aslında bildiğimiz klasik do-while yapısıdır.

var contactNumber : Int = 0

repeat{
    print("contactNumber is \(contactNumber)")
    contactNumber+=1
}while contactNumber < 5

// c# da vb de oldugu gibi 'break' ile donguyu kırabiliriz.

var hashList = [21,24,41,32,12,53,56,75,21,11,56,58,84,49]
var hashCounter : Int = 0
repeat{
    if hashList.contains(75) {
        print("item was founded!")
        break
    }
}while hashCounter <= hashList.count-1
```

>  switch case
```swift
let status : String = "warning"

switch status {
case "error":
    print("got and error")
case "danger":
    print("got and danger")
case "info":
    print("got and info")
case "warning":
    print("got and warning")
default:
    print("status type not defined!")
}

// İkinci bir örnek
let apiErrorCode = 1112

switch apiErrorCode {
case 231:
    print("authorization error!")
case 421:
    print("authentication error!")
case 1311:
    print("Server error!")
case 1112:
    print("Bad request error!")
default:
    print("Opps unknown stuation!")
}

// Swift de switch case yapısında c# , dart etc. gibi dillerde olmayan case lere condition yazma özelliği vardır

let employeeHourlySalary : Int = 16

switch employeeHourlySalary {
case 5...10:
    print("lower salary")
case 11...14:
    print("basic salary")
case 15...17:
    print("standart salary")
case 17...23:
    print("high salary")
case 23...Int.max:
    print("upperbound salary")
default:
    print("request is not valid")
}

// ikinci bir switch-case içerisinde condition kullanımı örneği görelim
var participantAge : Int = 14
var adultAgeLimit : Int = 23
var youngAgeLimit : Int = 18
var childAgeLimit : Int = 12

switch participantAge > 10 {
case participantAge >= childAgeLimit && participantAge <= youngAgeLimit:
    print("participant is child")
case participantAge >= youngAgeLimit && participantAge <= adultAgeLimit:
    print("participant is young")
default:
    print("there is no participant")
}
```

>  break and continue
```swift
// s değeri 5 olunca döngü kırılır ve donguden çıkılır.
for s in 1...10 {
    if s==5 {
        break
    }
    print(s)
}

// c değeri 5 olunca if kosulu sağlanacak ve continue keyword ü sayesinde direkt dongu cycle ına geri dönüp c=6 dan baslayacak 5 değeri print edilmeyecektir.
var c = 0
while c < 10 {
    c+=1
    if c==5 {
      continue
    }
    print(c)
}

// bir diğer break kullanım örneği
let sentence = "this way is hard , this way provide lot of new chance to you."
var requestedSentences : String = ""
for eachOf in sentence {
    if eachOf == "," {
        break
    }
    requestedSentences = requestedSentences + String(eachOf)
}
print(requestedSentences)

// İç içe döngülerde break kendisini ilk kapsayan en yakın oldugu döngüyü kırar.
for s1 in 1...5 {
    for s2 in 1...10 {
        if s1==s2 {
            print("break was runned. s2 : \(s2) - s1 : \(s1)")
            break
        }
    }
}
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
#### Optional Variables (Swift Terms) - Swift Programming Null Safety
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
> Öncelikle bizim backend teknolojimiz olan c# da aynı kod yapısı nasıl işliyor kısaca değinelim.
```c#
// c# codes
int? num;
int count = num ?? 2; // Use of unassigned local variable 'num' hatası alırız.
Console.WriteLine(num);

int? num = 4;
int count = num ?? 2; // Hata vermez sorun yok
Console.WriteLine(num); // ekrana 4
```

> Swift de optinal variables diye gecen aslında null safety dediğimiz konu.
```swift
// Null Safety
// Force Unwrap

var num : Int?
var count : Int = num ?? 2 //Herhangi bir hata vermez
print(count) // ekrana 2 basar
print(num) // ekrana 'nil' basar

var classNumber : Int? = 10
var sourceNumber : Int? = classNumber ?? 44
print(sourceNumber) // ekrana "Optional(10)\n" basar Optinal ile kendini koruma altına almaya çalışıyor.
print(sourceNumber!) // Force-unwrap işlemi ile değişkenin nil(null) olmayacağını derleyiciye garanti ediyoruz.

var crachNumber : Int?
print(crachNumber!) // Direkt Fatal Error nedenidir hem variable initialize etmedik hemde bunun nil(null olmayacagını) garanti ettik

```
