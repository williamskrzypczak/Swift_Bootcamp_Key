//: # Swift Programming Fundamentals
//: ## Introduction
//: Welcome to this Swift Playground! This lesson will guide you through the basics of Swift programming. Each section will present a concept followed by an exercise. In the exercises, you will complete the code based on the concept you just learned.

//: ---
//: # 1. Variables and Constants
//: ## Concept Overview:
//: Variables allow you to store and modify data. Use the `var` keyword for variables when the value might change.
//: Constants are like variables, but their values cannot change once set. Use the `let` keyword for constants.
//:
//: Example:
var mutableNumber = 5  // This is a variable, and we can change its value
mutableNumber = 10

let immutableNumber = 20  // This is a constant, and its value cannot be changed
// immutableNumber = 25  // Uncommenting this will cause an error

//: ## Exercise 1:
//: 1. Declare a `var` variable named `temperature` and assign it the value `75`.
//: 2. Change the value of `temperature` to `68`.
//: 3. Declare a `let` constant named `freezingPoint` and assign it the value `32`.
//: 4. Uncomment the provided line to see how trying to change a constant will cause an error.
var temperature = 75
temperature = 68

let freezingPoint = 32
//freezingPoint = 30  // Uncommenting this will cause an error


//: ---
//: # 2. Data Types
//: ## Concept Overview:
//: Swift is a **type-safe** language, meaning every variable or constant must have a specific type, and once the type is set, it cannot change.
//: Example of basic types:
//: - `Int`: Integer numbers (whole numbers).
//: - `Double`: Numbers with decimal points.
//: - `String`: Text values.
//: - `Bool`: Boolean values, which are either `true` or `false`.
//:
//: Example:
let anInteger: Int = 42
let aDouble: Double = 3.14159
let aString: String = "Hello, World"
let aBoolean: Bool = true

//: ## Exercise 2:
//: 1. Declare a variable named `height` of type `Double` and assign it a value of `5.9`.
//: 2. Declare a constant named `name` of type `String` and assign it a value of `"John"`.
//: 3. Declare a constant named `isRaining` of type `Bool` and assign it a value of `false`.
var height: Double = 5.9
let name: String = "John"
let isRaining: Bool = false


//: ---
//: # 3. Basic Operators
//: ## Concept Overview:
//: Swift supports basic mathematical and comparison operators like `+`, `-`, `*`, `/` for arithmetic, and `==`, `!=`, `<`, `>`, `<=`, `>=` for comparisons.
//: Example:
let x = 10
let y = 3
let sum = x + y   // Addition
let difference = x - y   // Subtraction
let product = x * y   // Multiplication
let quotient = x / y   // Division
let isEqual = x == y   // Comparison (false)
let isGreater = x > y  // Comparison (true)

//: ## Exercise 3:
//: 1. Declare two constants, `a` and `b`, and assign them values of `50` and `25` respectively.
//: 2. Perform the following operations: sum, subtraction, and multiplication of `a` and `b`. Store the results in variables.
//: 3. Compare `a` and `b` to check if `a` is greater than `b`, and print the result.
let a = 50
let b = 25

let sumAB = a + b
let differenceAB = a - b
let productAB = a * b

let isAGreaterThanB = a > b
print(isAGreaterThanB)


//: ---
//: # 4. String Interpolation
//: ## Concept Overview:
//: String interpolation allows you to embed variables or expressions inside a string using `\(expression)`.
//: Example:
let personName = "Alice"
let greetingMessage = "Hello, \(personName)! Welcome to Swift programming."

//: ## Exercise 4:
//: 1. Declare two constants: `city` and `country`, and assign them appropriate values (like `"Chicago"` and `"USA"`).
//: 2. Use string interpolation to create a sentence like "I live in [city], [country]." and store it in a variable.
//: 3. Print the result.
let city = "Chicago"
let country = "USA"
let locationMessage = "I live in \(city), \(country)."
print(locationMessage)


//: ---
//: # 5. Arrays
//: ## Concept Overview:
//: Arrays store multiple values of the same type in an ordered list. You can access array elements by index and modify the array if it’s mutable (`var`).
//: Example:
var fruits = ["Apple", "Banana", "Cherry"]
fruits.append("Orange")  // Adds an element to the array
print(fruits[0])  // Accesses the first element

//: ## Exercise 5:
//: 1. Create an array named `favoriteMovies` with at least four movie titles as strings.
//: 2. Add a new movie to the array using the `.append()` method.
//: 3. Print the updated array to see the new list of favorite movies.
var favoriteMovies = ["Inception", "The Matrix", "Interstellar", "Avatar"]
favoriteMovies.append("The Dark Knight")
print(favoriteMovies)


//: ---
//: # 6. Loops
//: ## Concept Overview:
//: Loops allow you to repeat code multiple times. The `for-in` loop is used to iterate over a collection, such as an array.
//: Example:
let animals = ["Cat", "Dog", "Elephant"]
for animal in animals {
    print(animal)
}

//: ## Exercise 6:
//: 1. Use a `for-in` loop to print all the movie titles in the `favoriteMovies` array (created in Exercise 5).
for movie in favoriteMovies {
    print(movie)
}


//: ---
//: # 7. Functions
//: ## Concept Overview:
//: Functions are reusable blocks of code. You define a function using the `func` keyword, and functions can take parameters and return a result.
//: Example:
func addTwoNumbers(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

let result = addTwoNumbers(num1: 5, num2: 10)
print(result)  // Output: 15

//: ## Exercise 7:
//: 1. Write a function `multiplyNumbers` that takes two integers as parameters and returns their product.
//: 2. Call the function with example values and store the result.
//: 3. Print the result to verify the function works.
func multiplyNumbers(num1: Int, num2: Int) -> Int {
    return num1 * num2
}

let productResult = multiplyNumbers(num1: 4, num2: 6)
print(productResult)


//: ---
//: # 8. Optionals
//: ## Concept Overview:
//: Optionals allow a variable or constant to hold a value or `nil` (no value). You safely access an optional using optional binding (`if let` or `guard let`).
//: Example:
var optionalString: String? = "I might have a value"
optionalString = nil  // Now it's nil

//: ## Exercise 8:
//: 1. Declare an optional string `favoriteBook` and assign it the value `"1984"`.
//: 2. Use optional binding (`if let`) to unwrap and print the book name.
//: 3. If the optional contains `nil`, print an alternative message.
var favoriteBook: String? = "1984"

if let book = favoriteBook {
    print("My favorite book is \(book).")
} else {
    print("I don't have a favorite book.")
}


//: ---
//: # 9. Structs
//: ## Concept Overview:
//: Structs in Swift are user-defined data types that allow you to group related properties and behaviors. Structs are **value types** (copied when passed).
//: Example:
struct Rectangle {
    var width: Double
    var height: Double
    
    func area() -> Double {
        return width * height
    }
}

let myRectangle = Rectangle(width: 5.0, height: 3.0)
print("The area is \(myRectangle.area())")

//: ## Exercise 9:
//: 1. Create a `Book` struct with three properties: `title`, `author`, and `pages`.
//: 2. Add a method `description()` that returns a string describing the book in this format: "Title by Author, Pages pages".
//: 3. Create an instance of `Book` and print its description.
struct Book {
    var title: String
    var author: String
    var pages: Int
    
    func description() -> String {
        return "\(title) by \(author), \(pages) pages"
    }
}

let myBook = Book(title: "To Kill a Mockingbird", author: "Harper Lee", pages: 281)
print(myBook.description())


//: ---
//: # 10. Dictionaries
//: ## Concept Overview:
//: A **Dictionary** is a collection type that stores key-value pairs. Each key must be unique, and you can use the key to retrieve the corresponding value.
//: Example:
var studentGrades: [String: Int] = [
    "Alice": 85,
    "Bob": 92,
    "Charlie": 78
]

let bobGrade = studentGrades["Bob"]   // Retrieves the value 92
studentGrades["David"] = 88           // Adds a new entry
studentGrades["Alice"] = 90           // Updates Alice's grade
studentGrades["Charlie"] = nil        // Removes the entry for Charlie

//: ## Exercise 10:
//: 1. Create a dictionary `movieRatings` where the keys are movie titles and the values are integer ratings.
//: 2. Add a new movie and its rating to the dictionary.
//: 3. Update the rating of an existing movie.
//: 4. Print the updated dictionary.
var movieRatings: [String: Int] = [
    "Inception": 9,
    "The Matrix": 8,
    "Interstellar": 10
]

movieRatings["Avatar"] = 8
movieRatings["The Matrix"] = 9
print(movieRatings)


//: ---
//: # 11. Classes
//: ## Concept Overview:
//: Classes are similar to structs but with key differences: classes are **reference types**, meaning they are passed by reference, not by value. Classes can also inherit from other classes, unlike structs.
//: Example:
class Vehicle {
    var make: String
    var model: String
    var year: Int
    
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }
    
    func getDescription() -> String {
        return "\(year) \(make) \(model)"
    }
}

let myCar = Vehicle(make: "Honda", model: "Civic", year: 2020)
print(myCar.getDescription())

//: ## Exercise 11:
//: 1. Create a `Person` class with three properties: `firstName`, `lastName`, and `age`.
//: 2. Write an initializer method to set these properties when creating a new instance.
//: 3. Add a method `fullName()` that returns the full name of the person by concatenating `firstName` and `lastName`.
//: 4. Create an instance of `Person` and call `fullName()` to print the person's full name.
class Person {
    var firstName: String
    var lastName: String
    var age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

let person = Person(firstName: "John", lastName: "Doe", age: 30)
print(person.fullName())

