//
//  ViewController.swift
//  Week1
//
//  Created by Joseph Marasco on 8/26/19.
//  Copyright © 2019 Joseph Marasco. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImage: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageindex = -1
    var soundindex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
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
                    "Go BC!",
                    "Go Yankees!",
                    "How Ya Doin?"]
        
        
        var newIndex: Int
        
// show a message
        repeat{
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex

        
        index = newIndex
        messageLabel.text = messages[index]
// show an image
        repeat{
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageindex == newIndex
        
        imageindex = newIndex
        awesomeImage.image = UIImage(named: "image\(imageindex)")
        
        
        
        // play a sound

        repeat{
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundindex == newIndex
        
        soundindex = newIndex
        
        let soundName = "sound\(soundindex)"
        // can we load a file?
        if let sound = NSDataAsset(name: soundName){
            // check if sound.data is a file
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                // if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) could not be played as a sound.")
            }
            
            
            
            
        } else {
            
            print("ERROR: file \(soundName) did not load")
        }
}
}
