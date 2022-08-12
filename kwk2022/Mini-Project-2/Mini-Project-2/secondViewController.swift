//
//  secondViewController.swift
//  Mini-Project-2
//
//  Created by Scholar on 8/11/22.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var proceedButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var isAnswered = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        proceedButton.isHidden = true
        scoreLabel.text = "Score: " + String(GameInfo.score)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button1(_ sender: UIButton) {
        emojiLabel.text = "🌅"
        proceedButton.isHidden = false
    }
    
    @IBAction func button2(_ sender: UIButton) {
        emojiLabel.text = "🌆"
        proceedButton.isHidden = false
        if isAnswered == false {
        GameInfo.score += 1
        scoreLabel.text = "Score: " + String(GameInfo.score)
            isAnswered = true
        }
    }
    
    @IBAction func button3(_ sender: UIButton) {
        emojiLabel.text = "🌌"
        proceedButton.isHidden = false
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
