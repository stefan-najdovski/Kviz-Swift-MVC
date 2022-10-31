//
//  Question.swift
//  Kviz
//
//  Created by SN on 26.10.22.
//

import Foundation

struct Question{
    
    let queston: String
    let correctAnswer: String
    
    
    //array of strings for the multple choice
    let answers: [String]
    
        //constructor
    init(q: String, a: [String], rAns: String){
        
        queston = q
        correctAnswer = rAns
        answers = a
        
    }
    
}
