

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


