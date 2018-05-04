//
//  ViewController.swift
//  SoundPlayer
//
//  Created by Max Luttrell on 5/2/17.
//  Copyright © 2017 Max Luttrell. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // monster and bubbles both use this function and we get the name of the asset from the button which shares the same name.  This is not a great way to do this, because it relies on UI elements to drive our app, but is here for reference.
    @IBAction func playButton(_ sender: UIButton) {
        if sender.titleLabel != nil {
            if sender.titleLabel!.text != nil {
                playSound(soundName: sender.titleLabel!.text!)
            }
        }
    }
    
    // guitar and applause have dedicated button action functions
    @IBAction func guitarButton(_ sender: UIButton) {
        playSound(soundName: "guitar")
    }

    @IBAction func applauseButton(_ sender: UIButton) {
        playSound(soundName: "applause")
    }

    
    // function to play a sound with asset name soundName
    func playSound(soundName: String) {
        print("play \(soundName) sound")
        
        // open the sound file and make sure it exists
        
        let sound = NSDataAsset(name: soundName)
        if sound == nil {
            print("can't open \(soundName) sound")
            return
        }
        
        // try to start an audio session to play back the sound and make sure that worked
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("error opening up audio session")
            return
        }
        
        // play the sound
        do {
            player = try AVAudioPlayer(data: sound!.data)
            
            player!.play()
        } catch {
            print("error playing \(soundName) file")
        }
        
    }
}

