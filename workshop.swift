

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

