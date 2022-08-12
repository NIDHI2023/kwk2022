//
//  ViewController.swift
//  Mini-Project-2
//
//  Created by Scholar on 8/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var proceedButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    var isAnswered = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        proceedButton.isHidden = true
        scoreLabel.text = "Score: " + String(GameInfo.score)
    }

    
    @IBAction func button1(_ sender: UIButton) {
        emojiLabel.text = "♊️"
        proceedButton.isHidden = false
    }
    
    
    @IBAction func button2(_ sender: UIButton) {
        emojiLabel.text = "♑️"
        proceedButton.isHidden = false
        if isAnswered == false {
        GameInfo.score += 1
        scoreLabel.text = "Score: " + String(GameInfo.score)
            isAnswered = true
        }
        
    }
    
    @IBAction func button3(_ sender: UIButton) {
        emojiLabel.text = "♒️"
        proceedButton.isHidden = false
    }
    
    
}

