//
//  Questions.swift
//  SwiftQuiz
//
//  Created by Aleksandr Morozov on 01.05.2022.
//

import Foundation

class Question {
    
    let questionTitle: String
    let answers: [String]
    let correctAnswerIndex: Int
    
    init(questionTitle: String, answers: [String], correctAnswerIndex: Int) {
        self.questionTitle = questionTitle
        self.answers = answers
        self.correctAnswerIndex = correctAnswerIndex
    }
    
    func validateAnswer(to givenAnswer: String) -> Bool {
        return (givenAnswer == answers[correctAnswerIndex])
    }
    
    func getQuestionTitle() -> String {
        return questionTitle
    }
    
    func getAnswer() -> String {
        return answers[correctAnswerIndex]
    }
    
    func getChoices() -> [String] {
        return answers
    }
    
    func getAnswerAt(index: Int) -> String {
        return answers[index]
    }
}

class Score {
    
    var correctAnswers: Int = 0
    var incorrectAnswers: Int = 0
    var questionPerRound = 5
    
    func reset() {
        correctAnswers = 0
        incorrectAnswers = 0
    }
    
    func incrementCorrectAnswers() {
        correctAnswers += 1
    }
    
    func incrementIncorrectAnswers() {
        incorrectAnswers += 1
    }
    
    func numberOfQuestionsAsked() -> Int {
        correctAnswers + incorrectAnswers
    }
}
