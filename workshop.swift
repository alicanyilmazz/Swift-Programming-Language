

// ------------------------------------------- Swift Workshop 1 ------------------------------------------------------

// 1.) Verilen sayının basamaklarını birler basamagından baslayarak ayırıp ekrana bastıran program.
var number : Int = 156
var arrayOfNumber : [Int] = []
var reversedArrayOfNumber: [Int] = []

while number>0 {
    arrayOfNumber.append(number % 10)
    number = number / 10
}

reversedArrayOfNumber += arrayOfNumber.reversed()
for num in reversedArrayOfNumber {
    print(num)
}

// 2. Çözüm yolu
var number : Int = 156
var stringNumber : String = "\(number)"
for num in stringNumber {
   print(num)
}

// 2.) Verilen kelimenin tersten yazılışının yine kendisiyle aynı olup olmadıgını kontrol eden programı yazınız.
var sentence = "alican"
var reversedSentence = ""
for eachCharacter in sentence {
    reversedSentence = String(eachCharacter) + reversedSentence
}

if sentence == reversedSentence {
    print("this word is polindrome!")
}else{
    print("this word is not polindrome!")
}

