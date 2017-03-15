//
//  ViewController.swift
//  textFieldDemo2
//
//  Created by Max Luttrell on 3/14/17.
//  Copyright © 2017 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: outlets
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var theTextField: UITextField!
    @IBOutlet weak var countLabel: UILabel!

    // MARK: methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theLabel.text = "TextField Demo"
        theTextField.delegate = self
    }

    // MARK: textField delegate methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        theTextField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        theLabel.text = "finished"
        if theTextField.text != nil {
            print(theTextField.text!)
            theLabel.text = theTextField.text! + "!"
            let numChars = theTextField.text!.characters.count
            countLabel.text = String(numChars)
        }
    }
}

