

// ------------------------------------------- Swift Workshop 1 ------------------------------------------------------

// 1.) Verilen sayının basamaklarını birler basamagından baslayarak ayırıp ekrana bastıran program.
var number : Int = 156
var arrayOfNumber : [Int] = []
var reversedArrayOfNumber: [Int] = []
var counter : Int = 0

while counter<3 {
    arrayOfNumber.append(number % 10)
    number = number / 10
    counter+=1
}

reversedArrayOfNumber += arrayOfNumber.reversed()
for num in reversedArrayOfNumber {
    print(num)
}
