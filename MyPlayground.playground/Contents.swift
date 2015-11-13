//: Playground - noun: a place where people can play

import UIKit
/*
// Strings

var str = "Hello, playground"

var name:String = "Paige"

print("Hello " + name + ".")
print("Hello \(name)")

// Integers (whole numbers)

var int:Int = 9

int = int * 2

int = int / 4

var anotherInt = 7

print(int + anotherInt)
print("The value of int is \(int)")

// Doubles (numbers with decimals)

var number:Double = 8.4

print(number * Double(int))

// Booleans (true or false)

var isMale:Bool = true


var myDouble:Double = 2.2
var myInt:Int = 2

print("The product of \(myDouble) and \(myInt) is \(myDouble * Double(myInt))")

// Arrays

var array = [17, 25, 13, 47]

print(array[0])
print(array[2])

print(array.count)

array.append(56)

array.removeAtIndex(3)
print(array)

array.sort()


var myArray = [6.1, 8.4, 7.2]
myArray.removeAtIndex(1)
myArray.append(myArray[0] * myArray[1])
print(myArray)


// Dictionaries

var dictionary = [
    "computer": "something to play Call of Duty on",
    "coffee": "best drink ever"
]

print(dictionary["coffee"]!)

print(dictionary.count)

dictionary["pen"] = "Old fashioned writing implement"

dictionary.removeValueForKey("computer")

print(dictionary)

var menu = [
    "coffee": 3.24,
    "pizza": 5.99,
    "ice cream": 4.99
]

var totalCost:Double = menu["coffee"]! + menu["pizza"]! + menu["ice cream"]!

print("The total cost of the three items is \(totalCost)")



// If Statements

var age = 13


// Greater than or equal to
if age >= 18 {
    print("You can play!")
} else {
    print("Sorry, you're too young")
}

var myName = "Johnny"

// Equal to

if myName == "Paige" {
    print("Hi " + myName + " you can play!")
} else {
    print("Sorry, " + " you can't play")
}

// 2 If statements with AND

if myName == "Johnny" && age >= 18 {
    print("You can play!")
}

// 2 If statements with OR

if myName == "Johnny" || myName == "Paige" {
    print("Welcome " + myName)
}


var isFemale = true

if isFemale {
    print("You are a women!")
}

var userName = "pslim"
var password = "password"

if userName == "pslim" && password == "password" {
    print("You're in!")
} else if userName != "pslim" && password != "password" {
    print("Both fields are wrong")
} else if userName != "pslim" {
    print("UserName incorrect")
} else if password != "password" {
    print("Password is wrong")
}


// For Loops

for var i = 1; i < 10; i++ {
    print(i)
}

for var i = 20; i > 10; i-- {
    print(i)
}

for var i = 2; i <= 20; i = i + 2 {
    print(i)
}

var arr = [8, 3, 9, 91]

for x in arr {
    print(x)
}

for (index, value) in arr.enumerate() {
    arr[index] = value + 1
}

print(arr)

var myArr:[Double] = [8, 3, 9, 91]

for (index,value) in myArr.enumerate() {
    myArr[index] = value / 2
}
print(myArr)


// Basic While Loop

//var i = 1
//
//while i < 10 {
//    
//    print(i)
//    
//    i = i * 2
//}
//
//var n = 1
//
//while n <= 10 {
//    print(n * 5)
//    n++
//}

var arr2 = [8, 3, 1, 9, 4, 5, 7]
var i = 0

//while i < arr2.count {
//    print(arr2[i])
//    i++
//}


while i < arr2.count {
    arr2[i] = arr2[i] - 1
    i++
}
print(arr2)

var number = 47

var isPrime = true

if number != 2 && number != 1 {
    for var i = 2; i < number; i++ {
        if number % i == 0 {
            isPrime = false
        }
    }
} else if number == 1 {
    isPrime = false
}

print(isPrime)

*/


// String Manipulation

var str = "Hello"

var newString = str + " Paige"

for character in newString.characters {
    print(character)
}

var newTypeString = NSString(string: newString)

newTypeString.substringToIndex(5)

newTypeString.substringFromIndex(6)

newTypeString.substringWithRange(NSRange(location: 3, length: 5))

if newTypeString.containsString("Paige") {
    print("Paige is here!")
}

newTypeString.componentsSeparatedByString(" ")

newTypeString.uppercaseString

newTypeString.lowercaseString













