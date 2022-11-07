//
//  QuizManager.swift
//  EngLingo
//
//  Created by aycan duskun on 6.11.2022.
//

import Foundation
import UIKit

struct QuizManager {
    
    let quizArray = [
        Quiz(q: "1. We ________ finished eating dinner.", a: ["had not", "not had", "'d had not"], correctAnswer: "had not", photo: UIImage(systemName: "sun.min")!),
        Quiz(q: "2. Had they _____ to her before?", a: ["spoke", "spoken", "spoked"], correctAnswer: "spoken", photo: UIImage(systemName: "sun.min")!),
        Quiz(q: "3. You _____ not left yet.", a: ["would", "'d", "would had"], correctAnswer: "'d", photo: UIImage(systemName: "sun.min")!),
        Quiz(q: "4. I had never _____ her before.", a: ["see", "saw", "seen"], correctAnswer: "seen", photo: UIImage(systemName: "sun.min")!),
        Quiz(q: "5. We arrived at 8:05, but the train _____ already left.", a: ["has", "have", "had"], correctAnswer: "had", photo: UIImage(systemName: "sun.min")!),
        Quiz(q: "6. Sarah thought she ________ to that zoo before.", a: ["has been", "had be", "had been"], correctAnswer: "had been", photo: UIImage(systemName: "sun.min")!),
    
        Quiz(q: "7. Nobody explained why the project had ________ on time.", a: ["n't been completed", "not completed", "n't complete"], correctAnswer: "n't been completed", photo: UIImage(systemName: "sun.min")!),
    
        Quiz(q: "8. He _____ us the item had been shipped.", a: ["told", "say", "asked"], correctAnswer: "told", photo: UIImage(systemName: "sun.min")!),
        Quiz(q: "9. Dad explained ________ his job due to stress.", a: ["why he quitted", "that he had quit", "that he'd quit"], correctAnswer: "that he had quit", photo: UIImage(systemName: "sun.min")!),
        Quiz(q: "10. Where _____ the security guard gone?", a: ["had", "have", "did"], correctAnswer: "had", photo: UIImage(systemName: "sun.min")!),
    ]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String {
        return quizArray[questionNumber].text
    }
    
    func getPhoto() -> UIImage {
        return quizArray[questionNumber].picture
    }
    
    func getAnswer() -> [String] {
        return quizArray[questionNumber].answers
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quizArray[questionNumber].rightAnswer {
            score += 10
            return true
        } else {
            return false
        }
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quizArray.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quizArray.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}
