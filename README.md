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




```
