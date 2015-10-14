//: Playground - noun: a place where people can play

import UIKit

// This function takes a String and prints it.
func printString(aString: String) {
    print("Printing the string pass in : \(aString)")
}

printString("Keep learning")

/*Assign the function we just declared to a constant. Note that we do not add parentheses "()" after the function name.*/

let someFunction = printString

someFunction("hello")

func printInt(number: Int) -> Int {
    return number * number / number
}

let numberOfApples = 10
printInt(numberOfApples)


func displayString(printStringFunc: (String) -> Void) {
    printStringFunc("I'm a function inside another function")
}

displayString(printString)


// Using the filter function
let allNumbers = [1,2,3,4,5,6,7,8,9,10]

func isEvenNumber(i: Int) -> Bool {
    return i % 2 == 0
}

let ifEven = isEvenNumber

let evenNumbers = allNumbers.filter(ifEven)
