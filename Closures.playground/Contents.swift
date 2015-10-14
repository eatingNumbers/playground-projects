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


////////////////////////
//Capturing Variables
////////////////////////

// Returnings functions
func someFunction(num: Int) -> (){ // The empty () means a return type of void.
    
}

// This is the anonymous function.
func printerFunction() -> (Int) -> () {
    var runningTotal = 0
    func printInteger(number: Int) {
        runningTotal += 10
        print("The running total is: \(runningTotal)")
    }
    return printInteger
}

let printAndREturnIntegerFunc = printerFunction()

printAndREturnIntegerFunc(20)



let runningtotalFunction = printerFunction()
runningtotalFunction(2)

// Challenge 1 of 2
//func mathOperation(operation: (Int, Int) -> Int, a: Int, b: Int) -> Int {
//    return operation(a, b)
//}

// Challenge 2 of 2
/**
For this code challenge, let’s define a math operation as a function that
carries out some work on two integers and returns an integer as well. An
example is the function below, `differenceBetweenNumbers`, which takes two
integers and calculates the difference between the numbers. After calculating,
it returns the difference.
*/

func differenceBetweenNumbers(a: Int, b:Int) -> (Int) {
    return a - b
}


func mathOperation(operation: (Int, Int) -> Int, a: Int, b: Int) -> Int {
    return operation(a, b)
}

let difference = mathOperation(differenceBetweenNumbers, a: 20, b: 33)

//See the document "The Swift Programming Language (Swift2) under the subheading "Function Types as Parameter Types"
//It gives a detailed explanation about function types as parameter types.










