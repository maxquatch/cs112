//
//  ViewController.swift
//  textFieldApp 
//
//  a simple app demonstrating the use of a UITextField to get text
//  from the user and manipulate it
//
//  comments with "UITextField:" show several things needed to get text from UITextField.
//
//  Created by Max Luttrell on 10/7/16.
//  Copyright © 2016 Max Luttrell. All rights reserved.
//

import UIKit

// UITextField: our ViewController conforms to the UITextFieldDelegate protocol to get text from our UITextField
class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: Outlets
    @IBOutlet weak var changeMeLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var numCharsLabel: UILabel!
    
    // MARK: Methods
    override func viewDidLoad() {
        print("view did load")
        super.viewDidLoad()
        // UITextField: set this ViewController to be the delegate for the UITextField
        textField.delegate = self
    }

    // MARK: UITextField: delegate methods
    // UITextField: textFieldShouldReturn() is called when the user hits return in a UITextField.  here, we simply resign first responder status and return true.  In other apps, we could modify or validate the input here.
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print("should return")
        // resign our first responder status
        textField.resignFirstResponder()
        return true
    }

    // UITextField: textFieldDidEndEditing() is called when the UITextField is completely done inputting from the user.  This is our chance to grab the text in the field and update our labels.
    func textFieldDidEndEditing(textField: UITextField) {
        print("did end editing")
        if textField.text != nil {
            changeMeLabel.text! = textField.text! + "!"
            numCharsLabel.text! = String(textField.text!.characters.count)
        }
    }
}
