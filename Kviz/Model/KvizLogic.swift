//
//  KvizLogic.swift
//  Kviz
//
//  Created by SN on 26.10.22.
//

import Foundation


struct KvizPrasanja{
    
    /**
        qNum = QuestionNumber
     **/
    var qNum = 0
    var result = 0
    
    
    let questons = [
        Question(q: "Кој е највисок врв во Македонија?", a: ["Кораб","Пелистер","Црна Чука","Кепи Бард"],rAns: "Кораб"),
        Question(q: "Колку планети има во нашиот сончев систем?", a: ["8","9","3","5"], rAns: "8")
    
    ]
    //gets the String of the Question

    func getQText() -> String {
        return questons[qNum].queston
       }
    
    func getAnswers() -> [String]{
        return questons[qNum].answers
    }
    
    func getProgress() -> Float{
        return Float(qNum)/Float(questons.count)
    }
    
    
    // needs the latest result so I gonna make it mutating
    
    mutating func getScore() -> Int {
           return result
       }
    
    mutating func nextQ() {
           
           if qNum + 1 < questons.count {
               qNum += 1
           } else {
               qNum = 0
           }
       }
    mutating func checkAnswer(userAnswer: String) -> Bool {
           if userAnswer == questons[qNum].correctAnswer {
               result += 1
               return true
           } else {
               return false
           }
       }
    
}
