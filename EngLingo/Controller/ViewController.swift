//
//  ViewController.swift
//  EngLingo
//
//  Created by aycan duskun on 6.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var Choice1: UIButton!
    @IBOutlet weak var Choice2: UIButton!
    @IBOutlet weak var Choice3: UIButton!
    
    var quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func answerButtonTapped(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userAnsweredRight = quizManager.checkAnswer(userAnswer)
        
        if userAnsweredRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        quizManager.nextQuestion()
    }
    
    @objc func updateUI() {
        
        questionLabel.text = quizManager.getQuestionText()
        
        let answers = quizManager.getAnswer()
        Choice1.setTitle(answers[0], for: .normal)
        Choice2.setTitle(answers[1], for: .normal)
        Choice3.setTitle(answers[2], for: .normal)
        image.image = quizManager.getPhoto()
        
        
        progressBar.progress = quizManager.getProgress()
        scoreLabel.text = "Your Score is: \(quizManager.getScore())"
        
        Choice1.backgroundColor = UIColor.systemGreen
        Choice2.backgroundColor = UIColor.systemGreen
        Choice3.backgroundColor = UIColor.systemGreen
    }
    
}

