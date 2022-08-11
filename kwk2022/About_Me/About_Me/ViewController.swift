//
//  ViewController.swift
//  About_Me
//
//  Created by Scholar on 8/10/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var fact1: UILabel!
    
    @IBOutlet weak var fact2: UILabel!
    
    @IBOutlet weak var fact3: UILabel!
    
    @IBOutlet weak var numLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fact1.isHidden = true
        fact2.isHidden = true
        fact3.isHidden = true
        numLabel.isHidden = true
    }
    
    @IBAction func buttonTap(_ sender: UIButton) {
        fact1.isHidden = !fact1.isHidden
        fact2.isHidden = !fact2.isHidden
        fact3.isHidden = !fact3.isHidden
    }
    
//    @IBAction func slider(_ sender: UISlider) {
//        if slider1.value() >= 6.5 && slider1.value <= 7.5 {
//            numLabel.isHidden = false
//        } else {
//            numLabel.isHidden = true
//        }
//
//    }
    
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        if slider1.value >= 6.5 && slider1.value <= 7.5 {
            numLabel.isHidden = false
        } else {
            numLabel.isHidden = true
        }
    }
    
    

}

