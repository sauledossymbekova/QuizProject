//
//  ViewController.swift
//  Quiz
//
//  Created by Сауле Досымбекова on 6/6/19.
//  Copyright © 2019 Сауле Досымбекова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var flagView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var username: UILabel!
    
    
    @IBOutlet weak var mistakesLabel: UILabel!
    // Outlet for Buttons
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber : Int = 0
    var score : Int = 0
    var mistakes : Int = 0
    var selectedAnswer : Int = 0
    static var lastscore: Int  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()

        // Do any additional setup after loading the view.
    }
    func updateState(button: UIButton) {
        button.backgroundColor = .black
        button.isUserInteractionEnabled = true
    }
    @objc func enableButton() {
        updatestate()
    }
    func updatestate(){
        optionA.backgroundColor = .lightGray
        optionB.backgroundColor = .lightGray
        optionC.backgroundColor = .lightGray
        optionD.backgroundColor = .lightGray
        optionA.isUserInteractionEnabled = true
        optionB.isUserInteractionEnabled = true
        optionC.isUserInteractionEnabled = true
        optionD.isUserInteractionEnabled = true
        showcorrectanswer()
    }
   
    func showcorrectanswer(){
        questionNumber += 1
        updateQuestion()
        updateUI()
    }
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            sender.backgroundColor = .green
            
            _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(enableButton), userInfo: nil, repeats: false)
            optionA.isUserInteractionEnabled = false
            optionB.isUserInteractionEnabled = false
            optionC.isUserInteractionEnabled = false
            optionD.isUserInteractionEnabled = false
            score += 1
        }
        else if sender.tag != selectedAnswer
        {
            
            sender.backgroundColor = .red
            if(optionA.tag == selectedAnswer ){
                optionA.backgroundColor = .green
            }
            else if(optionB.tag == selectedAnswer ){
                optionB.backgroundColor = .green
            }
            else if(optionC.tag == selectedAnswer ){
                optionC.backgroundColor = .green
            }
            else if(optionD.tag == selectedAnswer ){
                optionD.backgroundColor = .green
            }
            
            _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(enableButton), userInfo: nil, repeats: false)
            mistakes += 1
            optionA.isUserInteractionEnabled = false
            optionB.isUserInteractionEnabled = false
            optionC.isUserInteractionEnabled = false
            optionD.isUserInteractionEnabled = false
            
            
        }
        //questionNumber += 1
        updateQuestion()
    }
        func updateQuestion(){
            
            
            if questionNumber <= allQuestions.list.count-1 {
            
                flagView.image = UIImage(named :(allQuestions.list[questionNumber].questionImage))
                questionLabel.text = allQuestions.list[questionNumber].question
                optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal) // uicontrolstate
                optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
                optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
                optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
                selectedAnswer = allQuestions.list[questionNumber].correctAnswer
                //questionNumber += 1
            }
            else{
                let controller = self.storyboard?.instantiateViewController(withIdentifier: "scoreBoardViewController") as! ScoreBoardViewController
                self.present(controller, animated: true)
            }
            updateUI()
            }
        func updateUI(){
            scoreLabel.text = "Score: \(score)"
            username.text="\(FrontViewController.str )"
            mistakesLabel.text = "Mistakes: \(mistakes)"
            questionCounter.text = "\(questionNumber+1)/\(allQuestions.list.count)"
            progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
            
              ViewController.lastscore = score
            }
        func restartQuiz(){
            score = 0
            questionNumber = 0
            updateQuestion()
            }
        
        
    }
