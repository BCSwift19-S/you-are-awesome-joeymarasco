//
//  ViewController.swift
//  Week1
//
//  Created by Joseph Marasco on 8/26/19.
//  Copyright © 2019 Joseph Marasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("😀 viewDidLoad has executed!")
    }

    @IBAction func sayItButtonPressed(_ sender: UIButton) {
        print("you clicked the show message button!")
        if messageLabel.text ==  "You Are Awesome!"{
            messageLabel.text = "You Are Great!"
        } else if messageLabel.text == "You Are Great!"{
            messageLabel.text = "You Are Amazing!"
        } else{
            messageLabel.text = "You Are Awesome!"}
            
    
        
    
        messageLabel.textColor = UIColor.red
    }
}


