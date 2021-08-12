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
var mySet : Set = [1,2,3,4,5,1,2,12] // unordered bir şekilde ve eleman tekrarına düşmeden sıralar
var myStringSet : Set = ["a","b","c","d","e","a","b"] // unordered bir şekilde ve eleman tekrarına düşmeden sıralar

var myNumberArray = [1,2,3,1,2,5,6,2,1] // array olusturuyoruz
var myNumberSet = Set(myNumberArray); // Array 'imizi Set olarak convertion yapıyoruz. Böylece array de tekrar eden value ' lardan kurtuluyoruz.

var mySetOne : Set = [1,2,3]
var mySetTwo : Set = [3,4,5]

var mySetThree : Set = mySetOne.union(mySetTwo) // Union ile iki Set 'i birleştiriyoruz.
```
```diff
@@ Dictionary at Swift @@
```
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
