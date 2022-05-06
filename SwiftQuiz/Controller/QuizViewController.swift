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
        
        firstChoiceButton.backgroundColor = UIColor.peachColor
        secondChoiceButton.backgroundColor = UIColor.peachColor
        thirdChoiceButton.backgroundColor = UIColor.peachColor
        fourthChoiceButton.backgroundColor = UIColor.peachColor
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
    
        firstChoiceButton.backgroundColor = UIColor.peachColor
        secondChoiceButton.backgroundColor = UIColor.peachColor
        thirdChoiceButton.backgroundColor = UIColor.peachColor
        fourthChoiceButton.backgroundColor = UIColor.peachColor
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
        
        
        
//        sender.backgroundColor = UIColor(red: 230, green: 142, blue: 65, alpha: 1.0)
    }
    
    func isGameOver() -> Bool {
        return score.numberOfQuestionsAsked() >= numberOfQuestionPerRound
    }
    
    func fillData() {
        questionList.append(Question(questionTitle: "Who is Peter Parker?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 1))
        questionList.append(Question(questionTitle: "Who is Mr. Wayne?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 0))
        questionList.append(Question(questionTitle: "Who is Mr. Stark?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "Who is Clark Kent?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "Who is your daddy?", answers: ["Batman", "Spider-Man", "Iron-Man", "You are!"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "Who is Peter Parker?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 1))
        questionList.append(Question(questionTitle: "Who is Mr. Wayne?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 0))
        questionList.append(Question(questionTitle: "Who is Mr. Stark?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "Who is Clark Kent?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "Who is your daddy?", answers: ["Batman", "Spider-Man", "Iron-Man", "You are!"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "Who is Peter Parker?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 1))
        questionList.append(Question(questionTitle: "Who is Mr. Wayne?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 0))
        questionList.append(Question(questionTitle: "Who is Mr. Stark?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "Who is Clark Kent?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "Who is your daddy?", answers: ["Batman", "Spider-Man", "Iron-Man", "You are!"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "Who is Peter Parker?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 1))
        questionList.append(Question(questionTitle: "Who is Mr. Wayne?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 0))
        questionList.append(Question(questionTitle: "Who is Mr. Stark?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "Who is Clark Kent?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 3))
        questionList.append(Question(questionTitle: "Who is your daddy?", answers: ["Batman", "Spider-Man", "Iron-Man", "You are!"], correctAnswerIndex: 3))
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
