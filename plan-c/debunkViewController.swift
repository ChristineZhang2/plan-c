//
//  debunkViewController.swift
//  plan-c
//
//  Created by Christine Zhang on 8/4/22.
//

import UIKit

class debunkViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    
    let quiz =
    [
        Question(text: "Abortion is killing a baby" , answer: "False"),
        Question(text: "Abortion is Dangerous" , answer: "False"),
        Question(text: "You can still get pregnant Again" , answer: "True"),
        Question(text: "Abortion is racist" , answer: "False"),
        Question(text: "There are too many abortions" , answer: "False"),
        Question(text: "Abortion does not involve the suctioning out of my insides" , answer: "True"),
        Question(text: "People who have abortions regret it or experience intense grief" , answer: "False"),
        Question(text: "Only selfish people have abortions" , answer: "False"),
        Question(text: "Abortion will not cause breast cancer" , answer: "False"),
        Question(text: "First term fetuses can feel pain" , answer: "False"),
    ]
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
        print(sender.currentTitle)
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber+1)/Float(quiz.count)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
