

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

// 3.) Bir sayının faktöriyelini hesaplayan programı yazınız.
var number : Int = 4
var result : Int = 1
for num in 1...number {
    result = result * num;
}
print("\(number)! = \(result)")

// 4.) Bir sayının asal olup olmadıgını belirleyen programı yazınız.
var initialNumber : Int = 1
var endNumber : Int = 8
var isPrimeNumber : Bool = true

for num in 2..<endNumber {
    if(endNumber%num == 0){
        isPrimeNumber = false
        break
    }
}

if isPrimeNumber {
    print("is prime number")
}else{
    print("is not prime number")
}

// 1 den 100 e kadar olan asal sayıları yazdıran kod.
var isPrime : Bool
for num in 2...100 {
    isPrime=true
    for eachNum in 2..<num {
        if num % eachNum == 0{
            isPrime=false
            break
        }
    }
    if isPrime {
        print("\(num) is a prime number.")
    }
}


// 5.)  Fibonacci Serisi kodunu yazalım.
var fibonacciLength : Int = 10
var leftNumber : Int = 0
var rightNumber : Int = 1
var nextNumber : Int = 0

print(rightNumber)

while fibonacciLength > 2 {
    nextNumber = leftNumber + rightNumber
    leftNumber = rightNumber
    rightNumber = nextNumber
    print(rightNumber)
    fibonacciLength -= 1
}

// 6.) Bir sayının asal carpanlarını bulan programı yazınız.
var number : Int = 30
var isPrime : Bool = true

for eachNum in 2...number {
    if number % eachNum == 0{
        isPrime=true
        for num in 2..<eachNum {
            if eachNum % num == 0 {
                isPrime=false
                break
            }
        }
    }
    if isPrime {
        print(eachNum)
    }
}

// 7.) Belirlenen bir sayının Polindromik olup olmadıgını kontrol eden programı yazınız. Örneğin : 11 , 202 , 1441 gibi sayılar polindromiktir.
let number = 202
let strNumber = String(number)

var reversedNumber : String = ""

for eachChar in strNumber {
     reversedNumber = String(eachChar) + reversedNumber
}

if reversedNumber == strNumber{
    print("\(strNumber) is polindromic.")
}else{
    print("\(strNumber) is not polindromic.")
}

// 8.) Belirtilen array in algoritma kurarak tersini almamızı sağlayan programı yazınız.

// Algoritma kurarak bir int array in tersini almak
var confusedNumbers = [1,2,4,10,3,6,7,9]
var confusedNumberLastIndex = confusedNumbers.count-1

let confusedNumberMiddle = confusedNumberLastIndex / 2
var counterIndex = 0

while counterIndex <= confusedNumberMiddle {
    let stepperIndex = confusedNumberLastIndex - counterIndex
    let temporalValue = confusedNumbers[counterIndex]
    confusedNumbers[counterIndex] = confusedNumbers[stepperIndex]
    confusedNumbers[stepperIndex] = temporalValue
    counterIndex+=1
}
print("Reversed Array with Algorithm is \(confusedNumbers)")

// Yukarıdaki algoritmayı Refactor ederek daha efektif hale getirelim , kısaltalım.
var concordNumbers = [1,2,4,10,3,6,7,9]
var concordNumbersIndex = 0

while concordNumbersIndex <= (concordNumbers.count-1)/2 {
    concordNumbers.swapAt(concordNumbersIndex, (concordNumbers.count-1)-concordNumbersIndex)
    concordNumbersIndex += 1
}
print(concordNumbers)


// 9.) Belirtilen dizideki çift ve tek sayıları ayıran programı yazınız.
var allNumbers : [Int] = [2,4,5,1,22,12,37,39]
var evenNumbers = [Int]()
var oddNumbers = [Int]()

for eachNumbers in allNumbers {
    if eachNumbers % 2 == 0 {
        evenNumbers.append(eachNumbers)
    }else{
        oddNumbers.append(eachNumbers)
    }
}
print(evenNumbers)
print(oddNumbers


