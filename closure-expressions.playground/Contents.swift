//: Closure Expressions

func doubler(i: Int) -> Int {
    return i * 2
}

let doubleFunction = doubler
doubleFunction(4)

let numbers = [1,2,3,4,5]
let doubleNumbers = numbers.map(doubleFunction)

// Using closure expressions with the map function
let tripleNumbers = numbers.map({(i: Int) -> Int in return i * 3})

// Using closure expressions with the sorted function
var names = ["Dean", "Charles", "Russell"]

func backwards(s1: String, s2: String) -> Bool {
 return s1 > s2
}

//names.sort(backwards)

let sortedNames = names.sort({(s1: String, s2: String) -> Bool in return s1 > s2})
sortedNames


//////////////////////////////
// Closure Shorthand Syntax
//////////////////////////////

let tripleFunction = {(i: Int) -> Int in return i * 3}
[1,2,3,4,5].map(tripleFunction)

// Rule #1
[1,2,3,4,5].map({(i: Int) -> Int in return i * 3})

// Rule #2: Inferring Type from Context
[1,2,3,4,5].map({i in return i * 3})

// Rule #3: Implicit Returns from Single Expression Closures
[1,2,3,4,5].map({i in i * 3})

// Rule #4: Shorthand Argument Names
[1,2,3,4,5].map({$0 * 3})

// Rule #5: Trailing Closures
[1,2,3,4,5].map() {$0 * 3}

[1,2,3,4,5].map() {
    (var digit) -> Int in
    if digit % 2 == 0 {
        return digit/2
    } else {
        return digit
    }
}

// Rule #6: Ignoring Parentheses
[1,2,3,4,5].map {$0 * 3}

