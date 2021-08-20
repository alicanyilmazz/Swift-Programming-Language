// ARRAY

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

// DICTIONARY

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


