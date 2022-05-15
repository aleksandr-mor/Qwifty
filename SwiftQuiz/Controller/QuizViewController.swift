//
//  ViewController.swift
//  SwiftQuiz
//
//  Created by Aleksandr Morozov on 27.04.2022.
//

import UIKit
import GameKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var correctIncorrectLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var fourthChoiceButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var questionList = [Question]()
    var currentQuestion: Question? = nil
    var previouslyUsedNumbers: [Int] = []
    let numberOfQuestionPerRound = 20
    let score = Score()
    var progress: Float = 0.05
    var progressNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData()
        displayQuestion()
        
        progressLabel.text = "\(progressNumber) / 20"
        progressBar.progress = progress

        
        nextButton.layer.cornerRadius = 25
        firstChoiceButton.layer.cornerRadius = 25
        secondChoiceButton.layer.cornerRadius = 25
        thirdChoiceButton.layer.cornerRadius = 25
        fourthChoiceButton.layer.cornerRadius = 25
        
        firstChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        secondChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        thirdChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        fourthChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        
        firstChoiceButton.contentEdgeInsets = UIEdgeInsets(top: 5,left: 5,bottom: 5,right: 5)
        secondChoiceButton.contentEdgeInsets = UIEdgeInsets(top: 5,left: 5,bottom: 5,right: 5)
        thirdChoiceButton.contentEdgeInsets = UIEdgeInsets(top: 5,left: 5,bottom: 5,right: 5)
        fourthChoiceButton.contentEdgeInsets = UIEdgeInsets(top: 5,left: 5,bottom: 5,right: 5)

        firstChoiceButton.titleLabel?.textAlignment = NSTextAlignment.center
        secondChoiceButton.titleLabel?.textAlignment = NSTextAlignment.center
        thirdChoiceButton.titleLabel?.textAlignment = NSTextAlignment.center
        fourthChoiceButton.titleLabel?.textAlignment = NSTextAlignment.center
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        if (isGameOver()) {
            displayScore()
            progressNumber = 1
        } else {
            displayQuestion()
        }
        progress += 0.05
        progressNumber += 1
        progressBar.progress = progress
        progressLabel.text = "\(progressNumber) / 20"
        
        firstChoiceButton.setTitleColor(UIColor.orangeColor, for: .normal)
        secondChoiceButton.setTitleColor(UIColor.orangeColor, for: .normal)
        thirdChoiceButton.setTitleColor(UIColor.orangeColor, for: .normal)
        fourthChoiceButton.setTitleColor(UIColor.orangeColor, for: .normal)
    
        firstChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        secondChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        thirdChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        fourthChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        if let question = currentQuestion, let answer = sender.titleLabel?.text {
            if(question.validateAnswer(to: answer)) {
                score.incrementCorrectAnswers()
                correctIncorrectLabel.textColor = UIColor.turquoiseColor
                correctIncorrectLabel.text = "Correct"
            } else {
                score.incrementIncorrectAnswers()
                correctIncorrectLabel.textColor = UIColor.redColor
                correctIncorrectLabel.text = "Incorrect"
            }
            firstChoiceButton.isEnabled = false
            secondChoiceButton.isEnabled = false
            thirdChoiceButton.isEnabled = false
            fourthChoiceButton.isEnabled = false
            correctIncorrectLabel.isHidden = false
            sender.isEnabled = true
            nextButton.isEnabled = true
            
            sender.setTitleColor(UIColor.white, for: .normal)
            sender.backgroundColor = UIColor.orangeColor
        }
    }
    
    func isGameOver() -> Bool {
        return score.numberOfQuestionsAsked() >= numberOfQuestionPerRound
    }
    
    func fillData() {
                
        questionList.append(Question(questionTitle: "What is the default data type for floating point numbers in Swift?", answers: ["Float", "Double", "Int", "Fract"], correctAnswerIndex: 1))
        questionList.append(Question(questionTitle: "What keyword is used to declare a constant in Swift?", answers: ["var", "const", "let", "strong"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "How to write a multiple line comment in Swift?", answers: ["/ … /", "/n … n/", "/* … */", "// … //"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "How are Structs different from Classes in Swift?", answers: ["Structures are value types", "Structures are reference types", "Structures support inheritance", "Structures don’t receive a default initializer"], correctAnswerIndex: 0))
        questionList.append(Question(questionTitle: "Name the properties whose initial values are not calculated until the first use", answers: ["Computed Properties", "Delayed Properties", "Stored Properties", "Lazy Stored Properties"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "What is the significance of “?” in Swift?", answers: ["It is used to force unwrap the variable", "It makes a property optional", "It returns first none nil value", "It is used to replace the function parameter’s external label"], correctAnswerIndex: 1))
        questionList.append(Question(questionTitle: "Choose the correct statement", answers: ["Bounds are in a view’s own coordinate system", "Frame is in the superview’s coordinate system", "Both statements are correct", "Both statements are incorrect"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "Name a protocol that allows us to convert Swift types to and from JSON", answers: ["Decodable", "Codable", "Encodable", "JSONDecoder"], correctAnswerIndex: 1))
        questionList.append(Question(questionTitle: "A function inside a function is called…", answers: ["Nested Function", "Super Function", "Base Function", "Encapsulation"], correctAnswerIndex: 0))
        questionList.append(Question(questionTitle: "Constant and variable names in Swift can't contain…", answers: ["Numbers", "Capital letters", "Spaces", "Emoji"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "What keyword is used to declare a variable in Swift?", answers: ["No keyword required", "let", "dyn", "var"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "Swift consists of the following Control transfer statements, except for:", answers: ["Continue", "Fallthrough", "Pass", "Break"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "What is PLIST?", answers: ["Process list", "Programming list", "Property list", "Protocol list"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "What is “??” in Swift?", answers: ["Optional", "Binary operator", "Logical OR operator", "Nil-coalescing operator"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "What is the logical 'AND' operator in Swift?", answers: ["||", "&&", "&", "+"], correctAnswerIndex: 1))
        questionList.append(Question(questionTitle: "What is wrong with this code? \n\nlet num = 1.0 + 1 ", answers: ["There is nothing wrong", "There is no semicolon", "num is constant and can’t be changed", "1.0 and 1 are different types"], correctAnswerIndex: 0))
        questionList.append(Question(questionTitle: "What can AnyObject represent?", answers: ["An instance of any class", "An instance of function type", "An instance of an optional type", "All answers are correct"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "What is LLVM?", answers: ["Objective-C compiler", "Swiftc compiler", "        Contains both compilers", "None of the above"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "What is data type of nums? \n\nlet nums = (“num”, 0)", answers: ["Dictionary", "Optional", "Tuple", "All answers are incorrect"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "How many times will this loop be executed? \n\nfor i in 0…100 { \nprint(i) \n}", answers: ["0", "99", "100", "101"], correctAnswerIndex: 3))
    }
    
    func getRandomQuestion() -> Question {
        if (previouslyUsedNumbers.count == questionList.count) {
            previouslyUsedNumbers = []
        }
        var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questionList.count)
        while (previouslyUsedNumbers.contains(randomNumber)) {
            randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questionList.count)
        }
        previouslyUsedNumbers.append(randomNumber)
        return questionList[randomNumber]
    }
    
    func displayQuestion() {
        currentQuestion = getRandomQuestion()
        if let question = currentQuestion {
            let choices = question.getChoices()
            questionTextLabel.text = question.getQuestionTitle()
            firstChoiceButton.setTitle(choices[0], for: .normal)
            secondChoiceButton.setTitle(choices[1], for: .normal)
            thirdChoiceButton.setTitle(choices[2], for: .normal)
            fourthChoiceButton.setTitle(choices[3], for: .normal)
            if (score.numberOfQuestionsAsked() == numberOfQuestionPerRound - 1) {
                nextButton.setTitle("END QUIZ", for: .normal)
            } else {
                nextButton.setTitle("NEXT", for: .normal)
            }
        }
        firstChoiceButton.isEnabled = true
        secondChoiceButton.isEnabled = true
        thirdChoiceButton.isEnabled = true
        fourthChoiceButton.isEnabled = true
        firstChoiceButton.isHidden = false
        secondChoiceButton.isHidden = false
        thirdChoiceButton.isHidden = false
        fourthChoiceButton.isHidden = false
        correctIncorrectLabel.isHidden = true
        nextButton.isEnabled = false
    }
    
    func displayScore() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ScoreViewController") as! ScoreViewController
        vc.result = score.correctAnswers
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension UIColor {
    static var orangeColor = UIColor.init(red: 244/255, green: 137/255, blue: 40/255, alpha: 1.0)
    static var peachColor = UIColor.init(red: 250/255, green: 210/255, blue: 174/255, alpha: 1.0)
    static var turquoiseColor = UIColor.init(red: 77/255, green: 154/255, blue: 155/255, alpha: 1.0)
    static var redColor = UIColor.init(red: 235/255, green: 69/255, blue: 90/255, alpha: 1.0)
}
