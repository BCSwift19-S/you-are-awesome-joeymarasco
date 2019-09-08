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
        print("😀 viewDidLoad has executed!")}
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int{
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }

    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
    
        // can we load a file?
        if let sound = NSDataAsset(name: soundName){
            // check if sound.data is a file
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                // if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) could not be played as a sound")
            }
        } else {
            print("ERROR: file \(soundName) did not load")}
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
        

        // show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        // show an image
        imageindex = nonRepeatingRandom(lastNumber: imageindex, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageindex)")
        // random sound number
        soundindex = nonRepeatingRandom(lastNumber: soundindex, maxValue: numberOfSounds)
        // play a sound
        let soundName = "sound\(soundindex)"
        playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        
        
}
}

