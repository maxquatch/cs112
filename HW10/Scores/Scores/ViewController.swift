//
//  ViewController.swift
//  Scores
//
//  Created by Max Luttrell on 9/30/16.
//  Copyright © 2016 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    var giantsScore = Score()
    var visitorScore = Score()

    // MARK: Outlets
    @IBOutlet weak var giantsScoreLabel: UILabel!
    @IBOutlet weak var visitorScoreLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var giantsTextField: UITextField!
    @IBOutlet weak var visitorTextField: UITextField!
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set this ViewController to be the delegate for both UITextFields
        giantsTextField.delegate = self
        visitorTextField.delegate = self
    }

    // MARK: UITextField delegate methods
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        // update the score properties
        giantsScore.setScore(giantsTextField.text)
        visitorScore.setScore(visitorTextField.text)
        
        // update the score labels
        giantsScoreLabel.text = String(giantsScore.score)
        visitorScoreLabel.text = String(visitorScore.score)
    }
    
    // MARK: Actions
    
    // IBAction for tapping the "who won?" button
    @IBAction func whoWon(sender: UIButton) {
        if giantsScore.score > visitorScore.score {
            resultLabel.text = "Giants"
        } else if visitorScore.score > giantsScore.score {
            resultLabel.text = "Visitor"
        } else {
            resultLabel.text = "Tie"
        }
    }
}

