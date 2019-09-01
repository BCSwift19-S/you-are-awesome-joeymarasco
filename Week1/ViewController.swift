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
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("😀 viewDidLoad has executed!")
    }

    @IBAction func sayItButtonPressed(_ sender: UIButton) {
    
    let messages = ["You Are Awesome!",
                    "You Are Great!",
                    "You Are Amazing!",
                    "You Da Bomb!",
                    "Whats Up, Dude!",
                    "You Are Fabulous!"]
    messageLabel.text = messages[index]
        if index == messages.count - 1 {
            index = 0} else{
            index = index + 1
        }
        
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//
//        print("you clicked the show message button!")
//        if messageLabel.text ==  message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2{
//            messageLabel.text = message3
//        } else{
//            messageLabel.text = message1}
//
//        messageLabel.textColor = UIColor.red
//    }
}

}
