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
    let score = Score()
    
    var previouslyUsedNumbers: [Int] = []
    let numberOfQuestionPerRound = 5
    var currentQuestion: Question? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillData()
        displayQuestion()
    }
    
    @IBAction func submitButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
    }
    
    func fillData() {
        
        questionList.append(Question(questionTitle: "Who is Peter Parker?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 1))
        questionList.append(Question(questionTitle: "Who is Mr. Wayne?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 0))
        questionList.append(Question(questionTitle: "Who is Mr. Stark?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 2))
        questionList.append(Question(questionTitle: "Who is Clark Kent?", answers: ["Batman", "Spider-Man", "Iron-Man", "Superman"], correctAnswerIndex: 3))
    }
    
    func getRandomQuestion() -> Question {
        
        if (previouslyUsedNumbers.count == questionList.count) {
            previouslyUsedNumbers = []
        }
        var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questionList.count)
        while (previouslyUsedNumbers.contains(randomNumber)) {
            var randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: questionList.count)
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
                submitButton.setTitle("End Quiz", for: .normal)
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
}

