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
    @IBOutlet weak var showMessage: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("😀 viewDidLoad has executed!")
    }

    @IBAction func sayItButtonPressed(_ sender: UIButton) {
         print("you clicked the show message button!")
        messageLabel.text = "You Are Awesome!"
    }
    
    @IBAction func showAnotherMessage(_ sender: UIButton) {
        print("you clicked the show message button")
        messageLabel.text = "You Are Great!"
    }
}

