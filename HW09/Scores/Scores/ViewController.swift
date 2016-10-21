//
//  ViewController.swift
//  Scores
//
//  Solution to HW 9 - Scores app with two UITextFields, and everything in ViewController
//  ***DO NOT USE THIS AS STARTING POINT FOR HW10 -- use the app in HW10 directory***
//
//  Created by Max Luttrell on 9/30/16.
//  Copyright © 2016 Max Luttrell. All rights reserved.
//

import UIKit

// ViewController is a subclass of UIViewController and conforms to UITextFieldDelegate protocol
class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Properties
    var giantsScore = 0
    var visitorScore = 0

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
    
    // getInput - helper method to convert input from a String optional to an Int optional.  It returns an Int value if the value in the string is valid; i.e. it is non-negative; it returns nil otherwise
    func getInput(input: String?) -> Int? {
        // val is the value we will return (note that it is initialized to nil by default)
        var val: Int?
        
        // if the input string isn't nil, try to convert it to an Int.  if it succeeds, assign this value to val.  otherwise, val stays nil.
        if input != nil {
            let intInput = Int(input!)
            if intInput != nil {
                val = intInput!
            }
        }
        
        // at this point, val is either still nil, or it has a valid int value.  if it has a valid int value, the spec says we must make sure it's not negative.  If it is negative, set it back to nil.
        if val != nil {
            if val! < 0 {
                val = nil
            }
        }
        
        return val
    }

    // MARK: UITextField delegate methods
    
    // textFieldShouldReturn() is called when the user hits return in a UITextField.  here, we simply resign first responder status and return true.  In other apps, we could modify or validate the input here.
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // textFieldDidEndEditing() is called when the UITextField is completely done inputting from the user.  This is our chance to grab the text in the field and update our scores if the text is a valid Int.  Note: we have two UITextFields, and this ViewController is the delegate for both.  Thus, we need to make sure to update scores for both UITextFields.
    func textFieldDidEndEditing(textField: UITextField) {
        // use the getInput() helper method to get giants input.  if it's valid, giantsInput will have a valid Int value.  for this one, do it the long way...
        let giantsInput = getInput(giantsTextField.text)
        if giantsInput != nil {
            giantsScore = giantsInput!
        }
        
        // same as above, but for visitor.  for this one, use a little more condensed code using optional binding...
        if let visitorInput = getInput(visitorTextField.text) {
            visitorScore = visitorInput
        }
        
        // update the score labels
        giantsScoreLabel.text = String(giantsScore)
        visitorScoreLabel.text = String(visitorScore)
    }
    
    // MARK: Actions
    
    // IBAction for tapping the "who won?" button
    @IBAction func whoWon(sender: UIButton) {
        
        if giantsScore > visitorScore {
            resultLabel.text = "Giants"
        } else if visitorScore > giantsScore {
            resultLabel.text = "Visitor"
        } else {
            resultLabel.text = "Tie"
        }
    }
}

