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
    
    @IBOutlet weak var levelLabel: UILabel!
    
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
            
            if FrontViewController.level == "Level1" && questionNumber <= allQuestions.listlevel1.count - 1
            {
                
                flagView.image = UIImage(named:(allQuestions.listlevel1[questionNumber].questionImage))
                questionLabel.text=allQuestions.listlevel1[questionNumber].question
                optionA.setTitle(allQuestions.listlevel1[questionNumber].optionA, for:UIControl.State.normal)
                optionB.setTitle(allQuestions.listlevel1[questionNumber].optionB, for:UIControl.State.normal)
                optionC.setTitle(allQuestions.listlevel1[questionNumber].optionC, for:UIControl.State.normal)
                optionD.setTitle(allQuestions.listlevel1[questionNumber].optionD, for:UIControl.State.normal)
                selectedAnswer = allQuestions.listlevel1[questionNumber].correctAnswer
            }
                
                
                
            else if FrontViewController.level == "Level2" && questionNumber <= allQuestions.listlevel2.count - 1
            {
                
                flagView.image = UIImage(named:(allQuestions.listlevel2[questionNumber].questionImage))
                questionLabel.text=allQuestions.listlevel2[questionNumber].question
                optionA.setTitle(allQuestions.listlevel2[questionNumber].optionA, for:UIControl.State.normal)
                optionB.setTitle(allQuestions.listlevel2[questionNumber].optionB, for:UIControl.State.normal)
                optionC.setTitle(allQuestions.listlevel2[questionNumber].optionC, for:UIControl.State.normal)
                optionD.setTitle(allQuestions.listlevel2[questionNumber].optionD, for:UIControl.State.normal)
                selectedAnswer = allQuestions.listlevel2[questionNumber].correctAnswer
            }
            else if FrontViewController.level == "Level3" && questionNumber <= allQuestions.listlevel3.count - 1
            {
                
                flagView.image = UIImage(named:(allQuestions.listlevel3[questionNumber].questionImage))
                questionLabel.text=allQuestions.listlevel3[questionNumber].question
                optionA.setTitle(allQuestions.listlevel3[questionNumber].optionA, for:UIControl.State.normal)
                optionB.setTitle(allQuestions.listlevel3[questionNumber].optionB, for:UIControl.State.normal)
                optionC.setTitle(allQuestions.listlevel3[questionNumber].optionC, for:UIControl.State.normal)
                optionD.setTitle(allQuestions.listlevel3[questionNumber].optionD, for:UIControl.State.normal)
                selectedAnswer = allQuestions.listlevel3[questionNumber].correctAnswer
            }
            else{
                let controller = self.storyboard?.instantiateViewController(withIdentifier: "scoreBoardViewController") as! ScoreBoardViewController
                self.present(controller, animated: true)
            }
            updateUI()
            }
        func updateUI(){
             levelLabel.text = "\(FrontViewController.level)"
            scoreLabel.text = "Score: \(score)"
            username.text="\(FrontViewController.str )"
            mistakesLabel.text = "Mistakes: \(mistakes)"
            //questionCounter.text = "\(questionNumber+1)/\(allQuestions.list.count)"
        //   progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
            
            if FrontViewController.level == "Level1"{
                
                questionCounter.text = "\(questionNumber + 1)/\(allQuestions.listlevel1.count)"
                 progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.listlevel1.count)) * CGFloat(questionNumber + 1)
            }
            if FrontViewController.level == "Level2"{
                 progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.listlevel2.count)) * CGFloat(questionNumber + 1)
                questionCounter.text = "\(questionNumber + 1)/\(allQuestions.listlevel2.count)"
            }
            if FrontViewController.level == "Level3"{
                 progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.listlevel3.count)) * CGFloat(questionNumber + 1)
                questionCounter.text = "\(questionNumber + 1)/\(allQuestions.listlevel3.count)"
            }
            
              ViewController.lastscore = score
            }
        func restartQuiz(){
            score = 0
            questionNumber = 0
            updateQuestion()
            }
        
        
    }
