//
//  Questionnaire.swift
//  SwiftQuiz
//
//  Created by Aleksandr Morozov on 22.05.2022.
//

import Foundation

//MARK: - Variables
var questionList = [Question]()

//MARK: - Questions
func fillData() {
    //1
    questionList.append(Question(questionTitle: "What is the default data type for floating point numbers in Swift?", answers: ["Float", "Double", "Int", "Fract"], correctAnswerIndex: 1))
    //2
    questionList.append(Question(questionTitle: "What keyword is used to declare a constant in Swift?", answers: ["var", "const", "let", "strong"], correctAnswerIndex: 2))
    //3
    questionList.append(Question(questionTitle: "How to write a multiple line comment in Swift?", answers: ["/ … /", "/n … n/", "/* … */", "// … //"], correctAnswerIndex: 2))
    //4
    questionList.append(Question(questionTitle: "How are Structs different from Classes in Swift?", answers: ["Structures are value types", "Structures are reference types", "Structures support inheritance", "Structures don’t receive a default initializer"], correctAnswerIndex: 0))
    //5
    questionList.append(Question(questionTitle: "Name the properties whose initial values are not calculated until the first use", answers: ["Computed Properties", "Delayed Properties", "Stored Properties", "Lazy Stored Properties"], correctAnswerIndex: 3))
    //6
    questionList.append(Question(questionTitle: "What is the significance of “?” in Swift?", answers: ["It is used to force unwrap the variable", "It makes a property optional", "It returns first none nil value", "It is used to replace the external label"], correctAnswerIndex: 1))
    //7
    questionList.append(Question(questionTitle: "Choose the correct statement", answers: ["Bounds are in a view’s own coordinate system", "Frame is in the superview’s coordinate system", "Both statements are correct", "Both statements are incorrect"], correctAnswerIndex: 2))
    //8
    questionList.append(Question(questionTitle: "Name a protocol that allows us to convert Swift types to and from JSON", answers: ["Decodable", "Codable", "Encodable", "JSONDecoder"], correctAnswerIndex: 1))
    //9
    questionList.append(Question(questionTitle: "A function inside a function is called…", answers: ["Nested Function", "Super Function", "Base Function", "Encapsulation"], correctAnswerIndex: 0))
    //10
    questionList.append(Question(questionTitle: "Constant and variable names in Swift can't contain…", answers: ["Numbers", "Capital letters", "Spaces", "Emoji"], correctAnswerIndex: 2))
    //11
    questionList.append(Question(questionTitle: "What keyword is used to declare a variable in Swift?", answers: ["No keyword required", "let", "dyn", "var"], correctAnswerIndex: 3))
    //12
    questionList.append(Question(questionTitle: "Swift consists of the following Control transfer statements, except for:", answers: ["Continue", "Fallthrough", "Pass", "Break"], correctAnswerIndex: 2))
    //13
    questionList.append(Question(questionTitle: "What is PLIST?", answers: ["Process list", "Programming list", "Property list", "Protocol list"], correctAnswerIndex: 2))
    //14
    questionList.append(Question(questionTitle: "What is “??” in Swift?", answers: ["Optional", "Binary operator", "Logical OR operator", "Nil-coalescing operator"], correctAnswerIndex: 3))
    //15
    questionList.append(Question(questionTitle: "What is the logical 'AND' operator in Swift?", answers: ["||", "&&", "&", "+"], correctAnswerIndex: 1))
    //16
    questionList.append(Question(questionTitle: "What is wrong with this code? \n\nlet num = 1.0 + 1 ", answers: ["There is nothing wrong", "There is no semicolon", "num is constant and can’t be changed", "1.0 and 1 are different types"], correctAnswerIndex: 0))
    //17
    questionList.append(Question(questionTitle: "What can AnyObject represent?", answers: ["An instance of any class", "An instance of function type", "An instance of an optional type", "All answers are correct"], correctAnswerIndex: 3))
    //18
    questionList.append(Question(questionTitle: "What is LLVM?", answers: ["Objective-C compiler", "Swiftc compiler", "Contains both compilers", "None of the above"], correctAnswerIndex: 2))
    //19
    questionList.append(Question(questionTitle: "What is data type of nums? \n\nlet nums = (“num”, 0)", answers: ["Dictionary", "Optional", "Tuple", "All answers are incorrect"], correctAnswerIndex: 2))
    //20
    questionList.append(Question(questionTitle: "How many times will this loop be executed? \nfor i in 0…100 { \nprint(i) \n}", answers: ["0", "99", "100", "101"], correctAnswerIndex: 3))
    //21
    questionList.append(Question(questionTitle: "How would you call a function that returns a value and also throws errors?", answers: ["try!", "!try", "try?", "?try"], correctAnswerIndex: 2))
    //22
    questionList.append(Question(questionTitle: "didSet and willSet are…", answers: ["Property Observers", "Instance Methods", "Lifecycle Methods", "All answers are correct"], correctAnswerIndex: 0))
    //23
    questionList.append(Question(questionTitle: "When a function takes a closure as a parameter, when should you mark it as an escaping?", answers: ["When it’s lazy loaded", "When it’s scope is undefined", "When it’s executed after function returns", "When it executed before function returns"], correctAnswerIndex: 2))
    //24
    questionList.append(Question(questionTitle: "What are the collection types in Swift?", answers: ["Dictionary and library", "Array and library", "Library, dictionary and array", "Dictionary and array"], correctAnswerIndex: 3))
    //25
    questionList.append(Question(questionTitle: "Swift is…", answers: ["Scripting language", "Object-oriented language", "type safe language", "All answers are correct"], correctAnswerIndex: 3))
    //26
    questionList.append(Question(questionTitle: "What are the common execution states in iOS?", answers: ["Not running", "Inactive", "Active", "All of the above"], correctAnswerIndex: 3))
    //27
    questionList.append(Question(questionTitle: "What statement can be used to stop the execution of a loop, if, or switch statement?", answers: ["Damper", "Execute", "Stop", "Break"], correctAnswerIndex: 3))
    //28
    questionList.append(Question(questionTitle: "iOS was originally an acronym for…", answers: ["internet operating system", "iPhone operating system", "interwork operating system", "integrated operating system"], correctAnswerIndex: 1))
    //29
    questionList.append(Question(questionTitle: "The IDE used in Swift is…", answers: ["Visual Studio", "CLion", "Xcode", "Gas"], correctAnswerIndex: 2))
    //30
    questionList.append(Question(questionTitle: "Double has a precision of at least … decimal digits in Swift", answers: ["6", "15", "24", "32"], correctAnswerIndex: 1))
    //31
    questionList.append(Question(questionTitle: "Name the incorrect data type in Swift", answers: ["Double", "UInt", "Optional", "Char"], correctAnswerIndex: 3))
    //32
    questionList.append(Question(questionTitle: "If you don’t want to mention external name in function call, you can use…", answers: ["!", "?", "/", "_"], correctAnswerIndex: 3))
    //33
    questionList.append(Question(questionTitle: "Name the incorrect value type in Swift", answers: ["Class", "Enum", "String", "Double"], correctAnswerIndex: 0))
    //34
    questionList.append(Question(questionTitle: "Which of the following frameworks is not used in iOS?", answers: ["UIKit", "CoreMotion", "AppKit", "Foundation"], correctAnswerIndex: 2))
    //35
    questionList.append(Question(questionTitle: "Which of the following declares an immutable array in Swift?", answers: ["let num = [Int]()", "var num = [Int]", "let num = [Int]", "var num = [Int]()"], correctAnswerIndex: 0))
    //36
    questionList.append(Question(questionTitle: "What is the current status of the App if it is running in the background but not receiving any events?", answers: ["Inactive state", "Background state", "Suspended state", "Active state"], correctAnswerIndex: 0))
    //37
    questionList.append(Question(questionTitle: "What is Bundle in iOS?", answers: ["It is used to send data", "Class", "Folder with .app extension", "All answers are correct"], correctAnswerIndex: 2))
    //38
    questionList.append(Question(questionTitle: "Which symbol can be used to separate digits in numeric literals?", answers: [".", "'", "/", "_"], correctAnswerIndex: 3))
    //39
    questionList.append(Question(questionTitle: "Choose the correct statement", answers: ["floor(-3.001) = -3", "ceil(-3.999) = -3", "round(-3.500) = -3", "Int(-3.999) = -4"], correctAnswerIndex: 1))
    //40
    questionList.append(Question(questionTitle: "The supported architecture for round, ceil and floor is/are…", answers: ["32 bit", "64 bit", "Both 32 and 64 bit", "All answers are incorrect"], correctAnswerIndex: 2))
    //41
    questionList.append(Question(questionTitle: "Which statements evaluates to true while checking the equal strings in Swift?", answers: ["'abc' === 'def'", "'abc' == 'ABC'", "'abc' === 'def'", "'abc' == 'abc'"], correctAnswerIndex: 3))
    //42
    questionList.append(Question(questionTitle: "Which method is used to check for prefix in Swift?", answers: ["has", "hasPrefix", "isPrefix", "isPart"], correctAnswerIndex: 1))
    //43
    questionList.append(Question(questionTitle: "How to convert a String to uppercase in Swift?", answers: ["string.uppercase()", "string.uppercased()", "string.upper()", "string.toUppercase()"], correctAnswerIndex: 1))
    //44
    questionList.append(Question(questionTitle: "Which operator is used to negate a Bool in Swift?", answers: ["NOT", "~", "!=", "!"], correctAnswerIndex: 3))
    //45
    questionList.append(Question(questionTitle: "Which type are arrays in Swift?", answers: ["reference", "value", "object", "immutable"], correctAnswerIndex: 1))
    //46
    questionList.append(Question(questionTitle: "Which of the following are supported by Swift?", answers: ["Arrays with repeated values", "Empty arrays", "Multi-dimensional arrays", "All answers are correct"], correctAnswerIndex: 3))
    //47
    questionList.append(Question(questionTitle: "Which method is used to extract values of a given type from an array?", answers: ["extractValue", "getValue", "getMap", "flatMap"], correctAnswerIndex: 3))
    //48
    questionList.append(Question(questionTitle: "How to filter out nil from an array?", answers: ["flatMap", "filterMap", "valueMap", "extractMap"], correctAnswerIndex: 0))
    //49
    questionList.append(Question(questionTitle: "Which is the feature of tuple in Swift?", answers: ["Tuples can be decomposed into variables", "The values within a tuple can be of any type", "It's a comma-separated list of types", "All of the above"], correctAnswerIndex: 3))
    //50
    questionList.append(Question(questionTitle: "How to swap a and b in Swift?\n\nvar a = 0\nvar b = 1", answers: ["(a)=(b)", "swap(a,b)", "a.swap(b)", "(a, b) = (b, a)"], correctAnswerIndex: 3))
    //51
    questionList.append(Question(questionTitle: "How to reverse a String in Swift?", answers: ["string.reverse()", "string.return()", "[::-1]", "string.reversed()"], correctAnswerIndex: 3))
    //52
    questionList.append(Question(questionTitle: "How to declare an Iboutlet property?", answers: ["var button: UIButton(IBOutlet)", "IBOutlet var button:UIButton", "var button: UIButtonOutlet", "None of the above"], correctAnswerIndex: 3))
    //53
    questionList.append(Question(questionTitle: "Name the control transfer statement in Swift?", answers: ["Break", "Continue", "Fallthrough", "All of the above"], correctAnswerIndex: 3))
    //54
    questionList.append(Question(questionTitle: "What are the advantages of Swift?", answers: ["All answers are correct", "It’s safe", "It’s fast", "It’s opensource"], correctAnswerIndex: 0))
    //55
    questionList.append(Question(questionTitle: "What type of integer is denoted by 'Int8'?", answers: ["Closed", "Signed", "Unsigned", "Open"], correctAnswerIndex: 1))
    //56
    questionList.append(Question(questionTitle: "What will be printed in the console?\n\nvar greeting = 'Hello World!'\ngreeting = nil?", answers: ["nil", "Hello World!", "greeting == nil", "The compiler won’t allow it"], correctAnswerIndex: 3))
    //57
    questionList.append(Question(questionTitle: "What is super class of AppDelegate?", answers: ["NSObject", "UIDelegate", "UIResponder", "None of the above"], correctAnswerIndex: 2))
    //58
    questionList.append(Question(questionTitle: "What access control modifier restricts the use of an entity within the same defined source file?", answers: ["fileprivate", "internal", "private", "open"], correctAnswerIndex: 0))
    //59
    questionList.append(Question(questionTitle: "What is default access control level in Swift?", answers: ["open", "public", "internal", "private"], correctAnswerIndex: 2))
    //60
    questionList.append(Question(questionTitle: "A function that can change any property in its enclosing value is called...", answers: ["temporary", "changeable", "mutating", "variable"], correctAnswerIndex: 2))
    //61
    questionList.append(Question(questionTitle: "Which of these is a protocol?", answers: ["ObservedObject", "StateObject", "ObservableObject", "Published"], correctAnswerIndex: 2))
    //62
    questionList.append(Question(questionTitle: "! (not) is an example of", answers: ["function", "closure", "conditional", "logical operator"], correctAnswerIndex: 3))
    //63
    questionList.append(Question(questionTitle: "&& (and) is an example of", answers: ["function", "closure", "conditional", "logical operator"], correctAnswerIndex: 3))
    //64
    questionList.append(Question(questionTitle: "What is the best classification for the identifier 'stringOfNumbers'?", answers: ["identifier written in camel case", "conditional statement", "identifier with a string data type", "function's name"], correctAnswerIndex: 0))
    //65
    questionList.append(Question(questionTitle: "Identify the assignment operator", answers: ["=", "==", ">", "&&"], correctAnswerIndex: 0))
    //66
    questionList.append(Question(questionTitle: "if, else if, else statements are classified as", answers: ["loops", "conditionals", "constants", "variables"], correctAnswerIndex: 1))
    //67
    questionList.append(Question(questionTitle: "Which of the following is executed when the condition in an if statement is false?", answers: ["if else", "else", "if", "if then"], correctAnswerIndex: 1))
    //68
    questionList.append(Question(questionTitle: "Check if 'a' is not equal to 100 or 'b' is less than 200", answers: ["if a = 100 || b < 200", "if a != 100 || b > 200", "if a != 100 || b < 200", "if a != 100 && b < 200"], correctAnswerIndex: 2))
    //69
    questionList.append(Question(questionTitle: "Name the value that can only be either true or false?", answers: ["Bin", "Int", "Double", "Boolean"], correctAnswerIndex: 3))
    //70
    questionList.append(Question(questionTitle: "What is the correct way to call the function below:\nfunc rickAstley( ) {\nprint('Never Gonna Give You Up')\n}", answers: ["call rickAstley", "func( )", "rickAstley( )", "func = rickAstley( )"], correctAnswerIndex: 2))
}
