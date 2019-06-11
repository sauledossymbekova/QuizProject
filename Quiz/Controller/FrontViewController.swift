//
//  FrontViewController.swift
//  Quiz
//
//  Created by Сауле Досымбекова on 4/9/19.
//  Copyright © 2019 Сауле Досымбекова. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    
    @IBOutlet weak var startbutton: UIButton!
    static var str: String = ""
     static var level: String = ""
    
    @IBOutlet weak var level1btn: UIButton!
    
    
    @IBOutlet weak var level2btn: UIButton!
    
    
    @IBOutlet weak var level3btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func level1btnpressed(_ sender: Any) {
        FrontViewController.level = ""
        level1btn.backgroundColor = .yellow
    level2btn.backgroundColor = .white
      level3btn.backgroundColor = .white
        FrontViewController.level = "Level1"
        
        
    }
    
    
    @IBAction func level2btnpresed(_ sender: Any) {
        FrontViewController.level = ""
        level2btn.backgroundColor = .yellow
        level1btn.backgroundColor = .white
        level3btn.backgroundColor = .white
        FrontViewController.level = "Level2"
        
        
        
    }
    
    
    @IBAction func level3btnpressed(_ sender: Any) {
        FrontViewController.level = ""
        level3btn.backgroundColor = .yellow
        level1btn.backgroundColor = .white
        level2btn.backgroundColor = .white
        FrontViewController.level = "Level3"
        
        
        
    }
    
    
    
    
    @IBAction func buttonpressed(_ sender: Any) {
        


          if  username.text != "" && FrontViewController.level != ""{
               FrontViewController.str = username.text!;
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.present(controller, animated: true)
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Fill out your name and select the Level", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
            
            
        }
    }
    
    

 

}
