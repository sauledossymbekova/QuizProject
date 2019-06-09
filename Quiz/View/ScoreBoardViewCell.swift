//
//  ScoreBoardViewCell.swift
//  Quiz
//
//  Created by Сауле Досымбекова on 6/9/19.
//  Copyright © 2019 Сауле Досымбекова. All rights reserved.
//

import UIKit

class ScoreBoardViewCell: UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }
    
    
    func setScoreBoardCell(username: Player, score: Player){
        
        scoreLabel.text = String(score.score)
        
        usernameLabel.text = username.username

}
}
