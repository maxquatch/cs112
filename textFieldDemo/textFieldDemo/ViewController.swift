//
//  ViewController.swift
//  textFieldDemo
//
//  Created by Max Luttrell on 10/17/17.
//  Copyright © 2017 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // MARK: outlets
    @IBOutlet weak var theInputField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!

    // MARK: methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theInputField.delegate = self
        //theInputField.text
        myLabel.text = "hello"
        theInputField.placeholder = "name"
        
    }

    // MARK: delegate methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        theInputField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing was called")
        myLabel.text = theInputField.text
        if myLabel.text != nil {
            countLabel.text = String(myLabel.text!.characters.count)
            myLabel.text = myLabel.text! + "!"
        }
    }
}

