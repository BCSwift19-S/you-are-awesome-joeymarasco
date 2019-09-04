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
    var index = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("😀 viewDidLoad has executed!")
    }

    @IBAction func sayItButtonPressed(_ sender: UIButton) {
    
    let messages = ["You Are Awesome!",
                    "You Are Great!",
                    "You Are Amazing!",
                    "You Da Bomb!",
                    "Whats Up Dude!",
                    "You Are Fabulous!",
                    "This is the best app ever!",
                    "Go BC!" ]
        
        
    var newIndex = -1

        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex

        index = newIndex
        messageLabel.text = messages[index]

        
    // while loop
//
//        var newIndex = Int.random(in: 0..<messages.count)
//
//        repeat{
//            newIndex = Int.random(in: 0..<messages.count)
//        } while index == newIndex
//
//        index = newIndex
//        messageLabel.text = messages[index]
//
//
}
}
