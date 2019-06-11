//
//  ScoreBoardViewController.swift
//  Quiz
//
//  Created by Сауле Досымбекова on 6/9/19.
//  Copyright © 2019 Сауле Досымбекова. All rights reserved.
//

import UIKit

class ScoreBoardViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
          let source = PlayerList()
    
    @IBOutlet weak var playerTableView: UITableView!
    
    @IBOutlet weak var restart: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        playerTableView.delegate = self
        playerTableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source.table.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let play = source.table[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "scoreBoardCell", for: indexPath) as! ScoreBoardViewCell
        cell.setScoreBoardCell(username: play, score: play ,level: play)
        return cell
    }
    
    
    @IBAction func restartact(_ sender: Any) {
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "FrontViewController") as! FrontViewController
        self.present(controller, animated: true)
    }
    
    

    
    
  
    

   

}
