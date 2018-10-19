//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by José Guilherme Scanavini on 19/10/18.
//  Copyright © 2018 teste. All rights reserved.
//

import Foundation


// model
class Quiz{
    let questions:String
    let options:[String]
    private let correctdAnswer:String
    
    init(question:String,options:[String],correctedAnswer:String) {
        self.questions = question
        self.options = options
        self.correctdAnswer = correctedAnswer
    }
    
    // validando pergunta e retornando se o usuari oacertou ou não
    func validateOption(_ index:Int) -> Bool {
        let answer = options[index]
        return answer == correctdAnswer
    }
    
    deinit {
        print("Liberou quis da memoria")
    }
    
    
    
}
