//
//  Question.swift
//  Quiz
//
//  Created by Сауле Досымбекова on 6/9/19.
//  Copyright © 2019 Сауле Досымбекова. All rights reserved.
//

import Foundation

class Question {
    let questionImage : String
    let question : String
  //  let questionA : String
    let optionA : String
    let optionB : String
    let optionC : String
    let optionD : String
    let correctAnswer : Int
    
    init(image : String, questionText : String, choiceA : String, choiceB : String, choiceC : String, choiceD : String, answer : Int ){
        questionImage = image
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
    }
    
}


