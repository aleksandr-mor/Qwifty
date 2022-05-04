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
    @IBOutlet weak var submitButton: UIButton!
    
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
        
    }
    
    @IBAction func submitButtonPressed(_ sender: Any) {
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
        
        
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        if let question = currentQuestion, let answer = sender.titleLabel?.text {
            if(question.validateAnswer(to: answer)) {
                score.incrementCorrectAnswers()
                correctIncorrectLabel.textColor = UIColor(red: 0.15, green: 0.61, blue: 0.61, alpha: 1.0)
                correctIncorrectLabel.text = "Correct"
            } else {
                score.incrementIncorrectAnswers()
                correctIncorrectLabel.textColor = UIColor(red: 0.82, green: 0.40, blue: 0.26, alpha: 1.0)
                correctIncorrectLabel.text = "Incorrect"
            }
            firstChoiceButton.isEnabled = false
            secondChoiceButton.isEnabled = false
            thirdChoiceButton.isEnabled = false
            fourthChoiceButton.isEnabled = false
            correctIncorrectLabel.isHidden = false
            submitButton.isEnabled = true
        }
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
                submitButton.setTitle("END QUIZ", for: .normal)
            } else {
                submitButton.setTitle("SUBMIT", for: .normal)
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
        submitButton.isEnabled = false
    }
    
    func displayScore() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ScoreViewController") as! ScoreViewController
        vc.result = score.correctAnswers
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

