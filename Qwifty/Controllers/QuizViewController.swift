//
//  ViewController.swift
//  SwiftQuiz
//
//  Created by Aleksandr Morozov on 27.04.2022.
//

import UIKit
import GameKit

class QuizViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var fourthChoiceButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var correctIncorrectImage: UIImageView!
    
    //MARK: - Variables
    let numberOfQuestionPerRound = 20
    let score = Score()
    var currentQuestion: Question? = nil
    var previouslyUsedNumbers: [Int] = []
    var progress: Float = 0.05
    var progressNumber = 1
    var isCorrectAnswer : Bool = false {
        didSet {
            correctIncorrectImage.isHidden = false
            correctIncorrectImage.image = isCorrectAnswer ? UIImage(named: "correct") : UIImage(named: "incorrect")
        }
    }
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        fillData()
        displayQuestion()
        
        progressLabel.text = "\(progressNumber) / 20"
        progressBar.progress = progress
        
        nextButton.setTitle("NEXT", for: .normal)
        nextButton.titleLabel?.textColor = .gray
        
        nextButton.addShadowView()
        
        nextButton.layer.cornerRadius = 25
        firstChoiceButton.layer.cornerRadius = 25
        secondChoiceButton.layer.cornerRadius = 25
        thirdChoiceButton.layer.cornerRadius = 25
        fourthChoiceButton.layer.cornerRadius = 25
        
        firstChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        secondChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        thirdChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        fourthChoiceButton.backgroundColor = UIColor(named: "ButtonColor")
        
        firstChoiceButton.titleLabel?.textAlignment = NSTextAlignment.center
        secondChoiceButton.titleLabel?.textAlignment = NSTextAlignment.center
        thirdChoiceButton.titleLabel?.textAlignment = NSTextAlignment.center
        fourthChoiceButton.titleLabel?.textAlignment = NSTextAlignment.center
    }
    
    //MARK: - IBActions
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
                correctIncorrectImage.isHidden = false
                isCorrectAnswer = true
            } else {
                score.incrementIncorrectAnswers()
                isCorrectAnswer = false
            }
            firstChoiceButton.isEnabled = false
            secondChoiceButton.isEnabled = false
            thirdChoiceButton.isEnabled = false
            fourthChoiceButton.isEnabled = false
            nextButton.isEnabled = true
            sender.isEnabled = true
            sender.setTitleColor(UIColor.white, for: .normal)
            sender.backgroundColor = UIColor.orangeColor
            sender.addShadowView()
        }
    }
    
    //MARK: - Logics
    func isGameOver() -> Bool {
        return score.numberOfQuestionsAsked() >= numberOfQuestionPerRound
    }
    
    func getRandomQuestion() -> Question {
        if previouslyUsedNumbers.count == questionList.count {
            previouslyUsedNumbers = []
        }
        var randomNumber = Int.random(in: 0...questionList.count - 1)
        
        while previouslyUsedNumbers.contains(randomNumber) {
            randomNumber = Int.random(in: 0...questionList.count - 1)
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
                nextButton.isEnabled = false
                
            } else {
                nextButton.setTitle("NEXT", for: .normal)
                nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .bold)
            }
        }
        firstChoiceButton.isEnabled = true
        secondChoiceButton.isEnabled = true
        thirdChoiceButton.isEnabled = true
        fourthChoiceButton.isEnabled = true
        correctIncorrectImage.isHidden = true
        nextButton.isEnabled = false
        
        firstChoiceButton.disableShadowView()
        secondChoiceButton.disableShadowView()
        thirdChoiceButton.disableShadowView()
        fourthChoiceButton.disableShadowView()
    }
    
    func displayScore() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ScoreViewController") as! ScoreViewController
        vc.result = score.correctAnswers
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

// MARK: - Extensions
extension UIColor {
    static var orangeColor = UIColor.init(red: 244/255, green: 137/255, blue: 40/255, alpha: 1.0)
    static var turquoiseColor = UIColor.init(red: 77/255, green: 154/255, blue: 155/255, alpha: 1.0)
    static var redColor = UIColor.init(red: 235/255, green: 69/255, blue: 90/255, alpha: 1.0)
}

extension UIView {
    func addShadowView(){
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 10.0
        self.layer.masksToBounds = false
    }
    func disableShadowView() {
        self.layer.shadowColor = UIColor.clear.cgColor
    }
}
