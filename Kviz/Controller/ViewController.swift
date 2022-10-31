//
//  ViewController.swift
//  Kviz
//
//  Created by SN on 26.10.22.
//

import UIKit

class ViewController: UIViewController {

    //TO:DO make it with lowercase cammel case, too lazy to refactor this LMAO
    
    @IBOutlet weak var QuestionField: UILabel!
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var Answer1Btn: UIButton!
    @IBOutlet weak var Answer2Btn: UIButton!
    @IBOutlet weak var Answer3Btn: UIButton!
    @IBOutlet weak var Answer4Btn: UIButton!
    
    // create instance of the Quiz Logic
    var kvizPrasanja = KvizPrasanja()
    

    @objc func updateUI(){
        QuestionField.text = kvizPrasanja.getQText()
        
        let answers = kvizPrasanja.getAnswers()
        
        Answer1Btn.setTitle(answers[0], for: .normal)
        Answer2Btn.setTitle(answers[1], for: .normal)
        Answer3Btn.setTitle(answers[2], for: .normal)
        Answer4Btn.setTitle(answers[3], for: .normal)
        
        progressView.progress = kvizPrasanja.getProgress()
        
        Answer1Btn.backgroundColor = UIColor.clear
        Answer2Btn.backgroundColor = UIColor.clear
        Answer3Btn.backgroundColor = UIColor.clear
        Answer4Btn.backgroundColor = UIColor.clear
        
    }
    
    
    
    @IBAction func AnswerButtonAction(_ sender: UIButton) {
        let answerUser = sender.currentTitle!
        let isAnswerRight = kvizPrasanja.checkAnswer(userAnswer: answerUser)
        
        
        if isAnswerRight {
            sender.backgroundColor = UIColor.green
        } else{
            sender.backgroundColor = UIColor.red
        }
        
        kvizPrasanja.nextQ()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     updateUI()
    }


}

