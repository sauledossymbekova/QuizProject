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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func buttonpressed(_ sender: Any) {
        

   FrontViewController.str = username.text!;
          if  username.text != ""{
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.present(controller, animated: true)
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Fill out your name", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
            
            
        }
    }
    
    

 

}
