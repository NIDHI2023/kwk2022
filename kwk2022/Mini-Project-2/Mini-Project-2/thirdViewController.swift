//
//  thirdViewController.swift
//  Mini-Project-2
//
//  Created by Scholar on 8/11/22.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet weak var proceedButton: UIButton!
    
    @IBOutlet weak var shop: UIImageView!
    
    @IBOutlet weak var solar: UIImageView!
    
    @IBOutlet weak var cb: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var isAnswered = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        proceedButton.isHidden = true
        shop.isHidden = true
        solar.isHidden = true
        cb.isHidden = true
        
        scoreLabel.text = "Score: " + String(GameInfo.score)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func button1(_ sender: UIButton) {
        proceedButton.isHidden = false
        shop.isHidden = false
        solar.isHidden = true
        cb.isHidden = true
    }
    
    @IBAction func button2(_ sender: UIButton) {
        proceedButton.isHidden = false
        solar.isHidden = false
        shop.isHidden = true
        cb.isHidden = true
    }
    
    @IBAction func button3(_ sender: UIButton) {
        proceedButton.isHidden = false
        cb.isHidden = false
        solar.isHidden = true
        shop.isHidden = true
        
        if isAnswered == false {
        GameInfo.score += 1
        scoreLabel.text = "Score: " + String(GameInfo.score)
            isAnswered = true
        }
    }
    

}
