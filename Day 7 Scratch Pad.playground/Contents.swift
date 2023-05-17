import UIKit

// ======================================== Functions ======================================
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want. ")
}

showWelcome()


// Function with a input parameter
func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}
               
printTimesTables(number: 5, end: 14)



// ============================================= Return values from a function ================================
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let results = rollDice()
print(results)


// ============================================= Challenge 1 ===================================================
func compareTwoStrings(string1: String, string2: String) -> Bool {
    // My code
//    let sortedString1 = string1.sorted()
//    let sortedString2 = string2.sorted()
//
//    if sortedString1 == sortedString2 {
//        return true
//    } else {
//        return false
//    }
    
    // Instructors code
    // you can compare the value directly and return true or false directly from the operator
    return string1.sorted() == string2.sorted()
}

print(compareTwoStrings(string1: "aec", string2: "cba"))


func pythagoras(a: Double, b: Double) -> Double {
//    let input = a * a + b * b
//    let root = sqrt(input)
//    return root
    
    
    // when there is only one line of code a function must return a value. You can simplify the code like below and you don't need to
    // use the word return
    sqrt(a * a + b * b)
}

print(pythagoras(a: 3, b: 5))


// This function will return nothing before printing the say hello to the console. You can use return at anytime to exit the function
func sayHello(){
    return
}

// ========================================== Returning multiple values from a function =======================================
// The recomneded way of doing this is with a tuple
func getUser() -> (firstName: String, lastName: String){
    //(firstName: "Taylor", lastName: "Swift")
    // When using a tuple you don't have to use the key
    ("Taylor", "Swift")
}

let user3 = getUser()

print("Name: \(user3.firstName) \(user3.lastName)")


// There is a way to pull the data out of a tuple called destructuring
// The thing is you would have to know what the values are being returned so you would have to be familiar with the code base
let (firstname, lastname) = getUser()

print("Name from destructuring: \(firstname) \(lastname)")


// If you only want to return on value you can use an underscore to just get the value you want
let (firstName1, _) = getUser()
print(firstName1)



// ======================================= Customize parmaeter labels with functions =======================================
// basically names for parameter for external calls and internal variables in the function


// This example removes the need to provide a parameter name to a function'
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO WORLD"
let result = isUppercase(string)
print(result)


// you can also get the parameter name an external paramter name to make it read easier to call
// in this instance the for is the external parameter name and inside of the function it is number
func printTimesTable(for number: Int) {
    for i in 1...12{
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTable(for: 5)
