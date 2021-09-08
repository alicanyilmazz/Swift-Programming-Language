### IOS DEVELOPMENT NOTES


#### Swift Programming Language Syntax ####
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

```diff
@@ Swift basic operations @@
```

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

```diff
@@ Swift Logical Operators @@
```
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

```diff
@@ Conditional Expression and Loops  at Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

```diff
@@ if - else statements @@
```
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

```diff
@@ for loops @@
```
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

// Nested Loops Sample
for s1 in 1...3 {
    for s2 in 1...4 {
        print("---------------> \(s1),\(s2)")
    }
}

// Nested Loops Sample
var fruit : [String] = ["orange","banana","melon","cucumber","tomato"]
var numberOfA : Int = 0

for eachfruit in fruit {
    for eachLetter in eachfruit {
        if eachLetter == "a" {
            numberOfA += 1
        }
    }
}
print(numberOfA)

// tuple with for loops
var numbers3 : [Int] = [10,20,39,140,50,60]
for (index,value) in numbers3.enumerated() {
    print("number3[\(index)] = \(value)")
}

// for kullanarak bir arrayin tersini nasıl alabiliriz.
var brands : [String] = ["Ford","Fiat","Hyundai","Honda","Ferrari"]
var reversedBrand = [String]()

for index in stride(from: brands.count-1, to: -1, by: -1){
    reversedBrand.append(brands[index])
}
print(reversedBrand)

// Birden Fazla Array in bir arada Kullanımı
// 3 Farklı veri tipindeki Array i for içerisinde kullanma
var persons : [String] = ["Jack","Morgot","Robie","Mia","Michael","Roselin","Nana"]
var ages : [Int] = [28,32,12,23,21,45,64]
var isMarried : [Bool] = [true,true,false,true,false,false,true]

for (index,eachPerson) in persons.enumerated() {
    print("\(index+1). person name : \(eachPerson) , age : \(ages[index]) is Married : \(isMarried[index] ? "Married" : "Not Married")")
}


```

```diff
@@ while loops @@
```

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
```diff
@@ repeat while loops @@
```

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
```diff
@@ switch case @@
```
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

```diff
@@ break and continue @@
```

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

```diff
@@ Arrays at Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

```swift
// Array Tanımlama Şekilleri
var numbers1 : [Int] = [] // Değer vermeyip tip vererek boş array olusturduk.
var numbers2 = [Int]() // tip vermeyip boş array oluşturduk (automatic cast edecek)
var numbers3 : [Int] = [10,20,39,140,50,60] // Hem değer verdik hemde tipini belirttik.
var numbers4 = [1,2,3,4,5,6,7] // Bu şekilde de tanımlama yapabiliriz xcode
var numbers5 : [Int] = Array(repeating: 0, count: 5) // 5 tane sıfır elemanı olan bir dizi olusturur.
var booleanNumbers : [Bool] = Array(repeating: true, count: 5); // 5 tane elemanı true olan dizi olusturur.

// Array elemanlarına erişim
let firstMember = numbers3[0]

// dizideki eleman sayısı
print("the number of element in the array is \(numbers3.count)")

// dizinin type ini ögrenme
print(type(of: numbers3))

//diziye eleman ekleme
numbers3.append(120)

//dizinin 3. elemanını değiştirme
numbers3[2] = 111

//dizinin 3. elemanına 35 ekleme
numbers3[2] += 35

// number3 dizisinin en büyük ve enküçük elemanları
let maxValue = numbers3.max()
let minValue = numbers3.min()

// dizi içerisinde eleman var mı?
if numbers3.isEmpty {
    print("array is empty")
}else{
    print("the number of element in the array is \(numbers3.count)")
}

// diziyi sort etmek
let sortedArray = numbers3.sorted()


// String dizisindeki kelimelerde gecen toplam a sayısı.
var fruit : [String] = ["orange","banana","melon","cucumber","tomato"]
var numberOfA : Int = 0

for eachfruit in fruit {
    for eachLetter in eachfruit {
        if eachLetter == "a" {
            numberOfA += 1
        }
    }
}
print(numberOfA)

// String Array lerde sorting işlemi
let sortedStringArray = fruit.sorted()


// number3 array indeki sayıların ortalamasını bulma
var sum : Double = 0.0
for eachNum in numbers3 {
    sum += Double(eachNum)
}
let avarageOfArray = Double(sum) / Double(numbers3.count)

// C de deki gibi duyarlılık virgülden sonraki iki basamak olacak sekilde formatlama işlemi yapar
let formattedavarageOfArray = String(format: "%.2f", avarageOfArray)

// tuple
for (index,value) in numbers3.enumerated() {
    print("number3[\(index)] = \(value)")
}

//diziye eleman ekleme aşağıdaki gibi idi.
numbers3.append(21)

// bir diziye baska bir diziyi ekleme
numbers3.append(contentsOf: numbers4)

// dizilerde method kullanımı
var personNames = ["Allen","Jack","Sophia","Michael","Jordan","Demi","Launa"]
let isPersonExist = personNames.contains("Jack")
if isPersonExist {
    print("exist")
}else{
    print("not exist")
}

// append den farklı olarak insert methodu ile belirtilen indexe elemanı ekler
personNames.insert("Alican", at: 2)

// belirtilen index deki elemanı siler
// 3.index de bulunan elemanı siler
numbers3.remove(at: 3)

// dizinin ilk elemanını diziden siler ve return olarakta silinen elemanı döner.
numbers3.removeFirst()

// dizinin son elemanını diziden siler ve return olarakta silinen elemanı döner.
numbers3.removeLast()

// dizinin tüm elemanlarını siler
numbers3.removeAll()

var numbers8 : [Int] = [10,20,39,140,50,60]

// dizinin son elemanının index değerini bulma
// number8 dizisindeki elemanın index ini bulmak istersek bize 6 döner yanı son elemanın index değerinden sonraki index değeri (60 ın index değeri 5 tir.)
print("last index is \(numbers8.endIndex)")

// yukarıdaki method sayesinde dizinin sonuna index değerinide kullanarak elemen eklemek için aşağıdaki gibi bir kullanımda da bulunabiliriz.
numbers8.insert(3, at: numbers8.endIndex)

//dizinin ilk elemanının index değerini verir yani 0
print("last index is \(numbers8.startIndex)")


// dizinin ilk ve son elemanına erişmek için first ve last kullanılır.
print(numbers8.first!)
print(numbers8.last!)

var sampleArr : [Int] = [10,20,31,39,140,31,50,4,1,3,22,31,177,190,51,12,60]
// sampleArr içerisinde 31 in ilk gectiği index değerini bize döner yani '2' değerini
print(sampleArr.firstIndex(of: 31)!)
// sampleArr içerisinde 31 in son gectiği (isterse 2 den fazla olsun farketmez sonuncunun index ini alır) index değerini bize döner yani '11' değerini
print(sampleArr.lastIndex(of: 31)!)

// Array ler ile closure kullanarak bazı yetenekler kazandıralim kodlarımıza
// sampleArr array inde bulunan elemanları gezer ve 151 den buyuk olan ilk elemanı gördüğünde bize döner.(177 değerini döner)
let member = sampleArr.first(where: {$0 > 151})
print(member!)

// first yerine firstIndex methodunu kullanırsakta bu sefer sartı sağlayan member ı değil onun index değerini bize döner.(12 değerini döner)
let memberIndex = sampleArr.firstIndex(where: {$0 > 151})
print(memberIndex!)


let personsInfo = ["Jack","Mia","Clara","Camela","Allen","Carta","Rosetta","Robin","Harper"]

// Aşağıda ise "a" içeren ilk ismi bize geriye döndürür.
let existingPerson = personsInfo.first(where: {$0.contains("a")})
print(existingPerson!) // Jack

// Aşağıda ise "a" içeren son ismi bize geriye döndürür.
let existingLastPerson = personsInfo.last(where: {$0.contains("a")})
print(existingLastPerson!) // Harper

// Aşağıda ise "a" içeren ilk ismin index değerini bize geriye döndürür.
let existingPersonIndex = personsInfo.firstIndex(where: {$0.contains("a")})
print(existingPersonIndex!)

// Aşağıda ise "a" içeren son ismin index değerini bize geriye döndürür.
let existingPersonLastIndex = personsInfo.lastIndex(where: {$0.contains("a")})
print(existingPersonLastIndex!)

// array içerisindeki elemanlara index bazlı erişme
var sectionNumber : [Int] = [21,32,34,2,12,45,66,33]
var _counter : Int = 0
for _ in sectionNumber {
    sectionNumber[_counter] = sectionNumber[_counter]+1
    _counter+=1
}
print(sectionNumber)

// Any Reserved Keyword Kullanımı

// Başlangıç değeri Int
var anyValue : Any = -12
print(anyValue)
print(type(of: anyValue))

// Double yapalım
anyValue = 12.3
print(anyValue)
print(type(of: anyValue))

// boolean yapalım
anyValue = false
print(anyValue)
print(type(of: anyValue))

// Any tipinden dizi tanımlayalım
// böylece farklı veri türlerini aynı array de tutmamıza izin verir.(bu durum unsafe dir)
var difArray : [Any] = [1,2,3,4,5,true,false,"air","cloud","pencil",10.2,2.3,0.3]

for d in difArray {
    print("value type is \(type(of: d)) - value is \(d)")
}

// Character veri tipine diziler üzerinde bakalım.

let letter1 = "a"
let letter2 : Character = "a"

// let letter3 : Character = "ab"  --> gets an error.

let letters : [Character] = ["A","g","C","f","K","j"]

let sentence : String = "Today the weather is very hot."
var characters = [Character]()  // boş bir karakter dizisi olusturduk.
for k in sentence {
    characters.append(k)
}
print(characters) // Output is : ["T", "o", "d", "a", "y", " ", "t", "h", "e", " ", "w", "e", "a", "t", "h", "e", "r", " ", "i", "s", " ", "v", "e", "r", "y", " ", "h", "o", "t", "."]


// Character Array Kullanımı Samples
// sentence değişkenine ait cümleyi tersine çevirelim.
// 1.yol //////
var reversedText1 = ""
var reversedTextIndex1 = characters.count-1

while reversedTextIndex1 >= 0 {
    reversedText1 += "\(characters[reversedTextIndex1])"
    reversedTextIndex1 -= 1
}
print(reversedText1)

// 2.yol //////
let sentence2 = "I will do what I must."
var characterArr = Array(sentence2) // Array() methodu String i Character Dizisine dönüştürür.
characterArr.reverse()
print(characterArr)
// Bunu tekrardan Character dizisinden String e nasıl cevirebiliriz dersekte aşağıdaki gibi casting işlemi yapmamız yeterlidir.
let unreversed = String(characterArr)


//Not reverse() methodu sadece String ifadelerde değil sayıları da tersine cevirmek için kullanılabilir (order etmez sıralamaz yani)
var sampleNumbers = [91,3,44,2,1,123,3,42,9]
sampleNumbers.reverse()
print(sampleNumbers)

let reversedNum = Array(sampleNumbers.reversed())  //sampleNumbers.reversed() ifadesi tersine cevirmez bu ReversedCollectionArray den kaynaklanır sekildeki gibi yapılmalıdır.
print(reversedNum)

// 3.yol //////
// Bu örnek diğerlerinden biraz farklı bir String array in tersini alıp baska bir array e copyalayacağız.Üstekiler Character Array idi.
var brands : [String] = ["Ford","Fiat","Hyundai","Honda","Ferrari"]
var reversedBrand = [String]()

for index in stride(from: brands.count-1, to: -1, by: -1){
    reversedBrand.append(brands[index])
}
print(reversedBrand)

// Birden Fazla Array in Bir arada Kullanımı
var persons : [String] = ["Jack","Morgot","Robie","Mia","Michael","Roselin","Nana"]
var ages : [Int] = [28,32,12,23,21,45,64]
var isMarried : [Bool] = [true,true,false,true,false,false,true]

for (index,eachPerson) in persons.enumerated() {
    print("\(index+1). person name : \(eachPerson) , age : \(ages[index]) is Married : \(isMarried[index] ? "Married" : "Not Married")")
}

// Bir Array e başka bir Array i ekleme //
var prefixNumbers : [Int] = [2,34,1,24]
var suffixNumbers : [Int] = [6,32,12,8]
var postfixNUmbers : [Int] = [11,25,32,44]

// 1. Yol Method Kullanarak
prefixNumbers.append(contentsOf: suffixNumbers)
// 2.Yol Method Kullanmadan
prefixNumbers+=postfixNUmbers
prefixNumbers += [99,100]


// Bir diziye eleman eklemek append ve insert kullanıyorduk
prefixNumbers.append(120)
// append den farklı olarak insert methodu ile belirtilen indexe elemanı ekler
prefixNumbers.insert(77, at: 2)
// Fakat tek elemanı yukarıdaki gibi ekleyebilir miyiz?
let ordinaryNumber = 21
prefixNumbers += [ordinaryNumber] //prefixNumbers += ordinaryNumber / gets an error tekil elemanıda += kullanmak istiyorsak sanki tek elemanlı bir diziymiş gibi ekleyebiliriz ancak.

// swapAt methodu ile Array de bulunan elemanları yer değiştirtir.
// Mesela aşağıdaki Array in ilk elemanı ile son elemanını yer değiştirtelim
var counterNumber = [4,35,64,12,11]
counterNumber.swapAt(0, counterNumber.count-1) // dizinin ilk ve son elemanı yer değiştirdi.

// drop methodları ile örneğin bir Array belirlediğimiz elemanından sonraki elemanlarını alıp yeni array ler olusturabiliriz.
var selectionArray = [2,4,523,53,21,67,43]
var firtDropArray = selectionArray.dropFirst(2) // [523, 53, 21, 67, 43] --> ilk iki elemanı almayıp yeni diziyi öyle oluşturmuş olduk.
var lastDropArray = selectionArray.dropLast(3) //  [2, 4, 523, 53] --> Array in son 3 elemanını almadan yeni bir Array olusturmus olduk.
var extendedSelection = selectionArray[0...4] // [2, 4, 523, 53, 21] --> Array in 0,1,2,3 .index elemanlarını
var allSelectionArray = selectionArray[0...(selectionArray.count-1)]
// dropFirst ve dropLast belirtilen elemanlar hariç gerisini almak içindi
// şimdi ise belirtilen elemanları almak için ne kullanacağız ona bakalım
var firstThreeElements = selectionArray.prefix(upTo: 2) // [2, 4] --> ilk 2 elemanı alır.
var lastThreeElements = selectionArray.suffix(3) // [21, 67, 43] --> son 3 elemanı alır.

var customerNames : [String] = ["Asana","Arthur","Rob","Marie","Morgot","Mellicue","Amber","Alice","Harper"]

// Array in son 3 elemanını bize getirir.
var selectedCustomers = customerNames[(customerNames.count-3)...(customerNames.count-1)] // ["Amber", "Alice", "Harper"] --> sondan 3 elemanı getirir.
var result = customerNames.prefix(while: {$0.contains("A")}) // ["Asana", "Arthur"] --> bu predicate ile şu olur ilk elemandan itibaren A içeren elemanları getirir eğer A içeren bulamadıgı yerden
// itibaren reject eder ve null döner eğer ilk elemandan itibaren kosul sağlanmazsa sonrasındaki eleman şartı sağlasada bile reject edip cıkar yani şartın en bastan itibaren sürekli sağlanması lazım
print(result)


```

```diff
@@ Set at Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

>  Unordered Collection and Unique variable
>  Set yapısının array den farkı sırasız karısık bir sekilde elemanları tutar bu yuzden index ile erişim yapılamaz.
>  Ve Set içerisinde aynı elemandan birden fazla bulunamaz atsak bile Set içerisine eklemez.
```swift
// Set yapısında veri tekrarı olmaz aynı veriden iki kere eklenemez!
var languages = Set<String>()
languages.insert("german")
languages.insert("turkish")
languages.insert("dutch")
languages.insert("arabic")
languages.insert("Franch")

print("the number of the \(languages.count)")

let (isAded , valueToBeAdded) = languages.insert("italiano")

if isAded {
    print("\(valueToBeAdded) was added.")
}else{
    print("\(valueToBeAdded) was not added.")
}

// Set içerisindeki belirtilen elemanı Set yapısından siler.
let deletionResult = languages.remove("german") ?? "there is not any issue."

var searchingLanguage = "dutch"
if languages.contains(searchingLanguage) {
    print("language was found.")
}else{
    print("language was not found.")
}

//1.Yol Set yapısı içerisindeki tüm elemanları Set içerisinden siler.
languages.removeAll()

//2.Yol Set yapısı içerisindeki tüm elemanları Set içerisinden siler.
languages = []

var ordinaryNumbers1 : Set<Int> = [1,2,3,4,5,6]
var ordinaryNumbers2 : Set<Int> = [4,5,6,7,8,9]
var ordinaryNumbers3 : Set<Int> = [4,5,99]
var ordinaryNumbers4 : Set<Int> = [99,100,10]
var values = [1,2,3,4,5]

// a.union(b)
// a.symmetricDifference(b)
// a.intersection(b)
// a.subracting(b)

// a.intersection(b)
let intersectionResult = ordinaryNumbers1.intersection(ordinaryNumbers2)
let sortedIntersectionResult = ordinaryNumbers1.intersection(ordinaryNumbers2).sorted()
for val in intersectionResult{
  print("intersection result : \(val)")
}

// a.union(b)
let unionResult = ordinaryNumbers1.union(ordinaryNumbers2).sorted()
for val in unionResult{
  print("union result : \(val)")
}

// a.symmetricDifference(b)
let symmetricDifferenceResult = ordinaryNumbers1.symmetricDifference(ordinaryNumbers2).sorted()
for val in symmetricDifferenceResult{
  print("symmetric difference result : \(val)")
}

// a.subracting(b)
let subractingResult = ordinaryNumbers1.subtracting(ordinaryNumbers2).sorted()
for val in subractingResult{
  print("subracting result : \(val)")
}

// İki kümenin kesişim kümesi boş ise ayrık kümedir.
if ordinaryNumbers1.isDisjoint(with: ordinaryNumbers4) {
    print("disjoint")
}else{
    print("not disjoint")
}

// Bir kümenin tüm elemanları başka bir kümede var ise
if ordinaryNumbers3.isSubset(of: ordinaryNumbers1) {
    print("is subset")
}else{
    print("is not subset")
}

let s1 : Set = [1,2,3,4,5]
let s2 : Set = [4,2,3,1,5]
let s3 : Set = [1,2,3,4,5]

if s1 == s2 {
    print("equal")
}else{
    print("not equal")
}

```
```diff
@@ Dictionary at Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

```swift

// var/let sözlükAdı : [keyTipi : valueTipi]
// var/let sözlükAdı = [keyTipi : valueTipi]()  --> boş bir dictionary yapısı olusturur.

var numbers = [String : Int]()
numbers["one"]=1
numbers["two"]=2
numbers["three"]=3
numbers["four"]=4

// !ÖNEMLİ : Swift de Dictionary lerde verilere erişmeye çalıştığımızda verileri çekme sırası rastgeledir veri sırayla gelmez.
for (key,value) in numbers {
    print("key is : \(key) -- value is : \(value)")
}

// keys leri yazdıralım
let _keys = numbers.keys
for eachKey in _keys {
    print(eachKey)
}

// value ları yazdıralım
let _values = numbers.values
for eachValue in _values {
    print(eachValue)
}

// Dictionary nin values larının değerlerinin toplamlarını bulalım.
let valuesOfDictionary = Array(numbers.values)
var sum = 0
for _sum in valuesOfDictionary {
    sum += _sum
}
print("Sum of the values is \(sum)")

// Dictionary nin keylerinden bir Array olusturalım.
let keysOfDictionary = Array(numbers.keys)
print(keysOfDictionary) // ["one", "two", "four", "three"]

// Any keyword unun Dictionary yapısı ile kullanımı
var persons = [String : Any]();
persons["name"] = "alican"
persons["surname"] = "yilmaz"
persons["isMarried"] = false
persons["age"] = 26

for (key,value) in persons {
    print("\(key) : \(value)")
}

// Dictionary deki tüm verileri siler.
persons = [:]

if persons.isEmpty {
    print("Dictionary is empty!")
}else{
    print("Dictionary is not empty and number of elements is \(persons.count)")
}

let users = [["first": "Lucy","last": "Johnson"],["first": "John","last": "Williams"]]
print(users[0]) // ["first": "Lucy", "last": "Johnson"]
print(users[0]["first"]!) // Lucy

let ordinaryNumbers: [[String:Int]] = [["first": 1,"second": 2],["third": 3,"fourth": 4]]
print(ordinaryNumbers) // [["first": 1, "second": 2], ["fourth": 4, "third": 3]]
print(ordinaryNumbers[0]) // ["second": 2, "first": 1]
print(ordinaryNumbers[0]["second"]!) // 2

typealias erorCodeType = [String:Int]
let erorCode : [erorCodeType] = [["UnhandledException": 1 , "Authorization": 2 ],["Authentication" : 3]]
print("The error code is : \(erorCode[0]["Authorization"]!)")

var countries = ["Turkey" : "Ankara","Germany" : "Berlin","England" : "London","France" : "Paris","Netherlands" : "Amsterdam"]
var citiesPopulation = ["İstanbul" : 20, "Ankara" : 5, "İzmir" : 3]

var h1 = ["name" : "arslan" , "age" : "24" , "gender" : "male"]
var h2 = ["name" : "ali" , "age" : "21" , "gender" : "male"]
var h3 = ["name" : "lara" , "age" : "18" , "gender" : "female"]

var arr = [[String : String]()] // Array içerisinde Dictionary ler alabilecek şekilde bir Array yapısı tasarlıyoruz.
arr.append(h1) // Array imize h1 Dictionary sini ekliyoruz.
arr.append(h2) // Array imize h2 Dictionary sini ekliyoruz.
arr.append(h3) // Array imize h3 Dictionary sini ekliyoruz.
print(arr)
print(arr.count) // 4 döner ilk initialize edilirken de boş bir dictionary olusturulduğu için onu da sayıyor.
//!Önemli print(dizi[0]["name"]!) dersek hata alırız çünkü h1 e değil dizi initialize edilirken boş olarak olusturulan dictionary e erişmeye çalıştık oysaki 2. index de h1 3.index de h2 4. index de h3 var
// Yukarıdaki hatadan kurtulmak dizinin 1.index elemanının h1 dictioanary sinden baslamasını sağlamak için ilk nil olan ilk elemanı silelim.
arr.removeFirst()
print(arr.count) // artık 3 değerini görüyoruz.

// yukarıdaki durum kafamızı karıstırmasın mesela bir örnek daha verelim.
let numbers1 = [Int]()
let numbers2 = [Int()] // [12] girmem ile [Int()] arasında bir fark yoktur.
print(numbers1.count)  // 0 değeri verir.
print(numbers2.count)  // 1 değeri verir ilk eleman nil dir fakat mevcuttur yani.

var student = [[String : String]()]
student.removeFirst()
student.append(h1)
student.append(h2)
student.append(h3)


var frontendAngular = ["owner" : "google" , "technology" : "angular" , "programminglanguage" : "typescript"]
var frontendReact = ["owner" : "facebook" , "technology" : "react" , "programminglanguage" : "javascript"]
var frontendVueJS = ["owner" : "evanyu" , "technology" : "vuejs" , "programminglanguage" : "javascript"]

var backendMicrosoft = ["owner" : "microsoft" , "technology" : ".net" , "programminglanguage" : "c#"]
var backendOracle = ["owner" : "oracle" , "technology" : "springboot" , "programminglanguage" : "java"]
var backendJS = ["owner" : "opensource" , "technology" : "nodejs" , "programminglanguage" : "JavaScript"]

var mobileIOS = ["owner" : "apple" , "technology" : "ios" , "programminglanguage" : "swift"]
var mobileAndroid = ["owner" : "google" , "technology" : "android" , "programminglanguage" : "kotlin"]
var mobileCrossPlatform = ["owner" : "google" , "technology" : "flutter" , "programminglanguage" : "dart"]

var techSigth = [String : Array<Dictionary<String,String>>]()
var frontend = [[String : String]()]
var backend = [[String : String]()]
var mobile = [[String : String]()]

frontend.removeFirst()
frontend.append(frontendAngular)
frontend.append(frontendReact)
frontend.append(frontendVueJS)

backend.removeFirst()
backend.append(backendMicrosoft)
backend.append(backendOracle)
backend.append(backendJS)

mobile.removeFirst()
mobile.append(mobileIOS)
mobile.append(mobileAndroid)
mobile.append(mobileCrossPlatform)

techSigth["frontendTechSight"] = frontend
techSigth["backendTechSight"] = backend
techSigth["mobileTechSight"] = mobile

for (key,value) in techSigth {
    print("---------------------------")
    print(key)
    print(value)
}
/*
OUTPUT :
---------------------------
mobileTechSight
[[:], ["owner": "apple", "technology": "ios", "programminglanguage": "swift"], ["owner": "google", "technology": "android", "programminglanguage": "kotlin"], ["programminglanguage": "dart", "owner": "google", "technology": "flutter"]]
---------------------------
frontendTechSight
[[:], ["programminglanguage": "typescript", "owner": "google", "technology": "angular"], ["owner": "facebook", "programminglanguage": "javascript", "technology": "react"], ["programminglanguage": "javascript", "owner": "evanyu", "technology": "vuejs"]]
---------------------------
backendTechSight
[[:], ["owner": "microsoft", "programminglanguage": "c#", "technology": ".net"], ["technology": "springboot", "programminglanguage": "java", "owner": "oracle"], ["technology": "nodejs", "programminglanguage": "JavaScript", "owner": "opensource"]]
*/

for (key,value) in techSigth {
    print("***************************")
    print("\(key)")
    for eachValue in value {
        print("-----------------------")
        print("owner : \(eachValue["owner"]!)")
        print("technology : \(eachValue["technology"]!)")
        print("programminglanguage : \(eachValue["programminglanguage"]!)")
    }
}

/*

 OUTPUT :
 
 ***************************
 backendTechSight
 -----------------------
 owner : microsoft
 technology : .net
 programminglanguage : c#
 -----------------------
 owner : oracle
 technology : springboot
 programminglanguage : java
 -----------------------
 owner : opensource
 technology : nodejs
 programminglanguage : JavaScript
 ***************************
 frontendTechSight
 -----------------------
 owner : google
 technology : angular
 programminglanguage : typescript
 -----------------------
 owner : facebook
 technology : react
 programminglanguage : javascript
 -----------------------
 owner : evanyu
 technology : vuejs
 programminglanguage : javascript
 ***************************
 mobileTechSight
 -----------------------
 owner : apple
 technology : ios
 programminglanguage : swift
 -----------------------
 owner : google
 technology : android
 programminglanguage : kotlin
 -----------------------
 owner : google
 technology : flutter
 programminglanguage : dart
 
 */

// Dictionary de Update ve Delete İşlemleri
var notes = [String : Int]()
print(notes.count)

notes["jack"] = 21
notes["morgot"] = 87
notes["isabelle"] = 45
notes["daniel"] = 65
print(notes)

//1.Yol Dictioanary Güncelleme
notes["jack"] = 79

//2.Yol Dictioanary Güncelleme
notes.updateValue(44, forKey: "jack")

//1.Yol Silme İşlemi
notes.removeValue(forKey: "jack")

//2.Yol Silme İşlemi
notes["daniel"] = nil

```
```diff
@@ Tupples in Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
> Named Tuple

```swift
let nameAndAge = (name:"Midhun", age:7)
 nameAndAge.name
 nameAndAge.age
 
 //Named Tuple da parametre adlarını verip değerlerini başlangıçta vermek zorunda değiliz.
 var book : (Name : String , Author : String)

```
> Unnamed Tuple

```swift
 // Başlangıçta Unnamed Tuple olarak tanımlanan tuple'ı sonradan etiket veremeyiz named tuple yapamayız.
 let nameAndAge = ("Midhun", 7)
 nameAndAge.0
 nameAndAge.1

```

> Major difference:

> If you need to return multiple values from a method you can use tuple.

> Tuple won't need any key value pairs like Dictionary.

> A tuple can contain only the predefined number of values, in dictionary there is no such limitation.

> A tuple can contain different values with different datatype while a dictionary can contain only one datatype value at a time

> Tuples are particularly useful for returning multiple values from a function. A dictionary can be used as a model object.

```swift
var _authors : (String,String)?
var _writers = ("gogol","victor hugo")

print(_writers.0)
print(_writers.1)

let webSite = (statusCode : 404 , statusMessage : "page not found!")
print("oops code \(webSite.statusCode) \(webSite.statusMessage)")

print(webSite.0)
print(webSite.1)

var book : (Name : String , Author : String)
book.Name = "Vadideki Zambak"
book.Author = "Balzac"

var authorName : String = ""
var bookName : String = ""
(bookName,authorName) = book
print("\(bookName) and \(authorName)")

var num1,num2 : Int
(num1,num2) = (3,5)
// yine tupple yapısı ile num1 ile num2 nin değerlerini yer değiştirtelim.
(num1,num2) = (num2,num1)


// Tupple içerisinde tupple kullanımı.
var person1 = (personName : "laura" , personSurname : "clark" , familyInformation : (isMarried : false ,numberofChildren : 0))
var person2 = (personName : "merve" , personSurname : "noyan" , familyInformation : (isMarried : true ,numberofChildren : 2))
print(person2.familyInformation.isMarried ? "Married" : "Single")
print(person2.familyInformation.numberofChildren)
print(person2.personName)
// yada yukarıdaki bilgilere index değerleri üzerinden de ulasabiliriz.
print(person2.2.0 ? "Married" : "Single")
print(person2.2.1)
print(person2.0)

// Tupple ile Array lerin bir arada Kullanımı
var technologies = (frontend : ["React JS","Angular","Vue JS"],githubStars : [120,111,142])
for (index,front) in technologies.frontend.enumerated() {
    print("technologies : \(front) and github stars \(technologies.githubStars[index])")
}

// fonksiyonlarda parametre olarak tupple kullanımı
func distancebetweentwopoints(firstPoint : (xCordinate : Int , yCordinate : Int), secondPoint : (xCordinate : Int , yCordinate : Int)){
    var xDifference = firstPoint.xCordinate - secondPoint.xCordinate
    var yDifference = firstPoint.yCordinate - secondPoint.yCordinate
    
    xDifference *= xDifference
    yDifference *= yDifference
    
    let distance : Double = Double(xDifference+yDifference).squareRoot()
    print("Distance of this points is \(distance)")
}

var cordinate1 = (xCordinate : 6 , yCordinate : 8)
var cordinate2 = (xCordinate : 3 , yCordinate : 4)
distancebetweentwopoints(firstPoint: cordinate1, secondPoint: cordinate2)


```

```diff
@@ Optional Variables (Swift Terms) - Swift Programming Null Safety @@
```
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

```diff
@@ Functions at Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

```swift


// void function tanımlama
func basicPrint(){
    // code blocks
    print("hello world.")
}

basicPrint()

// fonksiyonlara parametre tanımlama
func parameterPrint(message : String){
    print(message)
}

parameterPrint(message: "coffee for awake!")

func multiplyNumber(number1 : Int , number2 : Int){
    print(number1*number2)
}

multiplyNumber(number1: 2, number2: 4)

// Basic Calculator
func calculator(numberOne : Double , numberTwo : Double , process : String){
    let process = process.lowercased()
    var result : Double = 0
    switch process {
    case "sum":
        result = numberOne + numberTwo
        print(result)
    case "multiply":
        result = numberOne * numberTwo
        print(result)
    case "sub":
        result = numberOne - numberTwo
        print(result)
    case "divide":
        result = numberOne / numberTwo
        print(result)
    default:
        print("Undefined Process!")
    }
}

calculator(numberOne: 4, numberTwo: 6, process: "sum")

// fonksiyonlarda parametre olarak array kullanımı
func ageAnalysis(ages : [Int]){
    var minAge : Int = ages[0]
    var maxAge : Int = ages[0]
    
    for age in ages {
        if age < minAge {
            minAge = age
        }
        if maxAge < age {
            maxAge = age
        }
    }
    print("min age is : \(minAge)")
    print("max age is : \(maxAge)")
}

var myAgeSet : [Int] = [21,15,19,36,54,10,71,94,81]
print(myAgeSet.min()!) // Yukaridaki fonksiyonun yaptıgı iş için hazır method da var biz kendi fonksiyonumuzu yazıp gösterelim diye yaptık sadece
print(myAgeSet.max()!)
// Fonksiyonumuzu çağıralım
ageAnalysis(ages: myAgeSet)


// fonksiyonlarda parametre olarak array kullanımı 2.Örnek
func repeatingNames(names : [String]){
    var numberOfRepetingNames : [String : Int] = [:]
    
    for name in names {
        if numberOfRepetingNames[name] != nil {
            numberOfRepetingNames[name]! += 1
        }else{
            numberOfRepetingNames[name] = 1
        }
    }
    
    for name in numberOfRepetingNames {
        print("\(name.key) \(name.value)")
    }
}

var names : [String] = ["Jack","Morgon","Sam","Daniel","Morgon","Laura","Daniel","Clara","Morgon","James","Clara"]
repeatingNames(names: names)


// fonksiyonlarda parametre olarak kompleks array tipi kullanımı - key String value Float array
func mostSuccessfulStudent(lectureClass : [String : [Float]]){
    var maxAvarage : Float = -1.0
    var bestStudent = ""
    for student in lectureClass {
        let visaGrade : Float = student.value[0]
        let finalGrade : Float = student.value[1]
        let avarage : Float = visaGrade * 0.4 + finalGrade * 0.6
        
        if avarage > maxAvarage {
            bestStudent = student.key // name of the best student
            maxAvarage = avarage
        }
        
    }
    
    let visaGrade : Float = lectureClass[bestStudent]![0]
    let finalGrade : Float = lectureClass[bestStudent]![1]
    print("""
     Name of the best student name is \(bestStudent)
     and visa grade is \(visaGrade)
     and final grade is \(finalGrade)
    """)
    
}

var studentGrades : [String : [Float]] = ["Mike" : [45,12] ,"Daniel" : [56,87],"Jack":[88,99],"Ramsay":[45,66],"Nora":[86,54],"Fiona":[42,38]]
mostSuccessfulStudent(lectureClass: studentGrades)

// Int Parametre Alıp Geriye String Değer Döndüren Fonksiyon
func isOddOrEven(number : Int) -> String{
    if number % 2 == 0 {
        return "even"
    }else{
        return "odd"
    }
}

for counter in (1...10) {
    print("\(counter) is \(isOddOrEven(number: counter))")
}

// Parametre Olarak Int Array Alıp Geriyede Int Array Döndüren Fonksiyonlar
func isNegativeInteger(numbers : [Int]) -> [Int]{
    var negativeNumbers : [Int] = [Int]()
    
    for val in numbers {
        if val < 0 {
            negativeNumbers.append(val)
        }
    }
    return negativeNumbers
}

var complexNumbers : [Int] = [10,-20,0,-10,40,60]
var negatives = isNegativeInteger(numbers: complexNumbers) // [-20, -10]


// Parametre Olarak String Array Alıp Geriyede String Array Döndüren Fonksiyonlar
func makeUppercase(letters : [String]) -> [String]{
    var _letters : [String] = [String]()
    
    for var val in letters {
        val = val.uppercased()
        
        if _letters.contains(val) == false {
            _letters.append(val)
        }
    }
    return _letters
}

var sampleObjects = ["penCil","PenCil","Car","phone","Table","door","Mount","aNimal","Phone","game","Laptop","caR","bowl"]
makeUppercase(letters: sampleObjects)

// Fonksiyonlarda Tupple Yapısı ile Birden Fazla Parametre Döndürmek
func calculateValue(values : [Int]) -> (minVal : Int , maxVal : Int , sumOfVal : Int , multiplyVal : Int){
   var _minVal = values[0]
   var _maxVal = values[0]
   var _sumOfVal = 0
   var _multiplyVal = 1
    
    for num in values {
        if num < _minVal {
            _minVal = num
        }
        else if num > _maxVal{
            _maxVal = num
        }
        
        _sumOfVal += num
        _multiplyVal *= num
    }
    return (_minVal,_maxVal,_sumOfVal,_multiplyVal)
}
let numbersToCalculate : [Int] = [1,-2,3,4,5,6,20]
let numbersToCalculated = calculateValue(values: numbersToCalculate)
print(" min value is : \(numbersToCalculated.minVal) max value is \(numbersToCalculated.maxVal) sum of the numbers is \(numbersToCalculated.sumOfVal) multiply of the numbers is \(numbersToCalculated.multiplyVal)")


// Yukarıdaki örneği bu seferde Array kullanarak yapalım.
func calculateArray(values : [Int]) -> [Int]{
    var _minVal = values[0]
    var _maxVal = values[0]
    var _sumOfVal = 0
    var _multiplyVal = 1
     
     for num in values {
         if num < _minVal {
             _minVal = num
         }
         else if num > _maxVal{
             _maxVal = num
         }
         
         _sumOfVal += num
         _multiplyVal *= num
     }
     return [_minVal,_maxVal,_sumOfVal,_multiplyVal]
}

let calculatedArray = calculateArray(values: numbersToCalculate)
print(" min value is : \(calculatedArray[0]) max value is \(calculatedArray[1]) sum of the numbers is \(calculatedArray[2]) multiply of the numbers is \(calculatedArray[3])")


// Fonksiyonlarda İç İçe Tupple döndürmek
func classInformation(data : [String : Int]) -> (heaviestPerson : (name : String , weight : Int),avarageWeight : Double){
    var mostHeaviest = -1
    var avarage : Double = 0.0
    var sum : Int = 0
    var name : String = ""
    
    for person in data {
        if person.value > mostHeaviest {
            mostHeaviest = person.value
            name = person.key
        }
        sum += person.value
    }
    avarage = Double(sum) / Double(data.count)
    return ((name,mostHeaviest),avarage);
}

var weights : [String : Int] = ["Jack" : 55 , "Morgot" : 39 , "Belluci" : 44, "Ferra" : 45 ,"Michael" : 54]
var weightResult = classInformation(data: weights)
print("\(weightResult.heaviestPerson.name) and \(weightResult.heaviestPerson.weight) and \(weightResult.avarageWeight)")


// Function Overloading
func sumNumbers(pNumber1 : Int , pNumber2 : Int){
    print(pNumber1 + pNumber2)
}
func sumNumbers(number1 : Int , number2 : Int) -> Int{
    return  number1 + number2
}
func sumNumbers(number1 : Double , number2 : Double) -> Double{
    return  number1 + number2
}
func sumNumbers(numbers : [Int]) -> Int{
    var sum : Int = 0
    for val in numbers {
        sum += val
    }
    return sum
}
var myExamGrades = [10,20,30,45,64,21]
print(sumNumbers(numbers: myExamGrades))


// Bir Tane Daha Function Overloading Örneği Yapalım
func calculateArea(edge : Double){
    print("Area of square \(edge*edge)")
}

func calculateArea(edge1 : Double , edge2 : Double){
    print("Area of Rectangle \(edge1*edge2)")
}

func calculateArea(radius : Double){
    var area = Double.pi * radius * radius
    print("Area of Circle \(area)")
}

func calculateArea(edge1 : Double , edge2 : Double ,edge3 : Double){
    var circumference : Double = edge1 + edge2 + edge3
    var u : Double = circumference / 2
    var area = (u * (u-edge1) * (u-edge2) * (u-edge3)).squareRoot()
    print("Area of triangle \(area)")
}

calculateArea(edge: 4)
calculateArea(radius: 4)
calculateArea(edge1: 4, edge2: 3)
calculateArea(edge1: 3, edge2: 4, edge3: 5)

// Optional Parameters and Variadic Function (c# da da var) -> Parametrelere Varsayılan Değer Atama 'Variadic Function' Kavramı
func printData(message : String = "There is not any message!"){
    print(message)
}
printData()
printData(message: "Call to RollBack function.")

// Diğer Optional Parameters Örneğimiz
func calculateExponent(base : Int , exponent : Int = 2) -> Int{
    var result = 1
    for _ in 1...exponent {
        result *= base
    }
    return result
}
print(calculateExponent(base: 3))
print(calculateExponent(base: 3, exponent: 3))

// Swift de Variadic Function Kullanımı -> C# daki params keywordu yani

/*
 
 Kısaca c# da nasıldı bunu görmek için aşağıdaki linki kullanınız.
 public static void UseParams(params int[] list){}
 public static void UseParams2(params object[] list){}
 
 UseParams(1, 2, 3, 4);
 UseParams2(1, 'a', "test");
 
 daha detaylı örnekler için aşağıdaki msdn linkini kullanınız.
 https://docs.microsoft.com/tr-tr/dotnet/csharp/language-reference/keywords/params

*/

// Fonksiyonu Variadic Function Kullanarak Aşağıdaki gibi yazalım.
func employeeGradesAvarage (notes : [Double]) -> Double{
    var sum : Double = 0
    for note in notes {
       sum += note
    }
    return sum / Double(notes.count)
}

// Yukarıdaki Fonksiyonu Variadic Function Kullanarak Yazalım.
func classGradesAvarage (notes : Double...) -> Double{
    var sum : Double = 0
    for note in notes {
       sum += note
    }
    return sum / Double(notes.count)
}

print(classGradesAvarage(notes: 10,22,11,30,23,45,21))

// Önemli! : print() methodu tanımına da bakarsanız onunda Variadic Function oldugunu görürsünüz.

// Fonksiyonların 'inout' özelliği

/*
Bunu Göstermeden önce c# da bu işlem nasıl olurdu ona bakalım isterseniz

 public static void change(int a , int b)
         {
             int temp = a;
             a = b;
             b = temp;
             Console.WriteLine($"a is {a} and b is {b}");
         }
 change(2,31);
 --> c# da herhangi bir sorun olmadan değerler değişir herhangi bir problemde olmaz.
 
*/

/*
// SWIFT de aynı işlemi yapmaya çalışırsak.
Cannot assign to value: 's1' is a 'let' constant ve Cannot assign to value: 's2' is a 'let' constant hatası verir
Çünkü Swift de s1 ve s2 gibi parametrelerin onunde yazılmasada default 'let' tanımlayıcısı vardır o yuzdende swap func gibi func yazmak istediğimizde variable larda değişiklik yapamayız.
Bu problemi aşmak için inout özelliğini kullanacağız.
func valueChange1(s1 : Int , s2 : Int)
{
    var temp = s1
    s1 = s2
    s2 = temp
}
 
*/

// inout --> c# daki, ref veya out kelimeleri aynı şeydir yani inout ile değişkenin değerini değil referansını fonksiyona gönderiyoruz.
// yani call by value değil call by reference yapmamızı sağlıyor.
// Önemli! : inout ile call by reference(&) yaptıgımızdan değişkenlerdeki değişimler değişkenin kendisinde de gerçekleşir.
func valueChange2(s1 : inout Int , s2 : inout Int)
{
    var temp = s1
    s1 = s2
    s2 = temp
}

var n1 : Int = 3
var n2 : Int = 6
valueChange2(s1: &n1, s2: &n2)

// inout kullanımına bir örnek daha
func doubleIt(s1 : inout Int , s2 : inout Int){
    s1 = s1 * 2
    s2 *= 2
}

func doubleIt(numbers : inout [Int]){
    for i in (0...(numbers.count-1)) {
        numbers[i] *= 2
    }
}

var s1 = 2 , s2 = 3 , s3 = 4
doubleIt(s1: &s1, s2: &s2)
print("1. number is : \(s1)")
print("2. number is : \(s2)")
var sArray = [2,3,4]
doubleIt(numbers: &sArray)


// * if let Yapısı * //

var sentence : String = "12" // 12 girdiğimizde -> if içerisi çalışır 'a' girdiğimizde ise -> else içerisine girer.
var sentence1 = Int(sentence)

if let sentence2 = Int(sentence){
    // sentence2 değişkene bir değer atanır ise
    print("This is a number and number's value is  \(sentence2)")
}else{
    // sentence2 değişkene bir değer atanmadı
}

// Swift VS c# karşılaştırması

// A.) Swift
// Dikkat -> Variable 'kubernates' used before being initialized hatası alırız.
/*
 var kubernates : String
 print(kubernates)
*/

// A.) c#
// Dikkat -> Local variable 'name' might not be initialized before accessing hatası alırız.
/*
 string name;
 Console.WriteLine(name);
*/

// B.) Swift
var salary : [String : Int] = ["Jack" : 2700 , "Michael" : 9700 , "Rose" : 1580]
let employeeName = "Rosse"
let _salary = salary[employeeName] // _salary : Int? --> şeklinde optional dır.Çünkü ilgili employee name bulunamıyabilir de o zaman nil olacaktır _salary.
//print(_salary) // Optional(1580) --> çıktısını verir yukarıdaki nedenden dolayı
//print(_salary!) // 1580 --> Optional ifadesinden kurtulmak için Force Unwrapped yapıyoruz. Çünkü swiftde nil gelebilme ihtimali oldugundan swift optional olarak işaretler.

// Bunun gibi durumlarda daha güvenli bir şekilde yukardaki sorunu if let yapısı ile çözelim.
if let salaries = salary[employeeName]{
    print(salaries)
}else{
    print("salaries is nil.")
}

// A.) c#
// Dikkat -> c# da ilgili dictionary de bu key olmayıp null gelebilir fakat bundan kaynaklanacak hatayı ancak run time da alırız.
/*
 Dictionary<string, string> openWith = new Dictionary<string, string>();
 openWith.Add("txt", "notepad.exe");
 openWith.Add("bmp", "paint.exe");
 Console.WriteLine(openWith["olmaz"]);
*/

// Optional olarak tanımlanan değişkenlere kod akışı içerisinde nil değer atanabilir burda yaşanabilecek hatalardan if let yapısı ile kurtulabiliriz.
var myFavouriteSong : String? = "Day and night."
myFavouriteSong = nil

if let favouriteSong = myFavouriteSong{
    print("\(favouriteSong)")
}else{
    print("myFavouriteSong is nil")
}

// Array ler de if let yapısı kullanımı

var oceanNumbers : [Double] = [10,20,30,40,50]
var firstVal = oceanNumbers.first
print(firstVal) // Optional(10.0) --> Çünkü array in içi boş olabilir ve .first ile ilk elemanı aldıgımızda bu da nil gelebilir.
print(firstVal!) // 10.0 --> Force Unwrap ile dizinin ilk elemanının nil olmayacağını garanti ettik
print(firstVal ?? 0) // Bu şekilde de nil olma durumuna karsı bir önlem almış oluruz.
// En mantıklı çözüm ise if let ile optional dan kaynaklanabilecek bu problemin önlemini almış oluruz.
if let val = firstVal{
    print("The first element is \(val)")
}else{
    print("There is not any element in the array.")
}

// Şöyle bir örnek daha verelim,
let lastVal = oceanNumbers.last
// let squreOfArr = pow(lastVal!, 3) --> Value of optional type 'Double?' must be unwrapped to a value of type 'Double' hatası alırız.
let squreOfArr = pow(lastVal!, 3) // Forde Unwrap ile lastVal nin boş olmadıgı garanti ediyoruz derleyiciye fakat array bos cıkarsa vs hata alırız unutmayalım.
let squreOfArr2 = pow(lastVal ?? 0, 3) // Yada default value atayarak çözmeye çalışırız.
// Yada en efektif yol olan 'if let' yapısı ile sorunu çözebiliriz.
if let endOfElement = oceanNumbers.last{
    print(endOfElement)
}else{
    print("The array is empty.")
}

// Note !
// Optional Varible 3 farklı şekilde tanımlanabilir.
let str1 : String?
let str2 : Optional<String>
let str3 : Optional = ""

// Fonksiyonlarda Optional Parametre Kullanmak Veya Optional Değer Döndürmek

// Fonksiyonlardan Optional Parametre Döndürme (null döndürebilme) nasıl yapılır.
func numberOfEdge(shape : String) -> Int?{
    switch shape {
    case "triange":
        return 3
    case "rectangle":
        return 4
    case "pentagon":
        return 5
    case "hexagon":
        return 6
    default:
        return nil
    }
}

func writeNumberOfEdge(shape : String){
    if let numberOfEdge = numberOfEdge(shape: shape){
        print("\(shape) -> \(numberOfEdge)")
    }else{
        print("this shape not defined by system!")
    }
}

let k1 = "pentagon"
writeNumberOfEdge(shape: k1)
let k2 = "poligon"
writeNumberOfEdge(shape: k2)

// Başka bir optinal parametre döndürme örneği verelim.
func getFirstMember(data : [String]) -> String?{
    if data.count > 0 {
        return data[0] // dizinin en azından bir elemanı oldugu için 0. indisi döndürürken hata vermez.
    }
    return nil
}

let browser = ["google","yahoo","yandex"]

if let first = getFirstMember(data : browser){
    print("first element is \(first)")
}else{
    print("browser not found!")
}

// Fonksiyonlarda Optional Parametre Kullanmak
// İç içe if let ler kullanmamız gerekirse aşağıdaki gibi değilde sonraki örnekdeki gibi yapabilirsiniz.
/*
func hypotenuse(edge1 : Double? , edge2 : Double?) -> Double? {
    if let _edge1 = edge1{
        if let _edge2 = edge2 {
          
        }
    }else{
        
    }
}
*/

func hypotenuseCalculate(edge1 : Double? , edge2 : Double?) -> Double? {
    if let _edge1 = edge1 , let _edge2 = edge2{
        var hypotenuse = pow(_edge1,2) + pow(_edge2, 2)
        hypotenuse = hypotenuse.squareRoot()
        return hypotenuse
    }
    return nil
}


var nmr1 = Double("5") // nmr1 : Double? --> nmr1 in Double Optional oldguna dikkat edelim.

// var nmr2 : Double = Double("sa") // nmr2 : Double --> nmr2 in de Optinal olmadığına dikkat edelim ve hata alırız o yuzden tipi biz belirlemek yerine yukarıdaki gibi otomatiğe castinge bırakalım

var nmr2 = Double("7a")

var nmr3 = Double("3")! // nmr3 artık Optinal değil bu şekilde de kullanabiliriz.

if let hipo = hypotenuseCalculate(edge1: nmr1, edge2: nmr3) {
    print("hypotenuse is \(hipo)")
}else{
    print("edge data is wrong.")
}

// Swift de Recursive Fonksiyonlar

// 1.Örnek
func countBackwards(number : Int){
    print(number)
    if number > 0 {
        countBackwards(number: number-1)
    }
}

countBackwards(number: 5)

// 2.Örnek
func callableFunc(numberOfFunc : Int){
    print("call was begin.")
    if numberOfFunc > 1 {
        print("callableFunc(\(numberOfFunc)) --> callableFunc(\(numberOfFunc-1))")
        callableFunc(numberOfFunc: numberOfFunc-1)
    }
    print("callableFunc(\(numberOfFunc)) == \(numberOfFunc)")
}

callableFunc(numberOfFunc: 5)

// 3.Örnek
func calculateFactoriel(val : Int) -> Int {
    if val == 1 {
        return 1
    }else{
        return val * calculateFactoriel(val: val - 1)
    }
}

print(calculateFactoriel(val: 4))

// 4.Örnek
func calculateFibonacci(numberOfStep : Int) -> Int {
    if numberOfStep <= 2 {
        return 1
    }else{
        return calculateFibonacci(numberOfStep: numberOfStep - 1) + calculateFibonacci(numberOfStep: numberOfStep - 2)
    }
}

print(calculateFibonacci(numberOfStep: 7))

// 5.Örnek
func takePower(x : Int , y : Int) -> Int{
    if y==0 {
        return 1
    }else{
        return x * takePower(x: x, y: y - 1)
    }
}

print(takePower(x: 2, y: 5))


```


```diff
@@ Struct at Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

```swift

struct Car{
    var brandName : String
    var model : String
    var brandReleasedYear : Int
    var fuelConsumption : Double
    var ncap : Double
}

var car1 : Car = Car(brandName: "mercedes", model: "sclass", brandReleasedYear: 1992, fuelConsumption: 4.7, ncap: 4.7)
var car2 : Car = Car(brandName: "bmw", model: "m3", brandReleasedYear: 1910, fuelConsumption: 5.2 , ncap: 4.67)
var car3 : Car = Car(brandName: "audi", model: "a4", brandReleasedYear: 1907, fuelConsumption: 4.2 , ncap: 4.34)

if car1.fuelConsumption > car2.fuelConsumption {
    print("car1 fuel consumption is higher than car2")
}else{
    print("car2 fuel consumption is higher than car1")
}

func compareCar(firstCar : Car , secondCar : Car) -> Car{
    var carScore = (firstCarScore : 0 , secondCarScore : 0)
    
    if firstCar.fuelConsumption > secondCar.fuelConsumption {
        carScore.secondCarScore += 1
    }else{
        carScore.firstCarScore += 1
    }
    
    if firstCar.ncap > secondCar.ncap {
        carScore.firstCarScore += 1
    }else{
        carScore.secondCarScore += 1
    }
    
    if carScore.firstCarScore > carScore.secondCarScore {
        return firstCar
    }
    return secondCar
}

var betterCar = compareCar(firstCar: car1, secondCar: car2)
print("Better car model : \(betterCar.model) and brandName : \(betterCar.brandName)")


// Struct İçerisinde Fonksiyon ve Başka Bir Struct Tanımlama
struct Person{
    var name : String
    var surname : String
    var yearOfBirth : Int
    
    func calculateAge(age : Int) -> Int {
        return 2020 - age
    }
    
    func printPersonalInformation() {
        print("name : \(name) surname : \(surname) year of the birth : \(yearOfBirth)")
    }
}

var person1 = Person(name: "alican", surname: "yilmaz", yearOfBirth: 1995)
person1.printPersonalInformation()


// Şimdide iç içe struct kullanalım.
struct Student {
    var studentId : Int
    var studentInfomation : Person
}

var student1 : Student = Student(studentId: 231, studentInfomation: person1)
student1.studentInfomation.printPersonalInformation()
print(student1.studentInfomation.calculateAge(age: person1.yearOfBirth))

// Struct içerisinde Array olarak struct kullanalım.

struct StudentClass{
    var classNumber : String
    var classGroup : [Student]
    
    func printClass() {
        for eachClass in classGroup {
            print(eachClass.studentInfomation.printPersonalInformation())
        }
    }
}

// Struct larda init Kullanımı
struct OperatingSystem{
    var name : String
    var publisher : String
    var numberOfVersion : Int
    var numberOfUser : Double
    var isActive : Bool
    var lastVersionName : String // Bunu init parametrelerine eklemedik
    var isOpenSource : Bool = false // eğer parametreli init içerisinde de initialize etmek istemiyorsak direrk field alanında default value atayarak da bu işlemi yapabiliriz.
    
    init(name : String , publisher : String , numberOfVersion : Int , numberOfUser : Double , osIsActive : Bool){
        self.name = name
        self.publisher = publisher
        self.numberOfVersion = numberOfVersion
        self.numberOfUser = numberOfUser
        isActive = osIsActive
        lastVersionName = "version is not defined." // Parametrelere eklemedik ama initialize etmek zorundayız.
    }
    
    init() {
        name = "macos"
        publisher = "apple"
        numberOfVersion = 12
        numberOfUser = 4.2
        isActive = true
        lastVersionName = "Monterey"
        isOpenSource = false
    }
}

var windows : OperatingSystem = OperatingSystem(name: "windows", publisher: "microsoft", numberOfVersion: 11, numberOfUser: 5.2, osIsActive: true)
print("\(windows.name) \(windows.publisher) \(windows.numberOfUser) \(windows.lastVersionName)")
var macos : OperatingSystem = OperatingSystem()
print("\(macos.name) \(macos.publisher) \(macos.numberOfUser) \(macos.lastVersionName)")


// BUYUK STRUCT ÖRNEĞİ

struct Apartment {
    var numberOfRoom : Int
    var numberOfHall : Int
    var sizeOfApartment : Int
    var numberOfBathroom : Int
    var numberOfRestroom : Int
    var isSale : Bool
    var isHire : Bool
    var isTenantExist : Bool
    var apartmentOwnerName : String
    var apartmentOwnerPhoneNumber : String
    var floorNumber : Int?
    var apartmentNumber : Int?
    var theBuildingLocated : Building?
    
    func showApartmenInformation() {
        
        guard let _floorNumber = floorNumber else { return } // Bu field değişkenleri için Guard Let kullanmasaydık ı zaman print içerisindeki değişkenlere Force Unwrap uygulamak zorunda kalacaktık.
        guard let _apartmentNumber = apartmentNumber else { return }
        
        print("""
        --------- Apartment Information ---------
        Number of room : \(numberOfRoom)
        Number of hall : \(numberOfHall)
        Number of bathroom : \(numberOfBathroom)
        Number of restroom : \(numberOfRestroom)
        Floor Number : \(_floorNumber)
        Apartment Number : \(_apartmentNumber)
        """)
        
        if isSale {
            print("Apartment for sale")
        }else{
            print("Apartment for hire")
        }
    }
    
    init(numberOfRoom : Int , numberOfHall : Int , sizeOfApartment : Int ,numberOfBathroom : Int , numberOfRestroom : Int , isSale : Bool , isHire : Bool , isTenantExist : Bool ,  apartmentOwnerName : String , apartmentOwnerPhoneNumber : String , floorNumber : Int? , apartmentNumber : Int?) {
        self.numberOfRoom = numberOfRoom
        self.numberOfHall = numberOfHall
        self.sizeOfApartment = sizeOfApartment
        self.numberOfBathroom = numberOfBathroom
        self.numberOfRestroom = numberOfRestroom
        self.isSale = isSale
        self.isHire = isHire
        self.isTenantExist = isTenantExist
        self.apartmentOwnerName = apartmentOwnerName
        self.apartmentOwnerPhoneNumber = apartmentOwnerPhoneNumber
    }
}

struct AddressInformation{
    var city : String
    var state : String
    var zipCode : Int
    var street : String
    
    func returnAddressInformation() -> String {
        return """
            city : \(city)
            state : \(state)
            zipCode : \(zipCode)
            street : \(street)
        """
    }
}

struct Building{
    var nameOfBuilding : String = ""
    var numberOfFloor : Int = -1
    var buildingAddress : AddressInformation
    var numberOfApartment : Int = 0
    var apartments : [Apartment]
    
    mutating func addFloor() {
        numberOfFloor += 1
    }
    
    mutating func addFloor(numberOfFloorsToAdd : Int) {
        numberOfFloor += numberOfFloorsToAdd
    }
    
    // inout kullandık cunku struct value type dır dolayısıyla reference ile işlem yapmazsak o struct ' a ait değişkenleri değiştiremeyiz.
    mutating func addApartment(apartment : inout Apartment , floorNumber : Int) {
        if floorNumber > numberOfFloor {
            print("request is invalid!")
        }else{
            apartment.theBuildingLocated = self
            apartment.floorNumber = floorNumber
            self.numberOfApartment += 1
            apartments.append(apartment)
        }
    }
    
    func showBuildingInformation() {
        print("""
        --------------BUILDING-------------------
        Number of apartment : \(apartments.count)
        Number of floor : \(numberOfFloor)
        ******** Address ***********************
        \(buildingAddress.returnAddressInformation())
        """)
    }
    
    func findPersonAdress(name : String) {
        var isFinded : Bool = false
        
        for apartment in apartments {
            if apartment.apartmentOwnerName == name {
                isFinded = true
                
                print("""
                --------Finded Person's Adress----------
                \(buildingAddress.returnAddressInformation())
                \(nameOfBuilding)
                \(apartment.floorNumber!)
                \(apartment.apartmentNumber!)
                \(apartment.apartmentOwnerName)
                \(apartment.apartmentOwnerPhoneNumber)
                ----------------------------------------
                """)
                break
            }
            if !isFinded {
                print("there is no record in this building!")
            }
        }
    }
}


var d1 = Apartment(numberOfRoom: 2, numberOfHall: 3, sizeOfApartment: 210, numberOfBathroom: 3, numberOfRestroom: 2, isSale: false, isHire: true, isTenantExist: true, apartmentOwnerName: "Jack", apartmentOwnerPhoneNumber: "98764722", floorNumber: 34, apartmentNumber: 55)
var d2 = Apartment(numberOfRoom: 4, numberOfHall: 5, sizeOfApartment: 510, numberOfBathroom: 2, numberOfRestroom: 2, isSale: true, isHire: false, isTenantExist: true, apartmentOwnerName: "Michael", apartmentOwnerPhoneNumber: "9485920", floorNumber: 3, apartmentNumber: 3)
var d3 = Apartment(numberOfRoom: 3, numberOfHall: 4, sizeOfApartment: 444, numberOfBathroom: 2, numberOfRestroom: 1, isSale: false, isHire: false, isTenantExist: false, apartmentOwnerName: "Rose", apartmentOwnerPhoneNumber: "3847199", floorNumber: 35, apartmentNumber: 12)

var building1 : Building = Building(nameOfBuilding: "MOROR", numberOfFloor: 12, buildingAddress: AddressInformation(city: "Santa Clara", state: "California", zipCode: 41, street: "Beveral Hills"), numberOfApartment: 21, apartments: [Apartment]())
        
building1.addApartment(apartment: &d1, floorNumber: 32)
building1.showBuildingInformation()

// The mutating keyword is only required if you are changing any state contained within the struct.
// mutating keyword u struct dan nesneler olusturup kullanabilirsin fakat field alanı içerisindeki değişkenleri mesela struct içine bir method yazıp değiştiremezsin işte mutating ile bunu değiştirilebilir yapıyoruz yoksa static ile hiçbir benzerliği yok mutating olunca struct a ait değişken olmuyor yapılan her değişiklik o struct nesnesi için kendisine özeldir.   



```

```diff
@@ Object Oriented Programming at Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------


```swift


// 1.) Bölüm Class lara Giriş
class Person{
    var name : String
    var surname : String
    var age : Int
    var city : String
    var car : Car?
    
    init(name : String , surname : String , age : Int , city : String) {
        self.name = name
        self.surname = surname
        self.age = age
        self.city = city
    }
}

class Car{
    var carType : String?
    var model : Int?
    var price : Double?
    var kilometer : Int?
    var owner : Person?
    
    init() {
        
    }
    
    init(carType : String , model : Int , price : Double , kilometer : Int , owner : Person) {
        self.carType = carType
        self.model = model
        self.price = price
        self.kilometer = kilometer
        self.owner = owner
        owner.car = self
    }
}

var alican : Person = Person(name: "alican", surname: "yilmaz", age: 21, city: "hatay")

var tesla : Car = Car()
var mercedes : Car = Car(carType: "sport", model: 2019, price: 572000, kilometer: 0, owner: alican)
print(alican.car?.price)

// 2.) Bölüm Class init İle İlgili Örnekler

class Recipe{
    var recipeName : String = ""
    var recipeDescription : String = ""
    var recipeScore : Int = 0
    
    init(recipeName : String , recipeDescription : String , recipeScore : Int) {
        self.recipeName = recipeName
        self.recipeDescription = recipeDescription
        self.recipeScore = recipeScore
    }
    
    func showRecipeInformation() {
        print("""
          recipeName : \(recipeName)
          recipeDescription : \(recipeDescription)
          recipeScore : \(recipeScore)
        """)
    }
}

let chickenSalad : Recipe = Recipe(recipeName: "Chicken Salad", recipeDescription: "Chicken - Onion - Paper - Tomato", recipeScore: 5)
let chineseSoup : Recipe = Recipe(recipeName: "Chinese Soup", recipeDescription: "Honey - Tomato - lentil - salt", recipeScore: 7)

class RecipeBook{
    var categories : [String]
    var recipes : [Recipe]
    init(recipes : [Recipe] , categories : [String]) {
        self.recipes = recipes
        self.categories = categories
    }
    
    func showFavouriteRecipe() {
        var maxRecipeIndex = 0
        for index in (0...(recipes.count-1)) {
            if recipes[index].recipeScore > recipes[maxRecipeIndex].recipeScore {
                maxRecipeIndex = index
            }
        }
        print("The best recipe is : ....")
        recipes[maxRecipeIndex].showRecipeInformation()
    }
}

let dishes : [Recipe] = [chickenSalad,chineseSoup]
let mostLikedRecipes : RecipeBook = RecipeBook(recipes: dishes, categories: ["Korean Food","Chinese Food"])
mostLikedRecipes.showFavouriteRecipe()

// 2.) Bölüm Class lardaki Convenience init özelliği

class Human{
    var name : String
    
    init(name : String) {
        self.name = name
    }
    
    convenience init(){
        self.init(name : "undefined human")
    }
}

var human1 : Human = Human()
print(human1.name)
var human2 : Human = Human(name: "alican")
print(human2.name)

// convenience init ile önceki inite ait isteiğimiz özellikleri doldururuz istemediklerimize default değerler atayabiliriz aşağıdaki senaryodaki gibi.
class Customer{
    var name : String
    var surname : String
    var age : Int
    var city : String
    
    init(name : String ,surname : String , age : Int , city : String) {
        self.name = name
        self.surname = surname
        self.age = age
        self.city = city
    }
    
    convenience init(city : String){
        self.init(name : "unknown" , surname : "unknown" , age : 0 , city : city.uppercased())
    }
}

var customer1 : Customer = Customer(city: "New Jersey")
var customer2 : Customer = Customer(name: "Mike", surname: "Pompeo", age: 43, city: "New York")


// 3.) Class 'larda Inheritence (Kalıtım) Özelliği

struct CourseNote{
    var courseName : String
    var letterGrade : Character
    var Grade : Int
    var credit : Int
}

class Individual {
    var name : String
    var surname : String
    var yearOfBirth : Int
    init(name : String , surname : String , yearOfBirth : Int) {
        self.name = name
        self.surname = surname
        self.yearOfBirth = yearOfBirth
    }
}

// Swift deki kalıtım c# ile aynı sekilde : nokta ile sağlanır.
class Student : Individual{
    var courses : [CourseNote] = []
    func saveNote(courseNote : CourseNote) {
        courses.append(courseNote)
    }
    
    func listTheLesson() {
        for course in courses {
            print("Name of course : \(course.courseName)")
            print("Grade of letter : \(course.letterGrade)")
            print("Grade : \(course.Grade)")
            print("Credit : \(course.credit)")
            print("----------------------------------------")
        }
    }
}

let Rose : Individual = Individual(name: "Rose", surname: "Louras", yearOfBirth: 1994)
let michael : Student = Student(name: "Michael", surname: "Cordon", yearOfBirth: 1999)

let math = CourseNote(courseName: "Math", letterGrade: "B", Grade: 88, credit: 4)
michael.saveNote(courseNote: math)
michael.listTheLesson()

// 4.) Class 'larda Inheritence (Kalıtım) da Method Overriding
class Employee{
    var fullName : String
    var age : Int
    var department : String
    var salary : Int
    
    init(fullName : String ,age : Int ,department : String , salary : Int) {
        self.fullName = fullName
        self.age = age
        self.department = department
        self.salary = salary
    }
    
    func showEmployeeInformation() {
        print("fullName : \(self.fullName) age : \(self.age) department : \(self.department) salary : \(self.salary)")
    }
}

class Manager : Employee{
    var assignment : String
    
     init(fullName: String, age: Int, department: String, salary: Int , assignment : String) {
        self.assignment = assignment // Dikkat -> Property 'self.assignment' not initialized at super.init call hatası almamak içi unutma base class ın değişkenlerini parent class dan önce initialize yapman lazım
        super.init(fullName: fullName, age: age, department: department, salary: salary)
    }
    
    /* Eğer dogrudan super class ın constructor ını override edip kullanabiliriz fakat parametereler vs birseyler eklersek override annotation ını yukardaki gibi silmelisin.
    override init(fullName: String, age: Int, department: String, salary: Int) {
        
    }
   */
    
    override init(fullName: String, age: Int, department: String, salary: Int) {
        self.assignment = "Manager" // yada yukardaki gibi kullanıcıdan bu bilgiyi alman (yani parametre eklemen gerekmiyorsa bu sekilde de kullanabilirsin.)
        super.init(fullName: fullName, age: age, department: department, salary: salary)
    }
    
    override func showEmployeeInformation() {
        print("fullName : \(self.fullName) age : \(self.age) department : \(self.department) salary : \(self.salary) assignment : \(assignment)")
    }
}

let employee : Employee = Employee(fullName: "Barbara Palvin", age: 22, department: "Fashion", salary: 10000)
employee.showEmployeeInformation()
let manager : Manager = Manager(fullName: "Lara Croft", age: 24, department: "Computer Engineering", salary: 4000, assignment: "Department manager")
manager.showEmployeeInformation() // Eğer base class daki bir method override edilmişse onu çalıştırır eğer override edilmemişse en yakındaki super class(base class) a gidip o method u çalıştırır.


// Aşağıda c# ile karıstırma yapabilmen için iki örnek bıraktım. //////
class A {
    init() {
        print("A runned!")
    }
}

class B : A {
    override init() {
        print("B runned!")
    }
}

var b : B = B()
/*
 B runned!
 A runned!
*/


class Y {
    init() {
        print("Y runned!")
    }
}

class X : Y {
    init(some : String) {
        print("X runned!")
    }
}

var x : X = X(some: "")
/*
 X runned!
 Y runned!
*/

// 5.) Polymorpishm Kavramı //
class GeometricShape{
    var shapeName : String
    
    init(shapeName : String) {
        self.shapeName = shapeName
    }
    
    func calculateArea() -> Double {
        return 0.0
    }
    
    func calculateEnvironment() -> Double {
        return 0.0
    }
}

class Rectangle : GeometricShape{
    var edge1 : Double
    var edge2 : Double
    
    init(edge1 : Double , edge2 : Double) {
        self.edge1 = edge1
        self.edge2 = edge2
        super.init(shapeName: "Rectangle")
    }
    override func calculateArea() -> Double {
        return edge1*edge2
    }
    
    override func calculateEnvironment() -> Double {
        return 2 * (edge1 + edge2)
    }
}


class Square : Rectangle{
     init(edge1: Double) {
        super.init(edge1: edge1, edge2: edge1) // shapeName = "Rectangle" olmus oldu.
        self.shapeName = "Square" // shapeName = "Square" olarak güncelledik.
    }
}

class Circle : GeometricShape{
    var radius : Double
    init(radius : Double) {
        self.radius = radius
        super.init(shapeName: "Circle")
    }
    
    override func calculateArea() -> Double {
        return Double.pi*radius*pow(radius, 2)
    }
    
    override func calculateEnvironment() -> Double {
        return 2*Double.pi*radius
    }
    
}

var rectangle1 : Rectangle = Rectangle(edge1: 12, edge2: 13)
print(rectangle1.calculateArea())
print(rectangle1.calculateEnvironment())
print(rectangle1.shapeName)
print(rectangle1.edge1)
print(rectangle1.edge2)


var square1 : Square = Square(edge1: 5)
print("shapeName : \(square1.shapeName) area : \(square1.calculateArea()) environment : \(square1.calculateEnvironment()) edge1 : \(square1.edge1) edge2 : \(square1.edge2)")

var circle1 : Circle = Circle(radius: 2.4)
print("shapeName : \(circle1.shapeName) area : \(circle1.calculateArea()) environment : \(circle1.calculateEnvironment())")


func compareArea(d1 : Rectangle , d2 : Rectangle){
    if d1.calculateArea() > d2.calculateArea() {
        print("\(d1.shapeName)  area is bigger than \(d2.shapeName).")
    }else{
        print("\(d2.shapeName)  area is bigger than \(d1.shapeName).")
    }
}

func compareArea(d1 : GeometricShape , d2 : GeometricShape){
    if d1.calculateArea() > d2.calculateArea() {
        print("\(d1.shapeName)  area is bigger than \(d2.shapeName).")
    }else{
        print("\(d2.shapeName)  area is bigger than \(d1.shapeName).")
    }
}

compareArea(d1: rectangle1, d2: square1)
compareArea(d1: square1, d2: circle1)

// 6.) Statik Kavramı ve Statik Method Kavramı //
// Mantık c# ile aynı
class MathematicalProcess{
    
    func generateRandomInt(lowerBound : Int , upperBound : Int) -> Int {
        let result = Int.random(in: lowerBound ... upperBound)
        return result
    }
    
   static func generateRandomDouble(lowerBound : Double , upperBound : Double) -> Double {
        let result = Double.random(in: lowerBound ... upperBound)
        return result
    }
    
}

var mathObj : MathematicalProcess = MathematicalProcess()
print("method result : \(mathObj.generateRandomInt(lowerBound: 5, upperBound: 88))")
print("static method result \(MathematicalProcess.generateRandomDouble(lowerBound: 2, upperBound: 78))")

// Static Property ler --> Aşağıdaki örneğin c# versiyonu swift karsılastırma kodlarında mevcuttur.
class Gamer{
    var name : String
    var nickName : String
    var password : String
    var age : Int
    
    init(name : String , nickname : String , password : String , age : Int) {
        self.name = name
        self.nickName = nickname
        self.password = password
        self.age = age
    }
}


class BronzLevelGamers{
   static var _roomName : String = "Bronz Level"
   static var _numberOfGamers : Int = 0
   static var _members : [Gamer] = [Gamer]()
    
    init(gamer : Gamer) {
        BronzLevelGamers._members.append(gamer)
        BronzLevelGamers._numberOfGamers += 1
    }
}

var gamer1 : Gamer = Gamer(name: "alican", nickname: "darkerorblue", password: "asdmda", age: 25)
var gamer2 : Gamer = Gamer(name: "jack", nickname: "jack93", password: "asdmda", age: 32)
var gamer3 : Gamer = Gamer(name: "michael", nickname: "michael7619", password: "asdmda", age: 24)
var gamer4 : Gamer = Gamer(name: "rose", nickname: "rosetta32", password: "asdmda", age: 45)

var bronzLevelGamers1 : BronzLevelGamers = BronzLevelGamers(gamer: gamer1)
var bronzLevelGamers2 : BronzLevelGamers = BronzLevelGamers(gamer: gamer2)
var bronzLevelGamers3 : BronzLevelGamers = BronzLevelGamers(gamer: gamer3)
var bronzLevelGamers4 : BronzLevelGamers = BronzLevelGamers(gamer: gamer4)

for member in BronzLevelGamers._members {
    print("\(member.name) \(member.nickName) \(member.password) \(member.password)")
}
print(BronzLevelGamers._numberOfGamers)



// 7.) Computed Property Kavramı // --> c# daki property kavramının karsılıgıdır.
/*
 
 c# daki kullanımına örnek veriyorum daha sonra swift deki karsılıgı olan computed property leri işleyeceğiz.
 Properties expose fields. Fields should (almost always) be kept private to a class and accessed via get and set properties.
 Properties provide a level of abstraction allowing you to change the fields while not affecting the external way they are accessed by the things that use your class.

 public class MyClass
 {
     // this is a field.  It is private to your class and stores the actual data.
     private string _myField;

     // this is a property. When accessed it uses the underlying field,
     // but only exposes the contract, which will not be affected by the underlying field
     public string MyProperty
     {
         get
         {
             return _myField;
         }
         set
         {
             _myField = value;
         }
     }

     // This is an AutoProperty (C# 3.0 and higher) - which is a shorthand syntax
     // used to generate a private field for you
     public int AnotherProperty { get; set; }
 }
 
*/

// Computed Property First Sample
class PowerOfTheNumbers{
    var number : Double = 0
    var squareOfNumber : Double {
        get{
            return pow(number, 2)
        }
        set{
            number = sqrt(newValue)
        }
    }
}

var powerNumber : PowerOfTheNumbers = PowerOfTheNumbers()
powerNumber.number = 5
print(powerNumber.number)
print(powerNumber.squareOfNumber)
powerNumber.number = 9
print(powerNumber.number)
print(powerNumber.squareOfNumber)

// Computed Property Second Sample --> yarıcap değerini değiştirdiğimizde çap değeride otomatik olarak güncellenmektedir.
class Circles{
    var radius : Int = 10
    
    var diameter : Int {
        get{
           return radius * 2
        }
        set{
            radius = newValue / 2
        }
    }
}

var circles1 : Circles = Circles()
print(circles1.diameter)
print(circles1.radius)
circles1.radius = 20
print(circles1.diameter)
print(circles1.radius)



// 8.)  Property Observer //

/*
 newValue ve oldValue reserved keywordlerini değilde kendi keywordlerimizi kullanmak istiyorsak;
 
 var positiveValue : Int = 0 {
 willSet(yenideger){
     // değer atanmadan önce çalışır.Bu kod bloğu çalıştıktan sonra değer atanır
     print("Positive variable value : \(positiveValue) will be \(yenideger)")
 }
 didSet(eskideger){
     // değer atandıktan sonra çalışır
     print("Positive variable value : \(eskideger) will be \(positiveValue)")
 }
}
 
şeklinde kendi keywordlerimizi de kullanabiliriz.
 
*/

// Property Observer First Sample
class Positive{
    var positiveValue : Int = 0 {
        willSet{
            // değer atanmadan önce çalışır.Bu kod bloğu çalıştıktan sonra değer atanır
            print("The value \(positiveValue) has been updated to the value \(newValue).")
        }
        didSet{
            // değer atandıktan sonra çalışır
            if positiveValue < 0 {
                positiveValue = oldValue
                print("You can not enter a negative value.")
            }else{
                print("The value \(oldValue) has been updated to the value \(positiveValue).")
            }
            
            
        }
    }
}

var sample : Positive = Positive()
sample.positiveValue = 10


// Property Observer Second Sample
class Message{
    var messageToBeSent : String = "default message"{
        
        willSet{
            print("The message value \(messageToBeSent) has been updated to the value \(newValue).")
        }
        didSet{
            if messageToBeSent.count == 0 {
                messageToBeSent = oldValue
                print("Message section can not be empty!")
            }else{
                numberOfCharacterInMessage = messageToBeSent.count
                numberOfCharacterChanges += 1
            }
        }
    }
    
    var numberOfCharacterInMessage : Int = 9
    var numberOfCharacterChanges : Int = 0
    func showInformation() {
        print("Message value : \(messageToBeSent) Number of character : \(numberOfCharacterInMessage) Number of character changes : \(numberOfCharacterChanges)")
    }
}

var _message : Message = Message()
_message.showInformation()
_message.messageToBeSent = "Hi , What's up!"
_message.showInformation()
_message.messageToBeSent = ""
_message.showInformation()



// 9.)  Protection Level --> c# daki Access Modifiers //

// open , public , internal , fileprivate , private
// Konu ile ilgili uzun uzun kod yazmak yerine https://stackoverflow.com/questions/24003918/does-swift-have-access-modifiers linkini inceleyiniz.

class Customers{
    // internal = default protection level --> c# ile aynı yani aşağıdaki değişkenlerin,fonksiyonların önünde aslında gizli 'internal' keyword ü vardır.Hatta birinde biz başına yazalım ilkine zaten default 'u.
    internal var name : String
    open var yearOfBirth : Int // en özgür
    public var phoneNumber : String
    
    init(name : String ,yearOfBirth : Int , phoneNumber : String) {
        self.name = name
        self.yearOfBirth = yearOfBirth
        self.phoneNumber = phoneNumber
    }
}

// private değişkenlere computed property ile kullanmak --> encapsulation yapmak
class Computer{
    private var _brandName : String?
    private var _releseYear : Int?
    private var _serialNo : Int?
    private var _modelNo : String?
    
    init(brandName : String , releaseYear : Int , serialNo : Int , modelNo : String) { // DİKKAT! init ile doğrudan field variable lara değer atamıyorum 'setter' larını kullanarak dolaylı yoldan değer atıyorum.
        self.brandName = brandName // değer atarken setter üzerinden değerleri atıyoruz.Dikkat dogrudan değişkene erişmiyoruz.
        self.releaseYear = releaseYear // değer atarken setter üzerinden değerleri atıyoruz.Dikkat dogrudan değişkene erişmiyoruz.
        self.serialNo = serialNo // değer atarken setter üzerinden değerleri atıyoruz.Dikkat dogrudan değişkene erişmiyoruz.
    }
    
    var brandName : String {
        get{
            return _brandName!.uppercased()
        }
        set{
            if newValue.count > 0 {
                _brandName = newValue.lowercased()
            }
        }
    }
    
    var releaseYear : Int {
        get{
            return _releseYear!
        }
        set{
            if newValue > 2021 || newValue < 1900 {
                _releseYear = 2021
            }
            else{
                _releseYear = newValue
            }
        }
    }
    
    
    var serialNo : Int {
        get{
            return _serialNo!
        }
        set{
            if newValue < 0 || newValue > 1000 {
                _serialNo = 0
            }
            else{
                _serialNo = newValue
            }
        }
    }
    
    // Read Only Property
    var modelNo : String {
        get{
            return _modelNo!
        }
    }
}

class MacosX : Computer{
    
    var operatingSystem : String
    var osXVersion : String
    
    init(operatingSystem : String , osXVersion : String , brandName: String, releaseYear: Int, serialNo: Int, modelNo: String) {
        self.operatingSystem = operatingSystem
        self.osXVersion = osXVersion
        super.init(brandName: brandName, releaseYear: releaseYear, serialNo: serialNo, modelNo: modelNo)
    }
}


// Note : Swift de c# daki protected Access Modifiers ının karsılıgı yoktur.
// MacosX --> Computer sınıfından kalıtım almasına ragmen Computer a ait private fields ve functions lara erişemez ancak internal olarak tanımlı ise kullanabilir.
// Unutmadan field alanı private olarak tanımlı olmasına ragmen eger getter ve setter ları varsa o zaman getter setter üzerinden değişkene erişebiliriz.


// 10.)  Reference Types and Value Types

/*

 Swift Value Types --> Int , Double , String , Array , Dictionary , Set , Struct , Enum , Tuple
 Swift Reference Types --> Functions , Closures , Class
 
 c# Value Types --> bool , byte , char , decimal , double , enum , float , int , long , sbyte , short , struct , uint, ulong , ushort
 c# Reference Types --> String , Arrays (even if their elements are value types) , Class , Delegate
 
*/

// 1. Refence Karşılaştırma Örneği --> Konu ile ilgili swap operasyonlarını swift ve c# da yazdım incele Difference.swift dosyasında.

// DİKKAT 2. Refence Karşılaştırma Örneği. --> ilk c# kodunu aşağıda yazdık , daha sonrada swift de yazdık farklılıkları inceleyiniz.

/*
 
 internal class Program
     {
         public static void Main(string[] args)
         {
             string[] arr1 = new[] {"ayse","fatma","hayriye"};
             string[] arr2 = arr1;
             foreach (var val in arr2)
             {
                 Console.WriteLine(val); // output : ayse , fatma , hayriye
             }
             arr1[0] = "abdulkerim";
             foreach (var val in arr2)
             {
                 Console.WriteLine(val); // output : abdulkerim , fatma , hayriye
             }
         }
         // Array ' ler reference type oldugundan arr1 array imizdeki değişiklikler ona bağlı olan değişkenleride etkiler.
       
     }

*/
// Şimdi yukarıdaki örneği swift ile yapalım.

var arr1 : [String] = ["ayse","fatma","hayriye"]
var arr2 : [String] = arr1

print(arr2) // output : "["ayse", "fatma", "hayriye"]\n"
arr1[0] = "abdulkerim"
print(arr2) // output : "["ayse", "fatma", "hayriye"]\n"

// Görüldüğü gibi arr1 de yapılan değişikliğe rağmen arr2 array imiz bundan etkilenmedi fakat c# da Array ler Reference type oldugundan onda etkileniyordu.


// Swift de Reference ve Value Types Kullanımı Örneklerine Devam Edelim

class RaceCar{
    var speed : Double
    var power : Double
    
    init(speed : Double , power : Double) {
        self.speed = speed
        self.power = power
    }
    
    func showInformation() {
        print("speed : \(speed) power : \(power)")
    }
}

struct RaceTruck{
    var speed : Double
    var power : Double
    
    init(speed : Double , power : Double) {
        self.speed = speed
        self.power = power
    }
    
    func showInformation() {
        print("speed : \(speed) power : \(power)")
    }
}

var racecar1 : RaceCar = RaceCar(speed: 2.2, power: 4.3)
var racecar2 : RaceCar = racecar1
racecar1.speed = 3.12
racecar1.power = 7.77
racecar2.showInformation() // Class lar Referans Tip Oldugundan racecar1 de yapılan değişiklikten racecar2 de etkilendi.


var racetruck1 : RaceTruck = RaceTruck(speed: 1.1, power: 5.1)
var racetruck2 : RaceTruck = racetruck1
racetruck1.speed = 5.12
racetruck1.power = 9.88
racetruck2.showInformation() // Struct lar Value Tip Oldugundan racetruck1 de yapılan değişiklikten racetruck2  ETKİLENMEDİ.


// Struct (Value Type) ile Class (Reference Type) arasında Ufak ama Önemli bir nüansdan da bahsedelim.

let raceTruckStruct = racetruck1
// raceTruckStruct.power = 3.8 --> Bize hata verir çünkü 'raceTruckStruct' let ile tanımlanmış ve ilk değerini 'racetruck1' dan almıştır. let ile tanımlanmış değişkenin değeri değiştirilemez.

// Peki Yukarıdaki Örneği Struct ile değil Referans tip olan Class ile yaparsak ne olur
let racecarClass = racecar1
racecarClass.power = 9.1 // Hata Vermez let ile tanımlanan 'racecarClass' değişkeni 'racecar1' nesnesinin adres değerini tutuyor 'racecarClass.power = 9.1' ataması yaparken adres değerinde değişiklik yapmıyoruz. Aynı adres değerini kullanarak değişkene erişiyoruz.

// racecarClass = racecar2 // --> Bize hata verir çünkü 'racecarClass' adres değeri tutuyor ve biz let olarak tanımlanan bu değişkendeki adres değerini değiştirmeye çalışıyoruz.


// 11.) Type Casting İşlemi (Upcasting and Downcasting) --> is and as operatorlerinin kullanımı

class Media{
    var name : String
    init(name : String) {
        self.name = name
    }
}

class Book : Media{
    var author : String
    var releseYear : Int
    init(name : String ,author : String , releseYear : Int) {
        self.author = author
        self.releseYear = releseYear
        super.init(name: name)
    }
}

class Movie : Media{
    var director : String
    var awardWinning : Bool
    
    init(name : String ,director : String , awardWinning : Bool) {
        self.director = director
        self.awardWinning = awardWinning
        super.init(name: name)
    }
}

// Upcasting
let myarchive : [Media] = [
    Book(name: "War and Peace", author: "John Tommas", releseYear: 1938),
    Movie(name: "Big Bang Theory", director: "Fauble Mordan", awardWinning: true),
    Book(name: "Catch me if you can", author: "Steven Spieldberg", releseYear: 1840),
    Movie(name: "Two Broke Girls", director: "Roseline Abcard", awardWinning: false)
]

var num : (numberOfBook : Int , numberOfMovie : Int) = (0,0)

for media in myarchive {
    if media is Movie {
        num.numberOfMovie += 1
    }else if media is Book{
        num.numberOfBook += 1
    }
}

print("Number of the movie : \(num.numberOfMovie) and Number of the book : \(num.numberOfBook)")

// Downcasting
for media in myarchive {
    if let movie = media as? Movie{
        print("\(movie.director) and \(movie.awardWinning)")
    }else if let book = media as? Book{
        print("\(book.author) and \(book.releseYear)")
    }
}

// Typecasting e primitive types lar da nasıl kullanılır ona bakalım.

var varietyValues : [Any] = [Any]()
varietyValues.append(2)
varietyValues.append(2.0)
varietyValues.append("How are you?")
varietyValues.append(Movie(name: "Black Jack", director: "Sam Boldstar", awardWinning: false))

for val in varietyValues {
    switch val {
    case 2 as Int:
        print("Int 2")
    case 2 as Double:
        print("Double 2")
    case let integerNumber as Int :
        print("Integer Value \(integerNumber)")
    case let doubleNumber as Double :
        print("Double Value \(doubleNumber)")
    case let stringValue as String :
        print("String Value \(stringValue)")
    case let movie as Movie :
        print("Movie Value \(movie)")
    default:
        print("unknown request")
    }
}


// 12.) static , final ve class Kavramları ///////////

class Staff{
    var name : String
    var department : String
    var startYear : Int
    
    init(name : String , department : String , startYear : Int) {
        self.name = name
        self.department = department
        self.startYear = startYear
        Staff.numberOfStaff += 1
    }
    
    var exprience : Int {
        get {
            return 2021 - startYear
        }
    }
    
    static var numberOfStaff : Int = 0
    static var additionalExpenses : Int = 0
    static var monthlyExpenses : Int {
        get{
            return (numberOfStaff * 5000) + additionalExpenses
        }
        set{
            let difference = newValue - monthlyExpenses
            if difference > 0 {
                additionalExpenses = difference
            }
        }
    }
    
    class var monthlyExpensesWithClass : Int {
        get{
            return (numberOfStaff * 5000) + additionalExpenses
        }
        set{
            let difference = newValue - monthlyExpenses
            if difference > 0 {
                additionalExpenses = difference
            }
        }
    }
    
    // UNUTMA Static bir fonksiyon içerisinden static bir property ' e direk adı ile erişebilirken eğer static olmayan bir fonksiyon içerisinde static bir property e erişmek istersen o zaman SınıfAdi.PropertyName şeklinde erişmelisin.
    static func staffInformationStatic(){
        print("The number of staff : \(numberOfStaff) \n monthly expenses : \(monthlyExpenses) \n additional expenses : \(additionalExpenses)")
    }
    class func staffInformationClass(){
        print("The number of staff : \(numberOfStaff) \n monthly expenses : \(monthlyExpenses) \n additional expenses : \(additionalExpenses)")
    }
    func staffInformationNormal(){
        print("The number of staff : \(Staff.numberOfStaff) \n monthly expenses : \(Staff.monthlyExpenses) \n additional expenses : \(Staff.additionalExpenses)")
    }
    
    // Final olarak tanımlanan method u da bu class dan kalıtım alan class override edemez! Static de de override edemiyordu Fark Ne ?
    // Fark şu static variable class a ait özellik ClassName.Method şeklinde erişilebilirken , final ile tanımlasak bile override ı engelledik bu method hala nesneye ait bir methoddur yani her nesne için özeldir ortak değil.
    final func staffInformationNormalWithFinal(){
        print("The number of staff : \(Staff.numberOfStaff) \n monthly expenses : \(Staff.monthlyExpenses) \n additional expenses : \(Staff.additionalExpenses)")
    }
}

var staff1 : Staff = Staff(name: "Roselin", department: "Accounting", startYear: 1998)
print(staff1.exprience)
Staff.staffInformationStatic()
Staff.staffInformationClass()


class GeneralManager : Staff{
    var position : String
    static var salary : Int = 8000
    
    init(name : String , department : String , startYear : Int , position : String) {
        self.position = position
        super.init(name: name, department: department, startYear: startYear)
    }
    // STATIC İLE CLASS ARASINDAKİ FARK ŞUDUR ; Yukarıda tanımladığımız ,
    // static olan -> staffInformationStatic() methodu kalıtım alan sınıf tarafından override edilemez iken class tipinden tanımlanan staffInformationClass() methodu kalıtım alınan sınıf tarafından override edilebilir.
    override class func staffInformationClass() {
        print("The number of staff : \(numberOfStaff) \n monthly expenses : \(monthlyExpenses) \n additional expenses : \(additionalExpenses)")
    }
    
    // Computed Property ' lerde Override Edilebilir!!! --> Tabi static olarak tanımlanmamıssa!
    override var exprience: Int{
        print("Computed Property lerde override edilebilir.")
        return 9000
    }
    
    override class var monthlyExpensesWithClass: Int{
        get{
            return 9000
        }
        set{
            print("Computed Property ne static yerine class ön eki verirseniz bunları da override edilebilirsiniz.")
        }
    }
}


// 13.) deinit Yapısı ///////////
// deinit yapısı --> nesneyi tutugumuz referansı = nil atarsak o zaman ARC (Automatic Reference Counting) değerini 0 yapar ve referans tarafından refere edilmeyen nesne anında RAM den silinir.

// Birinci Örnek
var myValue : Int = 32

class Dolly{
    init() {
        print("object was created from A")
        myValue = 31
    }
    deinit {
        print("object was deleted.")
        myValue = -1
    }
}

print(myValue)
var n1 : Dolly? = Dolly()
print(myValue)
n1 = nil
print(myValue)



// İkinci Örnek
class Bank{
    static var balance : Int = 1000
    
    
    static func withdrawalMoney(withdrawalmoney balanceAmount : Int) -> Int{
        guard balanceAmount > 0 else {
            print("amount must be grater than 0.")
            return -1
        }
        if balanceAmount > balance {
            print("no balance")
            return -1
        }else if balanceAmount == balance{
            print("you took all the money")
            balance -= balanceAmount
            return balanceAmount
        }else{
            balance -= balanceAmount
            print("You have withdrawn $\(balanceAmount) from your account.Your remaining balance is $\(balance).")
            return balanceAmount
        }
    }
    
    // Label Kullandık parametre olarak DİKKAT!
    static func depositMoney(amounToMoneyToBeDeposited deposit : Int){
        guard deposit > 0 else {
            print("The amount to be deposited cannot be negative.")
            return
        }
        balance += deposit
    }
    
}

class Family{
    var hasAmountMoney : Int
    var name : String
    init(name : String ,money : Int) {
        self.name = name
        hasAmountMoney = Bank.withdrawalMoney(withdrawalmoney: money)
        print("\(self.name) was joined with \(self.hasAmountMoney)")
    }
    
    func getMoney(amount : Int){
        hasAmountMoney += Bank.withdrawalMoney(withdrawalmoney: amount)
    }
    
    deinit {
        Bank.depositMoney(amounToMoneyToBeDeposited: hasAmountMoney)
        print("\(self.name) wasted!")
    }
}

var family : Family? = Family(name: "Jane", money: 100)
family?.getMoney(amount: 200)
family = nil

// 3.Örnek Retain Cycle, Automatic Reference Counting, Memory Leak

class SoftwareDeveloper{
    let name : String
    var macbook : MacBook?
    
    init(name : String , macbook : MacBook?) {
        self.name = name
        self.macbook = macbook
    }
    
    deinit {
        print("\(name) is being deinitialized!")
    }
}

class MacBook{
    let name : String
    weak var owner : SoftwareDeveloper?
    
    init(name : String , owner : SoftwareDeveloper?) {
        self.name = name
        self.owner = owner
    }
    
    deinit {
        print("Macbook named \(name) is being deinitialized!")
    }
}

var sean : SoftwareDeveloper?
var matilda : MacBook?

sean = SoftwareDeveloper(name: "sean", macbook: nil)
matilda = MacBook(name: "matilda", owner: nil)

sean?.macbook = matilda
matilda?.owner = sean
sean = nil
matilda = nil




```

```diff
@@ Protocol at Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------


```swift


//  There are no abstract classes in Swift (just like Objective-C). Your best bet is going to be to use a Protocol, which is like a Java Interface.

// 1.Örnek
protocol Citizen{
    var name : String {get set}
    var identityNumber : String {get set}
    func isCitizen(identityNumber : String) -> Bool
}

class Person : Citizen{
    var name: String
    
    var identityNumber: String
    
    init(name : String , identityNumber : String) {
        self.name = name
        self.identityNumber = identityNumber
    }
    
    func isCitizen(identityNumber: String) -> Bool {
        return true
    }
}

protocol Employee : Citizen{
    var isMale : Bool {get set}
    func isActive()
}

protocol GeneralManager{
    var managerId : String {get set}
}

class Alican : Employee{
    var isMale: Bool
    
    func isActive() {
        print("Active")
    }
    
    var name: String
    
    var identityNumber: String
    
    func isCitizen(identityNumber: String) -> Bool {
        return true
    }
    
    init(isMale : Bool , name : String , identityNumber : String) {
        self.isMale = isMale
        self.name = name
        self.identityNumber = identityNumber
    }
    
    
}

class Jane : Employee , GeneralManager{
    var isMale: Bool
    
    init(isMale : Bool , name : String , identityNumber : String , managerId : String) {
        self.isMale = isMale
        self.name = name
        self.identityNumber = identityNumber
        self.managerId = managerId
    }
    
    func isActive() {
        print("Active")
    }
    
    var managerId: String
    
    var name: String
    
    var identityNumber: String
    
    func isCitizen(identityNumber: String) -> Bool {
        return false
    }
}

// 2.Örnek
protocol CalculateGeometricShape{
    func calculateArea() -> Double
    func calculateEnvironment() -> Double
}

class Square : CalculateGeometricShape{
    var edge : Double
    
    init(edge : Double) {
        self.edge = edge
    }
    
    func calculateArea() -> Double {
        return edge * edge
    }
    
    func calculateEnvironment() -> Double {
        return 4 * edge
    }
    
    
}

class Circle : CalculateGeometricShape{
    var radius : Double
    
    init(radius : Double) {
        self.radius = radius
    }
    
    func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
    
    func calculateEnvironment() -> Double {
        return 2 * Double.pi * radius
    }
    
    
}

// 3.Örnek

@objc protocol Time{
    var day : Int {get set}
    var month : Int {get set}
    var year : Int {get set}
    
    @objc optional var hour : Int {get}
    @objc optional var minute : Int {get}
    @objc optional var second : Int {get}
    func toString() -> String
    
}

class ShortTime : Time{
    var day: Int
    
    var month: Int
    
    var year: Int
    
    init(day : Int , month : Int , year : Int) {
        self.day = day
        self.month = month
        self.year = year
    }
    
    func toString() -> String {
        return "\(day)/\(month)/\(year)"
    }
}

class LongTime : ShortTime{
    
     var hour: Int = 0
     var minute: Int = 0
     var second: Int = 0
    
    convenience init(day : Int , month : Int , year : Int , hour : Int , minute : Int , second : Int) {
        self.init(day: day, month: month, year: year)
        self.hour = hour
        self.minute = minute
        self.second = second
    }
    
    override func toString() -> String {
        return super.toString() + " \(hour):\(minute):\(second)"
    }
}

var time1 : ShortTime = ShortTime(day: 13, month: 9, year: 1995)
var time2 : LongTime = LongTime(day: 21, month: 4, year: 2001, hour: 13, minute: 45, second: 29)

var dates : [AnyObject] = [time1,time2]
for item in dates {
    let date = item as! Time
    print(date.toString())
    
    if let hour = date.hour{
        print("hour : \(hour) second : \(date.second!)")
    }
}

// SWIFT HAZIR PROTOKOLLER

// 1.) Equatable Protocol 'ü

class Student : Equatable{
    
    var name : String
    var age : Int
    var identityNumber : String
    
    init(name : String , age : Int , identityNumber : String) {
        self.name = name
        self.age = age
        self.identityNumber = identityNumber
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        if lhs.name == rhs.name && lhs.age == rhs.age && lhs.identityNumber == rhs.identityNumber {
            return true
        }
        return false
    }
    
}

var student1 : Student = Student(name: "Jane", age: 23, identityNumber: "212121")
var student2 : Student = Student(name: "Jane", age: 23, identityNumber: "212121")

if student1 == student2 {
    print("Equal")
}else{
    print("Not Equal!")
}


// 2.) Comparable Protocol 'ü

class Rectangle : Comparable{
    static func == (rectangle1: Rectangle, rectangle2: Rectangle) -> Bool {
        return (rectangle1.width*rectangle1.height) == (rectangle2.width*rectangle2.height)
    }
    
    static func < (rectangle1: Rectangle, rectangle2: Rectangle) -> Bool {
        return (rectangle1.width*rectangle1.height) < (rectangle2.width*rectangle2.height)
    }
    
    var width : Int
    var height : Int
    
    init(width : Int , height : Int) {
        self.width = width
        self.height = height
    }
}

var d1 : Rectangle = Rectangle(width: 34, height: 21)
var d2 : Rectangle = Rectangle(width: 22, height: 11)

if d1 > d2 {
    print("d1 is grater than d2.")
}else if (d1 < d2){
    print("d2 is grater than d1.")
}else if(d1==d2){
    print("d1 equals to d2.")
}

// Protocol Delegate Pattern ////

protocol IRepairService{
    func repairTool(tool : String);
}

class RepairManager{
    var repairService : IRepairService?
}

class RepairService : IRepairService{
    func repairTool(tool: String) {
        print("\(tool) is solving...")
    }
}

var _repairService : RepairService = RepairService()
var _repairManager : RepairManager = RepairManager()

_repairManager.repairService = _repairService
_repairManager.repairService?.repairTool(tool: "x86 error")


// Protocol Data Source ////

protocol MessageSenderDataSource{
    func Order(order : String) -> Bool
}

class Customer{
    var dataSource : MessageSenderDataSource?
}

let _customer : Customer = Customer()
_customer.dataSource?.Order(order: "first order!")

class DataSource : MessageSenderDataSource{
    func Order(order: String) -> Bool {
        print("Sended order : \(order)")
        print("We will send!")
        return true
    }
}

let _customer2 : Customer = Customer()
let _dataSource : DataSource = DataSource()
_customer2.dataSource = _dataSource
let result = _customer2.dataSource?.Order(order: "Cake")
print(result!)


```

```diff
@@ Extensions on Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

```swift


// Extension Kavramı
class Person {
    var name : String?
    var surname : String?
    var age : Int?
}

extension Person{
    func getInformation()  {
        print("name : \(name!) surname : \(surname!)")
    }
}

var person : Person = Person()
person.name = "alican"
person.surname = "yilmaz"
person.getInformation()

// Yukarıdaki örnekte Person sınıfına getInformation() adında bir methoda sahip olmasını sağladık. Peki neden bunu sınıf içeirsinde tanımlamak yerine sınıfa dısarıdan extension ile bu özelliği kazandırma gereği
// gereği duyduk derseniz sınıfın içerisinde yuzlerce method ve props olabilir extension ile ayrı ayrı işlere yarayan methodları ve property leri ayrı ayrı yerlerde tanımlayarak kod takibini daha kolay hale getirebiliriz.
// Yada elinde string sınıfı var sen buna source kodda değişiklik yapmadan bu sınıfa bir yetenek kazandırmak istiyorsun bunu extension ile yapabiliriz.

// Örneğin extension ile Int primitive type ' ına yeni özellikler kazandıralım.
extension Int{
    var square : Int{
        return self * self
    }
    
    var nextNumber : Int{
        return self + 1
    }
    
    func factoriel() -> Int {
        var result = 1
        for i in 1...self {
            result *= i
        }
        return result
    }
    
    func multiplyWith(number : Int , text : String) -> Int {
        let result = self * number * text.count
        return result
    }
}
print(5.factoriel())
var res = 3.multiplyWith(number: 2, text: "alican")
print(res)

// Baska bir extension örneği yapalım bu sefer değişiklik değişkenin de değerini değiştirsin.
extension Double{
   mutating func calculateArea() {
        let pi = 3.14
        self = pi * (self * self)
    }
    
    func returnArea() -> Double {
        return self * self
    }
}



class Circle{
    var radius : Double
    init(radius : Double) {
        self.radius = radius
    }
}

var _circle : Circle = Circle(radius: 4.5)
print(_circle.radius)
_circle.radius.calculateArea()
print(_circle.radius)
_circle.radius.returnArea()

extension String{
    func customReverse() -> String {
        var character = [Character]()
        for _character in self {
            character.insert(contentsOf: _character.lowercased(), at: 0)
        }
        return String(character)
    }
}

var myName : String = "Alican"
print(myName.customReverse())


// Collections ' lar Üzerinde Extensions Kullanımı

extension Collection{
    func evenMembers() -> [Iterator.Element] {
      var currentIndex = startIndex
        var results : [Iterator.Element] = []
        var i = 0
        repeat{
            if i % 2 == 0{
                results.append(self[currentIndex])
            }
            currentIndex = self.index(after: currentIndex)
            i += 1
        }while(currentIndex != endIndex)
        return results
    }
    
    func shuffleItems() -> [Iterator.Element] {
        return sorted(){firstMember , secondMember in
            return arc4random() < arc4random()
        }
    }
}

var numbers = [10,20,30,40,50,60,70]

var newNumbers = numbers.evenMembers()

var shuffledNumbers = numbers.shuffled()

var personAges : [String : Int] = ["Jack" : 31 , "Rose" : 21 , "Michael" : 33 , "Laura" : 38 , "James" : 41]
var personAgeEvenMembers = personAges.evenMembers()
for person in personAgeEvenMembers {
    print(person)
}

// Dictionary Yapısını unordered biz extension yazarak bunu array gibi aşağıdaki yapılar ile ordered yapıya çevirebiliriz.
extension Collection where Self : ExpressibleByArrayLiteral{
    
}

extension Collection where Iterator.Element : Comparable{
    
}


```

```diff
@@ Enums at Swift @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

```swift


// Enum ' lara giriş
enum carTypes{
    
    case Hatchback
    case sedan
    case Station_Vagon
    case Cabrio
    case Pick_Up
    case SUV
}

enum carColors{
    case pink
    case blue
    case green
    case black
}

class Car{
    var brand : String
    var color : carColors
    var year : Int
    var mil : Double
    var carType : carTypes
    
    init(brand : String , color : carColors , year : Int , mil : Double , carType : carTypes) {
        self.brand = brand
        self.color = color
        self.year = year
        self.mil = mil
        self.carType = carType
    }
    
    func showInformation() {
        print("\(brand) \(color) \(year) \(mil) \(carType)")
    }
}

var car : Car = Car(brand: "mercedes", color: carColors.blue, year: 2011, mil: 212, carType: carTypes.Hatchback)


// Enum Yapısının Switch-Case ile kullanımı

enum Directions{
    case North
    case South
    case East
    case West
}

var myDirection : Directions = Directions.East

switch myDirection {
case .North :
    print("Your direction is North")
case .South :
    print("Your direction is South")
case .East :
    print("Your direction is East")
case .West :
    print("Your direction is West")
}

// Enum RawValue Kavramı --> Swift RawValue olarak Int , FLoat , String ve Bool değerleri kabul ediyor.

enum MovieCategory : Float{
    case Action
    case Science_Fiction
    case Emotional
    case Comedy
}

let _movie : MovieCategory = MovieCategory.Comedy
print(_movie.rawValue) // Output : 3.0

enum Days : Int{
    case Mondey
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

var _day : Days = Days.Thursday
print(_day.rawValue) // Output : 3

enum Months : Int{
    case January = 1
    case February = 2
    case March = 33
    case April = 4
    case May = 45
    case June = 6
    case July = 7
    case August = 8
    case September = 9
    case October = 11
    case November = 12
    case December = 13
}

var _months : Months = Months.May
print(_months)  // Output : May
print(_months.rawValue) // Output : 45

// Değer atarken Raw value kullanarakta atama yapabiliriz fakat değerin olmamasına karsıda default value olarak 'January' i belirliyoruz.
var myMonth : Months = Months.init(rawValue: 99) ?? Months.January

//
var _days : Days = Days.Saturday

// DİKKAT : Switch - Case yapısında birden fazla durumda olabilir aşağıdaki gibi Sunday veya Saturday ise hafta sonundasın gibi.
switch _days {
case .Sunday , .Saturday:
    print("You are on the weekend.")
default:
    print("You are in the week.")
}

// if let case yapısı ile Enum yapısının Birlikte Kullanımı
enum DateOfBirth{
    case Date(Day : Int , Month : Int , Year : Int)
    case Day(Days)
}

var dateTime1 = DateOfBirth.Date(Day: 15, Month: 20, Year: 2000)
var datetime2 = DateOfBirth.Day(.Saturday)

if case let DateOfBirth.Date(day, month, year) = dateTime1{
    print("day : \(day) month : \(month) year : \(year)")
}

if case let DateOfBirth.Day(value) = datetime2{
    print("This is a valid day.")
    print(value)
}

switch dateTime1 {
case .Date(let day , let month , let year) :
    print("\(day) \(month) \(year)")
case .Day(let day):
    print("\(day)")
}


// Enum yapısında property tanımlama //
enum ComputerComponents : String{
    case GPU
    case CPU
    case RAM
    case SSD
    case HDD
    
    var identifier : String{
        return self.rawValue.lowercased()
    }
    
    var piority : Int{
        return identifier.count
    }
}

let gpu = ComputerComponents.GPU
print(gpu.identifier)
print(gpu.piority)


// 2. Örnek enum içerisinde function ' tanımlama. //

enum DegreeOfLike : String{
    case excellent
    case funkiness
    case well
    case tolerable
    case unwell
    case awful
    
    mutating func likeMore() {
        print("Your like degree is \(self.rawValue).")
        
        switch self {
        case .excellent: print("You do not like it any more!")
        case .funkiness: self = .excellent
        case .well: self = .funkiness
        case .tolerable: self = .well
        case .unwell: self = .tolerable
        case .awful: self = .unwell
    }
  }
    
    static var numberOfItem : Int{
        return 6
    }
}

var _like : DegreeOfLike = DegreeOfLike.well
print(_like) // Output : well
_like.likeMore() // Output : Your like degree is well.
print(_like) // Output : funkiness
print(DegreeOfLike.numberOfItem) // Output : 6


// Nested Enum Kullanımı //

enum CharacterInformation{
    enum Weapon{
        case arrow
        case sword
        case knife
        case ax
    }
    
    enum Helmet{
        case silver_helmet
        case iron_helmet
        case wooden_helmet
    }
    
    case thief
    case warrior
    case halberdier
    case civil
}

var _character : CharacterInformation = CharacterInformation.warrior
var _weapon : CharacterInformation.Weapon = .arrow // CharacterInformation.Weapon.arrow
var _helmet : CharacterInformation.Helmet = .iron_helmet

print("\(_character) \(_weapon) \(_helmet)")


// Enum yapısında static fonksiyon tanımlama

enum AppleProducts{
    case MacbookPro , IMac , Iphone , IWatch
    static func getProduct(name : String) -> AppleProducts?{
        let name = name.lowercased()
        switch name {
        case "phone": return .Iphone
        case "watch": return .IWatch
        case "Computer": return .IMac
        case "laptop": return .MacbookPro
        default: print("Product does not exist.")
            return nil
        }
    }
}

if let _product = AppleProducts.getProduct(name: "phone"){
    print(_product)
}else{
    print("Product request is not valid!")
}


// Enum ' larda init Özelliği //

enum Product{
    case phone , laptop , tablet , watch // Dikkat et her birine case yazmak yerine tümünü tek case de de tanımlayabiliriz.(Değişkenlerle aynı yani)
    init(productName : String) {
        switch productName {
        case "iphone": self = .phone
        case "macbook": self = .laptop
        case "ipad": self = .tablet
        case "iwatch": self = .watch
        default: self = .phone
        }
    }
}

let product1 = Product.laptop
print(product1)
let product2 = Product(productName: "macbook")
print(product2)


// Enum yapısında init özelliği -> 2

enum Length{
    case Long
    case Middle
    case Short
    init(lenght : Int) {
        switch lenght {
        case 0..<150 : self = .Short
        case 150..<180 : self = .Middle
        case 180..<250 : self = .Long
        default: self = .Short
            print("Unknow value!")
        }
    }
}

var b1 = Length.Middle
var b2 = Length(lenght: 170)
print("b1 : \(b1) b2 : \(b2)")


// Class <--> Enum İlişkisi

class CharacterProfile{
    
    enum CharacterType{
        case Priest
        case Warrior
        case Mage
    }
    
    enum Ability{
        case Strengh
        case Intelligence
        case Power
        case Spirit
    }
    
    enum Skill{
        case Climb
        case Hiding
        case Tracker
        case Forest_Lore
    }
    
    var characterType : CharacterType
    var skill : Skill
    var ability : Ability
    
    init(characterType : CharacterType , skill : Skill , ability : Ability) {
        self.characterType = characterType
        self.skill = skill
        self.ability = ability
    }
}

var myCharacter : CharacterProfile = CharacterProfile(characterType: CharacterProfile.CharacterType.Mage, skill: CharacterProfile.Skill.Hiding, ability: CharacterProfile.Ability.Power)

print("\(myCharacter.characterType) \(myCharacter.ability) \(myCharacter.skill)")



// Başka bir nested Enum Örneği

enum GameStuff{
    
    enum Charge : Int {
        case Bow = 10
        case Iron = 5
        case Knife = 9
        case Gun = 12
    }
    
    enum DamageLevel : Int {
        case Low
        case Medium
        case High
    }
    
    case Weapon(damageLevel : DamageLevel , charge : Charge)
    
    func getProfile() -> String {
        switch self {
        case let .Weapon(damageLevel , charge):
            return "Damage Level \(damageLevel)\n Charge : \(charge)"
        }
    }
}

let _gameStuff = GameStuff.Weapon(damageLevel: GameStuff.DamageLevel.Low, charge: GameStuff.Charge.Knife)
print(_gameStuff.getProfile())


// Protocol <--> Enum İlişkisi

protocol CharacterHealth{
    var health : Int {get}
    mutating func collectHealt()
    mutating func gatherAttackPower()
}

enum Gamer : CharacterHealth {
    var health: Int {
        switch self {
        case .dead : return 0
        case let .alive(heal) :
            if heal > 100 {
                return 100
            }else{
                return heal
            }
        }
    }
    
    mutating func collectHealt() {
        switch self {
        case let .alive(heal): self = .alive(currentHealth: heal + 1)
        case .dead : print("Came back to life.")
            self = .alive(currentHealth: 1)
        }
    }
    
    mutating func gatherAttackPower() {
        switch self {
        case let .alive(currentHealth: heal):
            if heal <= 1 {
                self = .dead
                print("Person dead.")
            }else{
                self = .alive(currentHealth: heal - 1)
                print("Character's healt decreased by one. Healt value is \(heal - 1)")
            }
        case .dead : print("Character already dead.")
        }
    }
    
    case dead
    case alive(currentHealth : Int)
    
}

var gamerStatus = Gamer.dead
gamerStatus = Gamer.alive(currentHealth: 4)
var healthValue = Gamer.alive(currentHealth: 190).health

gamerStatus.collectHealt()
print(gamerStatus.health)
gamerStatus.gatherAttackPower()
gamerStatus.gatherAttackPower()
print(gamerStatus.health)


// Enum ile Tuple ' ın ileri seviye Kullanımları

enum HumanActivities{
    case walk
    case run
    case takeBreath
    case jump(height : Int)
}

func == (left : HumanActivities , right : HumanActivities) -> Bool{
    switch (left , right) {
    case (.walk, .walk) , (.run , .run) , (.takeBreath , .takeBreath) : return true
    case let (.jump(leftHeight) , .jump(rightHeight)) : return leftHeight == rightHeight // Parametre alıyor ise 'let' kullanmak zorundasın.
    default: return false
    }
}

var activity1 : HumanActivities = HumanActivities.run
var activity2 : HumanActivities = HumanActivities.run
activity1 = .jump(height: 2)
activity2 = .jump(height: 3)

if activity1 == activity2 {
    print("Same activity.")
}else{
    print("Different activity.")
}

// Recursive Enum // ---->

indirect enum MathematicalExpressions{
    case number(value : Double)
    case Sum(number1 : MathematicalExpressions , number2 : MathematicalExpressions)
    case Subtract(number1 : MathematicalExpressions , number2 : MathematicalExpressions)
    case Divide(number1 : MathematicalExpressions , number2 : MathematicalExpressions)
    case Multiply(number1 : MathematicalExpressions , number2 : MathematicalExpressions)
}


var number : MathematicalExpressions = MathematicalExpressions.number(value: 10)

if case let .number(value) = number {
    print("Number is : \(value)")
}

MathematicalExpressions.Sum(number1: .number(value: 10), number2: .number(value: 17))

func calculate(_ exp : MathematicalExpressions) -> Double{
    switch exp {
    case let .number(value): return value
    case let .Sum(value1, value2) : return calculate(value1) + calculate(value2)
    case let .Subtract(value1, value2) : return calculate(value1) - calculate(value2)
    case let .Divide(value1, value2) : return calculate(value1) / calculate(value2)
    case let .Multiply(value1, value2) : return calculate(value1) * calculate(value2)
    }
}


let num1 : MathematicalExpressions = MathematicalExpressions.number(value: 4)
print(calculate(num1))

let num2 : MathematicalExpressions = MathematicalExpressions.Subtract(number1: .number(value: 97), number2: .number(value: 17))
print(calculate(num2))

let num3 : MathematicalExpressions = MathematicalExpressions.Sum(
    number1: MathematicalExpressions.Sum(number1: .number(value: 4), number2: .number(value: 6)),
    number2: MathematicalExpressions.Multiply(number1: .number(value: 22), number2: .number(value: 11))
)
print(calculate(num3))


// Yukarıdaki Örneği Recursive Kullanmadan Nasıl Yapardık Ona Bakalım --->

enum Operators{
    case Sum(num1 : Double , num2 : Double)
    case Subtract(num1 : Double , num2 : Double)
    case Divide(num1 : Double , num2 : Double)
    case Multiply(num1 : Double , num2 : Double)
    
    var result : Double{
        switch self {
        case let .Sum(val1 , val2) : return val1 + val2
        case let .Subtract(val1 , val2) : return val1 - val2
        case let .Divide(val1 , val2) : return val1 / val2
        case let .Multiply(val1 , val2) : return val1 * val2
       }
    }
}

print(Operators.Sum(num1: 10, num2: 20).result)
print(Operators.Multiply(num1: 10, num2: 20).result)


// Yukarıdaki Örneği de Enum yerine Class Kullanarak Nasıl Yapardık Ona Bakalım --->

class Calculator{
    
    static var sum : (Double , Double) -> Double = {$0 + $1}
    static var subract : (Double , Double) -> Double = {$0 - $1}
    static var divide : (Double , Double) -> Double = {$0 / $1}
    static var multiply : (Double , Double) -> Double = {$0 * $1}
}


var res = Calculator.multiply(14.0,21.4)
print(res)

// Pattern matching in Swift --> https://www.swiftbysundell.com/articles/pattern-matching-in-swift/
// Enum kısmında oldukca case let  gibi pattern matching olaylarını kullandık



```

```diff
@@ Swift Tricky Notes @@
```
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

```swift
// Fonksiyonlarda parametre basına underscore koymak.
func a1(_ core : String){
    
}

func a2(core : String){
    
}

a1("alican")
a2(core: "kemal")

// Swift Fonksiyonlarda Default Parametre Kullanımı
func Isknown(source : String = "unknown"){
    print(source)
}

Isknown()

// Swift Function larda parametre adında ekstra label kullanma
func showInside(with identifier : String){
    var ID = identifier
    print(ID)
}

showInside(with: "AESF312")

// Bu şekilde for , while gibi döngülerde bu sekilde de 
let phoneBook = ["Kemal","Suna","Ceren","Alkan","Yakup"]
for person in phoneBook where person.hasPrefix("Ceren") {
    print("person finded! Person is \(person)")
}

// Tupple ile guzel bir bakıs acısı
var cordinate : (Double, Double)
cordinate.0 = 31
cordinate.1 = 0

switch cordinate {
case (0,0):
    print("origin")
case (let x,0):
    print("x axis")
case (0,let y):
    print("y axis")
case let (x,y):
    print("on the cordinate")
default:
    print("non")
}

// Swift Random Numbers tutorial --> https://learnappmaking.com/random-numbers-swift/
// In Swift 4.2. and higher, the way you work with random numbers has changed. Instead of using the imported C function arc4random(), you can now use Swift’s own native functions.
let randNumber1 = Int.random(in: 0..<10)
let randNumber2 = Int.random(in: 0...10)
let randNumber3 = Float.random(in: 0..<1)
let randNumber4 = Bool.random()

// What about picking a random element from an array? You can do that like this:
let names = ["Ford", "Zaphod", "Trillian", "Arthur", "Marvin"]
let randomName = names.randomElement()
// In the above code you use randomElement() on the names array. You can use this function on any Collection, such as arrays and dictionaries. Keep in mind that the returned random element is an optional.

// Can you also use the new random functions in Swift 4.2. to shuffle an array? Yes! Randomizing the order of an array is surprisingly simple:
var characterNames = ["Ford", "Zaphod", "Trillian", "Arthur", "Marvin"]
characterNames.shuffle()
// `names` can now be: ["Zaphod", "Marvin", "Arthur", "Ford", "Trillian"]

//The shuffle functions use Swift’s typical naming structure, so shuffle() shuffles the array in-place, mutating the original array, and shuffled() returns a copy of the shuffled array.
//You can even shuffle a Sequence, like this:
let sequence = 0 ..< 7
let shuffledSequence = sequence.shuffled()
// `shuffledSequence` can now be: [0, 6, 2, 3, 4, 1, 5]

// Are you using a Swift version lower than 4.2? Then use the random number functions in the chapters below.
// Please check this website for example : https://learnappmaking.com/random-numbers-swift/

// BEST PRACTICE
if a==b{
    return true
}else{
    return false
}
// yerine asagıdaki kodu kullanabilirsin.
return a == b

```


