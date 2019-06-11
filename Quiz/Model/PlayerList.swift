//
//  PlayerList.swift
//  Quiz
//
//  Created by Сауле Досымбекова on 6/9/19.
//  Copyright © 2019 Сауле Досымбекова. All rights reserved.
//

import Foundation

class PlayerList{
    var table = [Player] ()
    
    
    
    init(){
        
        table.append(Player(score: ViewController.lastscore,username: "\(FrontViewController.str)", level: FrontViewController.level))
        
    }
}
