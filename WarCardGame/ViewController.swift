//
//  ViewController.swift
//  WarCardGame
//
//  Created by abdallah.mohammed on 10/1/19.
//  Copyright © 2019 abdallah.mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var playerScore : Int = 0
    var cpuScore : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    
    @IBAction func dealClick(_ sender: Any) {
        
        let leftNumber : Int = Int.random(in: 2...14)
        let rightNumber : Int = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if(leftNumber>rightNumber){
            playerScore+=1
            playerScoreLabel.text="\(playerScore)"
        }else if(rightNumber>leftNumber){
            cpuScore+=1
            cpuScoreLabel.text="\(cpuScore)"
        }else{
            
            let alert = UIAlertController(title: "Draw", message: "Both of you have same card", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Go", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        
        }
    
        
    }
    

}

