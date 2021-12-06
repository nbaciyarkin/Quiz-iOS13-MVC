//
//  Question.swift
//  Quizz_MVC
//
//  Created by Yarkın Gazibaba on 6.12.2021.
//

import Foundation

    struct Question {
        
        let text: String
        let answer:[String]
        let correctanswer:String
        
        init(q:String, a:[String], c:String){
            text = q
            answer = a
            correctanswer = c
        }
    
    
    }
