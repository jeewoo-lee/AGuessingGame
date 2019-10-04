//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Lee, Jeewoo on 2019-10-03.
//  Copyright © 2019 Lee, Jeewoo. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: Properties
    let targetNumber = Int.random(in: 1...100)
    @IBOutlet weak var submittedGuess: UITextField!
    
    
    // Mark: Initializers
    
    
    // MARK: Methods (functions) - behavious

    //Runs as soon as the view becomes visible to users
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Make an object named 'synthesizer' which is an instance of the
        //class AVSpeechSynthesizer
        let synthesizer = AVSpeechSynthesizer()
        
        
        //make a string that contains what we want to say
        let message = "I'm thinking of number between 1 and 100. Guess what it is"
        
        
        //Make an object named 'utterance', which is an instance of the class
        //AVSpeechSynthesizer
        let utterance = AVSpeechUtterance(string: message)
        
        //Speak the message
        synthesizer.speak(utterance)
        
    }


}

