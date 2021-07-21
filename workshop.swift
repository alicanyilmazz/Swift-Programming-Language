// ------------------------------------------- quiz ------------------------------------------------------

var number : Int = 156
var arrayOfNumber : [Int] = []
var counter : Int = 0

while counter<3 {
    arrayOfNumber.append(number % 10)
    number = number / 10
    counter+=1
}

var arr : [Int] = []
var arrayOfNumber2: [Int] = []
arrayOfNumber2 += arrayOfNumber.reversed()
for num in arrayOfNumber2 {
    print(num)
}

