//
//  ViewController.swift
//  Quizz_MVC
//
//  Created by Yarkın Gazibaba on 6.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var score_label: UILabel!
    @IBOutlet weak var question_label: UILabel!
    @IBOutlet weak var first_button: UIButton!
    @IBOutlet weak var second_button: UIButton!
    @IBOutlet weak var third_button: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var background_bubble: UIImageView!
    
   
    var quizBrain = QuizLogic()
   
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotTrue = quizBrain.checkAnswer(userAnswer: userAnswer)

        
        // answer checking logic
        if(userGotTrue){
            sender.backgroundColor = UIColor.green
            
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.NextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.4 , target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI(){
        
        
        question_label.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        score_label.text = "Score:\(quizBrain.getScore())"
        
        
        first_button.setTitle(quizBrain.getAnswer1(), for: .normal)
        second_button.setTitle(quizBrain.getAnswer2(), for: .normal)
        third_button.setTitle(quizBrain.getAnswer3(), for: .normal)
        
        first_button.backgroundColor = UIColor.clear
        second_button.backgroundColor = UIColor.clear
        third_button.backgroundColor = UIColor.clear
    }
    
    


}

