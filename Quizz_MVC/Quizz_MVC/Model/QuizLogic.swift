//
//  QuizLogic.swift
//  Quizz_MVC
//
//  Created by Yarkın Gazibaba on 6.12.2021.
//
import Foundation

struct QuizLogic{
    
   let quiz = [
    
    Question(q: "Who was the shortest player to win an MVP?", a: ["Allen Iverson", "Charles Barkley", "Steve Nash"], c: "Allen Iverson"),
    
    Question(q: "What is the record for the highest scoring average in a single-season, set by Wilt Chamberlain in 1961-1962?", a: ["34.5 ppg", "44.4 ppg", "50.4 ppg"], c: "50.4 ppg"),
    
    Question(q: "Who won more championships, Kobe or Shaq?", a: ["Kobe", "Shaq", "They are tied"], c: "Kobe"),
    
    Question(q: "When Kevin Durant won the MVP award in 2014, he said someone else was da real MVP. Who was it?", a: ["Barack Obama", "His mom", "Russel Westbrook"], c: "His mom"),
    
    Question(q: "When Kevin Durant won the MVP award in 2014, he said someone else was da real MVP. Who was it?", a: ["Barack Obama", "His mom", "Russel Westbrook"], c: "His mom")
                
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(userAnswer:String) -> Bool{
        if userAnswer == quiz[questionNumber].correctanswer{
            score += Int(Float(100)/Float(quiz.count))
            return true
        }else{
            return false
        }
    }
    
    func getScore() -> Int{
        return score
    }
    
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    
    func getAnswer1() -> String{
        return quiz[questionNumber].answer[0]
    }
    
    func getAnswer2() -> String{
        return quiz[questionNumber].answer[1]
    }
    
    func getAnswer3() -> String{
        return quiz[questionNumber].answer[2]
    }
    
    
    func getProgress() -> Float {
        let progress =  Float(questionNumber+1) / Float(quiz.count)
        return progress
    }
    
    mutating func NextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            score = 0
            questionNumber = 0
            
        }
    }
    
}
