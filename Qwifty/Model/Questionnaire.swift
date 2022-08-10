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
    
    //        //1
    //        questionList.append(Question(
    //            questionTitle: "What is the default data type for floating point numbers in Swift?".localized(),
    //            answers: [
    //                "Float",
    //                "Double",
    //                "Int",
    //                "Fract"
    //            ],
    //            correctAnswerIndex: 1))
    //
    //        //2
    //        questionList.append(Question(
    //            questionTitle: "What keyword is used to declare a constant in Swift?".localized(),
    //            answers: [
    //                "var",
    //                "const",
    //                "let",
    //                "strong"
    //            ],
    //            correctAnswerIndex: 2))
    //
    //        //3
    //        questionList.append(Question(
    //            questionTitle: "How to write a multiple line comment in Swift?".localized(),
    //            answers: [
    //                "/ … /",
    //                "/n … n/",
    //                "/* … */",
    //                "// … //"
    //            ],
    //            correctAnswerIndex: 2))
    //
    //        //4
    //        questionList.append(Question(
    //            questionTitle: "How are Structs different from Classes in Swift?".localized(),
    //            answers: [
    //                "Structures are value types".localized(),
    //                "Structures are reference types".localized(),
    //                "Structures support inheritance".localized(),
    //                "Structures don’t receive a default initializer".localized()
    //            ],
    //            correctAnswerIndex: 0))
    //
    //        //5
    //        questionList.append(Question(
    //            questionTitle: "Name the properties whose initial values are not calculated until the first use".localized(),
    //            answers: [
    //                "Computed Properties".localized(),
    //                "Delayed Properties".localized(),
    //                "Stored Properties".localized(),
    //                "Lazy Stored Properties".localized()
    //            ],
    //            correctAnswerIndex: 3))
    //
    //        //6
    //        questionList.append(Question(
    //            questionTitle: "What is the significance of “?” in Swift?".localized(),
    //            answers: [
    //                "It is used to force unwrap the variable".localized(),
    //                "It makes a property optional".localized(),
    //                "It returns first none nil value".localized(),
    //                "It is used to replace the external label".localized()
    //            ],
    //            correctAnswerIndex: 1))
    //
    //        //7
    //        questionList.append(Question(
    //            questionTitle: "Choose the correct statement".localized(),
    //            answers: [
    //                "Bounds are in a view’s own coordinate system".localized(),
    //                "Frame is in the superview’s coordinate system".localized(),
    //                "Both statements are correct".localized(),
    //                "Both statements are incorrect".localized()
    //            ],
    //            correctAnswerIndex: 2))
    //
    //        //8
    //        questionList.append(Question(
    //            questionTitle: "Name a protocol that allows us to convert Swift types to and from JSON".localized(),
    //            answers: [
    //                "Decodable",
    //                "Codable",
    //                "Encodable",
    //                "JSONDecoder"
    //            ],
    //            correctAnswerIndex: 1))
    //
    //        //9
    //        questionList.append(Question(
    //            questionTitle: "A function inside a function is called…".localized(),
    //            answers: [
    //                "Nested Function".localized(),
    //                "Super Function".localized(),
    //                "Base Function".localized(),
    //                "Encapsulation".localized()
    //            ],
    //            correctAnswerIndex: 0))
    //
    //        //10
    //        questionList.append(Question(
    //            questionTitle: "Constant and variable names in Swift can't contain…".localized(),
    //            answers: [
    //                "Numbers".localized(),
    //                "Capital letters".localized(),
    //                "Spaces".localized(),
    //                "Emoji".localized()
    //            ],
    //            correctAnswerIndex: 2))
    //
    //        //11
    //        questionList.append(Question(
    //            questionTitle: "What keyword is used to declare a variable in Swift?".localized(),
    //            answers: [
    //                "No keyword required".localized(),
    //                "let",
    //                "dyn",
    //                "var"
    //            ],
    //            correctAnswerIndex: 3))
    //
    //        //12
    //        questionList.append(Question(
    //            questionTitle: "Swift consists of the following Control transfer statements, except for:".localized(),
    //            answers: [
    //                "Continue",
    //                "Fallthrough",
    //                "Pass",
    //                "Break"
    //            ],
    //            correctAnswerIndex: 2))
    //
    //        //13
    //        questionList.append(Question(
    //            questionTitle: "What is PLIST?".localized(),
    //            answers: [
    //                "Process list",
    //                "Programming list",
    //                "Property list",
    //                "Protocol list"
    //            ],
    //            correctAnswerIndex: 2))
    //
    //        //14
    //        questionList.append(Question(
    //            questionTitle: "What is “??” in Swift?".localized(),
    //            answers: [
    //                "Optional".localized(),
    //                "Binary operator".localized(),
    //                "Logical OR operator".localized(),
    //                "Nil-coalescing operator".localized()
    //            ],
    //            correctAnswerIndex: 3))
    //
    //        //15
    //        questionList.append(Question(
    //            questionTitle: "What is the logical “AND” operator in Swift?".localized(),
    //            answers: [
    //                "||",
    //                "&&",
    //                "&",
    //                "+"
    //            ],
    //            correctAnswerIndex: 1))
    //
    //        //16
    //        questionList.append(Question(
    //            questionTitle: "What is wrong with this code?\n\nlet num = 1.0 + 1".localized(),
    //            answers: [
    //                "There is nothing wrong".localized(),
    //                "There is no semicolon".localized(),
    //                "num is constant and can’t be changed".localized(),
    //                "1.0 and 1 are different types".localized()
    //            ],
    //            correctAnswerIndex: 0))
    //
    //    //17
    //            questionList.append(Question(
    //                questionTitle: "What can AnyObject represent?".localized(),
    //                answers: [
    //                    "An instance of any class".localized(),
    //                    "An instance of function type".localized(),
    //                    "An instance of an optional type".localized(),
    //                    "All answers are correct".localized()
    //                ],
    //                correctAnswerIndex: 3))
    //   // 18
    //    questionList.append(Question(
    //        questionTitle: "What is LLVM?".localized(),
    //        answers: [
    //            "Objective-C compiler".localized(),
    //            "Swiftc compiler".localized(),
    //            "Contains both compilers".localized(),
    //            "None of the above".localized()
    //        ],
    //        correctAnswerIndex: 2))
    //
    //        //19
    //        questionList.append(Question(
    //            questionTitle: "What is data type of nums?\n\nlet nums = (“num”, 0)".localized(),
    //            answers: [
    //                "Dictionary".localized(),
    //                "Optional".localized(),
    //                "Tuple".localized(),
    //                "All answers are incorrect".localized()
    //            ],
    //            correctAnswerIndex: 2))
    
    //        //20
    //        questionList.append(Question(
    //            questionTitle: "How many times will this loop be executed?\nfor i in 0…100 { \nprint(i) \n}".localized(),
    //            answers: [
    //                "0",
    //                "99",
    //                "100",
    //                "101"
    //            ],
    //            correctAnswerIndex: 3))
    
    //    //21
    //    questionList.append(Question(
    //        questionTitle: "How would you call a function that returns a value and also throws errors?".localized(),
    //        answers: [
    //            "try!",
    //            "!try",
    //            "try?",
    //            "?try"
    //        ],
    //        correctAnswerIndex: 2))
    
    //        //22
    //    questionList.append(Question(
    //        questionTitle: "didSet and willSet are…".localized(),
    //        answers: [
    //            "Property Observers".localized(),
    //            "Instance Methods".localized(),
    //            "Lifecycle Methods".localized(),
    //            "All answers are correct".localized()
    //        ],
    //        correctAnswerIndex: 0))
    //
//    //23
//    questionList.append(Question(
//        questionTitle: "When a function takes a closure as a parameter, when should you mark it as an escaping?".localized(),
//        answers: [
//            "When it’s lazy loaded".localized(),
//            "When it’s scope is undefined".localized(),
//            "When it’s executed after function returns".localized(),
//            "When it executed before function returns".localized()
//        ],
//        correctAnswerIndex: 2))
//    //24
//    questionList.append(Question(
//        questionTitle: "What are the collection types in Swift?".localized(),
//        answers: [
//            "Dictionary and library".localized(),
//            "Array and library".localized(),
//            "Library, dictionary and array".localized(),
//            "Dictionary, array and set".localized()
//        ],
//        correctAnswerIndex: 3))
    
//        //25
//    questionList.append(Question(
//        questionTitle: "Swift is…".localized(),
//        answers: [
//            "Scripting language".localized(),
//            "Object-oriented language".localized(),
//            "Type safe language".localized(),
//            "All answers are correct".localized()
//        ],
//        correctAnswerIndex: 3))
    
//    //26
//    questionList.append(Question(
//        questionTitle: "What are the common execution states in iOS?".localized(),
//        answers: [
//            "Not running".localized(),
//            "Inactive".localized(),
//            "Active".localized(),
//            "All of the above".localized()
//        ],
//        correctAnswerIndex: 3))
    
//    //27
//    questionList.append(Question(
//        questionTitle: "What statement can be used to stop the execution of a loop, if, or switch statement?".localized(),
//        answers: [
//            "Damper",
//            "Execute",
//            "Stop",
//            "Break"
//        ],
//        correctAnswerIndex: 3))
//
//    //28
//    questionList.append(Question(
//        questionTitle: "iOS was originally an acronym for…".localized(),
//        answers: [
//            "internet operating system",
//            "iPhone operating system",
//            "interwork operating system",
//            "integrated operating system"
//        ],
//        correctAnswerIndex: 1))
//
//    //29
//    questionList.append(Question(
//        questionTitle: "The IDE used in Swift is…".localized(),
//        answers: [
//            "Visual Studio",
//            "CLion",
//            "Xcode",
//            "Gas"
//        ],
//        correctAnswerIndex: 2))
//
//    //30
//    questionList.append(Question(
//        questionTitle: "Double has a precision of at least … decimal digits in Swift".localized(),
//        answers: [
//            "6",
//            "15",
//            "24",
//            "32"
//        ],
//        correctAnswerIndex: 1))
    
//    //31
//    questionList.append(Question(
//        questionTitle: "Name the incorrect data type in Swift".localized(),
//        answers: [
//            "Double",
//            "UInt",
//            "Optional",
//            "Char"
//        ],
//        correctAnswerIndex: 3))
    
//    //32
//    questionList.append(Question(
//        questionTitle: "If you don’t want to mention external name in function call, you can use…".localized(),
//        answers: [
//            "!",
//            "?",
//            "/",
//            "_"
//        ],
//        correctAnswerIndex: 3))
    
//    //33
//    questionList.append(Question(
//        questionTitle: "Name the incorrect value type in Swift".localized(),
//        answers: [
//            "Class",
//            "Enum",
//            "String",
//            "Double"
//        ],
//        correctAnswerIndex: 0))
    
//    //34
//    questionList.append(Question(
//        questionTitle: "Which of the following frameworks is not used in iOS?".localized(),
//        answers: [
//            "UIKit",
//            "CoreMotion",
//            "AppKit",
//            "Foundation"
//        ],
//        correctAnswerIndex: 2))
//
//    //35
//    questionList.append(Question(
//        questionTitle: "Which of the following declares an immutable array in Swift?".localized(),
//        answers: [
//            "let num = [Int]()",
//            "var num = [Int]",
//            "let num = [Int]",
//            "var num = [Int]()"
//        ],
//        correctAnswerIndex: 0))
//
//    //36
//    questionList.append(Question(
//        questionTitle: "What is the current status of the App if it is running in the background but not receiving any events?".localized(),
//        answers: [
//            "Inactive",
//            "Background",
//            "Suspended",
//            "Active"
//        ],
//        correctAnswerIndex: 0))
    
//    //37
//    questionList.append(Question(
//        questionTitle: "What is Bundle in iOS?".localized(),
//        answers: [
//            "It is used to send data".localized(),
//            "Class".localized(),
//            "Folder with .app extension".localized(),
//            "All answers are correct".localized()
//        ],
//        correctAnswerIndex: 2))
//    //38
//    questionList.append(Question(
//        questionTitle: "Which symbol can be used to separate digits in numeric literals?".localized(),
//        answers: [
//            ".",
//            "'",
//            "/",
//            "_"
//        ],
//        correctAnswerIndex: 3))
    
//    //39
//    questionList.append(Question(
//        questionTitle: "Choose the correct statement".localized(),
//        answers: [
//            "floor(-3.001) = -3",
//            "ceil(-3.999) = -3",
//            "round(-3.500) = -3",
//            "Int(-3.999) = -4"
//        ],
//        correctAnswerIndex: 1))
    
        //40
        questionList.append(Question(questionTitle: "The supported architecture for round, ceil and floor is/are…", answers: ["32 bit", "64 bit", "Both 32 and 64 bit", "All answers are incorrect"], correctAnswerIndex: 2))
    //    //41
    //    questionList.append(Question(questionTitle: "Which statements evaluates to true while checking the equal strings in Swift?", answers: ["'abc' === 'def'", "'abc' == 'ABC'", "'abc' === 'def'", "'abc' == 'abc'"], correctAnswerIndex: 3))
    //    //42
    //    questionList.append(Question(questionTitle: "Which method is used to check for prefix in Swift?", answers: ["has", "hasPrefix", "isPrefix", "isPart"], correctAnswerIndex: 1))
    //    //43
    //    questionList.append(Question(questionTitle: "How to convert a String to uppercase in Swift?", answers: ["string.uppercase()", "string.uppercased()", "string.upper()", "string.toUppercase()"], correctAnswerIndex: 1))
    //    //44
    //    questionList.append(Question(questionTitle: "Which operator is used to negate a Bool in Swift?", answers: ["NOT", "~", "!=", "!"], correctAnswerIndex: 3))
    //    //45
    //    questionList.append(Question(questionTitle: "Which type are arrays in Swift?", answers: ["reference", "value", "object", "immutable"], correctAnswerIndex: 1))
    //    //46
    //    questionList.append(Question(questionTitle: "Which of the following are supported by Swift?", answers: ["Arrays with repeated values", "Empty arrays", "Multi-dimensional arrays", "All answers are correct"], correctAnswerIndex: 3))
    //    //47
    //    questionList.append(Question(questionTitle: "Which method is used to extract values of a given type from an array?", answers: ["extractValue", "getValue", "getMap", "flatMap"], correctAnswerIndex: 3))
    //    //48
    //    questionList.append(Question(questionTitle: "How to filter out nil from an array?", answers: ["flatMap", "filterMap", "valueMap", "extractMap"], correctAnswerIndex: 0))
    //    //49
    //    questionList.append(Question(questionTitle: "Which is the feature of tuple in Swift?", answers: ["Tuples can be decomposed into variables", "The values within a tuple can be of any type", "It's a comma-separated list of types", "All of the above"], correctAnswerIndex: 3))
    //    //50
    //    questionList.append(Question(questionTitle: "How to swap a and b in Swift?\n\nvar a = 0\nvar b = 1", answers: ["(a)=(b)", "swap(a,b)", "a.swap(b)", "(a, b) = (b, a)"], correctAnswerIndex: 3))
    //    //51
    //    questionList.append(Question(questionTitle: "How to reverse a String in Swift?", answers: ["string.reverse()", "string.return()", "[::-1]", "string.reversed()"], correctAnswerIndex: 3))
    //    //52
    //    questionList.append(Question(questionTitle: "How to declare an Iboutlet property?", answers: ["var button: UIButton(IBOutlet)", "IBOutlet var button:UIButton", "var button: UIButtonOutlet", "None of the above"], correctAnswerIndex: 3))
    //    //53
    //    questionList.append(Question(questionTitle: "Name the control transfer statement in Swift?", answers: ["Break", "Continue", "Fallthrough", "All of the above"], correctAnswerIndex: 3))
    //    //54
    //    questionList.append(Question(questionTitle: "What are the advantages of Swift?", answers: ["All answers are correct", "It’s safe", "It’s fast", "It’s opensource"], correctAnswerIndex: 0))
    //    //55
    //    questionList.append(Question(questionTitle: "What type of integer is denoted by 'Int8'?", answers: ["Closed", "Signed", "Unsigned", "Open"], correctAnswerIndex: 1))
    //    //56
    //    questionList.append(Question(questionTitle: "What will be printed in the console?\n\nvar greeting = 'Hello World!'\ngreeting = nil?", answers: ["nil", "Hello World!", "greeting == nil", "The compiler won’t allow it"], correctAnswerIndex: 3))
    //    //57
    //    questionList.append(Question(questionTitle: "What is super class of AppDelegate?", answers: ["NSObject", "UIDelegate", "UIResponder", "None of the above"], correctAnswerIndex: 2))
    //    //58
    //    questionList.append(Question(questionTitle: "What access control modifier restricts the use of an entity within the same defined source file?", answers: ["fileprivate", "internal", "private", "open"], correctAnswerIndex: 0))
    //    //59
    //    questionList.append(Question(questionTitle: "What is default access control level in Swift?", answers: ["open", "public", "internal", "private"], correctAnswerIndex: 2))
    //    //60
    //    questionList.append(Question(questionTitle: "A function that can change any property in its enclosing value is called...", answers: ["temporary", "changeable", "mutating", "variable"], correctAnswerIndex: 2))
    //    //61
    //    questionList.append(Question(questionTitle: "Which of these is a protocol?", answers: ["ObservedObject", "StateObject", "ObservableObject", "Published"], correctAnswerIndex: 2))
    //    //62
    //    questionList.append(Question(questionTitle: "! (not) is an example of", answers: ["function", "closure", "conditional", "logical operator"], correctAnswerIndex: 3))
    //    //63
    //    questionList.append(Question(questionTitle: "&& (and) is an example of", answers: ["function", "closure", "conditional", "logical operator"], correctAnswerIndex: 3))
    //    //64
    //    questionList.append(Question(questionTitle: "What is the best classification for the identifier 'stringOfNumbers'?", answers: ["identifier written in camel case", "conditional statement", "identifier with a string data type", "function's name"], correctAnswerIndex: 0))
    //    //65
    //    questionList.append(Question(questionTitle: "Identify the assignment operator", answers: ["=", "==", ">", "&&"], correctAnswerIndex: 0))
    //    //66
    //    questionList.append(Question(questionTitle: "if, else if, else statements are classified as", answers: ["loops", "conditionals", "constants", "variables"], correctAnswerIndex: 1))
    //    //67
    //    questionList.append(Question(questionTitle: "Which of the following is executed when the condition in an if statement is false?", answers: ["if else", "else", "if", "if then"], correctAnswerIndex: 1))
    //    //68
    //    questionList.append(Question(questionTitle: "Check if a is not equal to 100 or b is less than 200", answers: ["if a = 100 || b < 200", "if a != 100 || b > 200", "if a != 100 || b < 200", "if a != 100 && b < 200"], correctAnswerIndex: 2))
    //    //69
    //    questionList.append(Question(questionTitle: "Name the value that can only be either true or false?", answers: ["Bin", "Int", "Double", "Boolean"], correctAnswerIndex: 3))
    //    //70
    //    questionList.append(Question(questionTitle: "What is the correct way to call the function below:\nfunc rickAstley( ) {\nprint('Never Gonna Give You Up')\n}", answers: ["call rickAstley", "func( )", "rickAstley( )", "func = rickAstley( )"], correctAnswerIndex: 2))
    //    //71
    //    questionList.append(Question(questionTitle: "What is the question mark (?) in Swift used for?", answers: ["Used in parameter declaration", "Used in loop declaration", "Used in function declaration", "Used in property declaration"], correctAnswerIndex: 3))
    //    //72
    //    questionList.append(Question(questionTitle: "Define operator a..<b ", answers: ["Half-close range", "Half-open range", "Full-close range", "Full-open range"], correctAnswerIndex: 1))
    //    //73
    //    questionList.append(Question(questionTitle: "Define operator a... ", answers: ["One-sided range", "Half-open range", "Left-sided range", "Half-closed range"], correctAnswerIndex: 0))
    //    //74
    //    questionList.append(Question(questionTitle: "Single-line comments are started with...", answers: ["Asterisk", "Hash", "Single slashes", "Double slashes"], correctAnswerIndex: 3))
    //    //75
    //    questionList.append(Question(questionTitle: "How many types of classes in Inheritance in Swift?", answers: ["1", "2", "3", "4"], correctAnswerIndex: 1))
    //    //76
    //    questionList.append(Question(questionTitle: "How many primary collection types Swift provides?", answers: ["2", "3", "4", "None of the above"], correctAnswerIndex: 1))
    //    //77
    //    questionList.append(Question(questionTitle: "The class which inherits the properties from other class is called", answers: ["Superclass or parent class", "Subclass or child class", "Inheriting class or inheritor", "Swift does not support inheritance"], correctAnswerIndex: 1))
    //    //78
    //    questionList.append(Question(questionTitle: "The class you inherit from is called", answers: ["Inheriting class or inheritor", "Subclass", "Superclass or parent class", "Swift does not support inheritance"], correctAnswerIndex: 2))
    //    //79
    //    questionList.append(Question(questionTitle: "Design pattern that ensures a class can have only one object is called...", answers: ["Singleclass", "Singleton", "Subclass", "Private"], correctAnswerIndex: 1))
    //    //80
    //    questionList.append(Question(questionTitle: "What is this code an example of?\n\nlet number = (Float)1", answers: ["Initialization", "Assignment", "Typecasting", "Syntax issue"], correctAnswerIndex: 3))
    //    //81
    //    questionList.append(Question(questionTitle: "What is the error in this code?\n\nlet number = 1\nguard number == 1 { return }", answers: ["Code is correct", "The guard is missing 'then'", "The guard is missing 'else'", "Comparison is wrong"], correctAnswerIndex: 2))
    //    //82
    //    questionList.append(Question(questionTitle: "Why is DispatchGroup used in certain situations?", answers: ["To run sync or async operations", "To track and control multiple operations", "To allow one operation to wait for another", "All of the above"], correctAnswerIndex: 3))
    //    //83
    //    questionList.append(Question(questionTitle: "What is this code an example of?\n\nnumber = 1\nprint('number = ＼(number)')", answers: ["String interpolation", "String compilation", "String encapsulation", "Method chaining"], correctAnswerIndex: 0))
    //    //84
    //    questionList.append(Question(questionTitle: "What is the value of b\n\nlet a = ['3', '5'].dropFirst()\nb = a[0]", answers: ["3", "5", "nil", "This code contains an error"], correctAnswerIndex: 3))
    //    //85
    //    questionList.append(Question(questionTitle: "What is the value of number in this code?\n\nvar number = 5 == 5", answers: ["5", "nil", "true", "This code contains an error"], correctAnswerIndex: 2))
    //    //86
    //    questionList.append(Question(questionTitle: "What is the value of a\n\nvar b: Int?\nlet a = b ?? 1", answers: ["1", "nil", "0", "This code contains an error"], correctAnswerIndex: 0))
    //    //87
    //    questionList.append(Question(questionTitle: "What is the type of this function?\n\nfunc sum(x: Int, y: Int) -> Int { return x+y }", answers: ["Int", "(Int, Int)", "(Int, Int) -> Int", "Functions don't have types"], correctAnswerIndex: 2))
    //    //88
    //    questionList.append(Question(questionTitle: "What is the correct way to call this function?\nfunc sum(_ x: Int, y: Int) -> Int {\nreturn x + y\n}", answers: ["sum(1, y: 2)", "sum(x: 1, y: 2)", "sum(1, 2)", "sum(x,y)"], correctAnswerIndex: 0))
    //    //89
    //    questionList.append(Question(questionTitle: "What is the type of number1?\n\nlet number1 = '＼('number1'.count)'", answers: ["Int", "String", "nil", "number1.count"], correctAnswerIndex: 1))
    //    //90
    //    questionList.append(Question(questionTitle: "What's wrong with this code?\nclass Developer {\nvar name: String\n}", answers: ["Developer has no superclass", "Developer has no initializers", "var name is not formatted correctly", "name is a keyword"], correctAnswerIndex: 1))
    //    //91
    //    questionList.append(Question(questionTitle: "What describes this line of code?\nlet number = 5", answers: ["a variable named number of type Int", "a constant named number of type Number", "a constant named number of type Int", "a variable named number of type Item"], correctAnswerIndex: 2))
    //    //92
    //    questionList.append(Question(questionTitle: "How can you avoid a strong reference cycle in a closure?", answers: ["Declare the closure variable as lazy", "Initialize the closure as read-only", "You can't", "Use a capture list to set weak or unowned"], correctAnswerIndex: 3))
    //    //93
    //    questionList.append(Question(questionTitle: "Which code snippet correctly creates a typealias closure?", answers: ["typealias Closure: () -> ()", "typealias Closure { () -> () }", "typealias Closure -> () -> ()", "typealias Closure -> () {}"], correctAnswerIndex: 0))
    //    //94
    //    questionList.append(Question(questionTitle: "How to reference class members from within a class?", answers: ["class", "init", "self", "instance"], correctAnswerIndex: 2))
    //    //95
    //    questionList.append(Question(questionTitle: "What is the correct way to add a value to this array?\n\nvar array = [3, 4, 5]", answers: ["array.append(6)", "array.insert(6, at: 1)", "array += [6]", "All of the above"], correctAnswerIndex: 3))
    //    //96
    //    questionList.append(Question(questionTitle: "What is the value of cpuVal after this code executes?\nlet cpu = (name: 'M2', val: 1)\nlet cpuVal = cpu.0", answers: ["name", "1", "M2", "nil"], correctAnswerIndex: 2))
    //    //97
    //    questionList.append(Question(questionTitle: "What is the superclass in this code?\n\nclass This: That {\n}", answers: ["This", "That", "There is no superclass", "The code is invalid"], correctAnswerIndex: 1))
    //    //98
    //    questionList.append(Question(questionTitle: "What must a convenience initializer call?", answers: ["Designated initializer", "Superclass convenience initializer", "Designated or another convenience initializer", "All of the above"], correctAnswerIndex: 0))
    //    //99
    //    questionList.append(Question(questionTitle: "What is the inferred type of a?\n\na = ['x', 'y', 'z']", answers: ["Array<Character>", "Set<String>", "String[]", "Array<String>"], correctAnswerIndex: 3))
    //    //100
    //    questionList.append(Question(questionTitle: "How to designate a failable initializer?", answers: ["init", "init?", "You can't", "deinit"], correctAnswerIndex: 1))
    //    //101
    //    questionList.append(Question(questionTitle: "In the function below, what are first and second examples of?\n\nsum(first x: Int, second y: Int) -> {}", answers: ["Local terms", "Argument labels", "Parameters names", "The code is invalid"], correctAnswerIndex: 1))
}
// MARK: - Localization
extension String {
    func localized() -> String {
        return NSLocalizedString(self, tableName: "Localizable", bundle: .main, value: self, comment: self)
    }
}
