//
//  ViewController.swift
//  textFieldDemo
//
//  Created by Max Luttrell on 3/15/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK:- IBOutlet properties
    @IBOutlet weak var theLabel: UILabel!
    @IBOutlet weak var theTextField: UITextField!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theTextField.delegate = self
        theTextField.placeholder = "Name"
    }

    // MARK:- text field delegate functions
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn was called")
        theTextField.resignFirstResponder()
        
        if theTextField.text != nil {
            countLabel.text = String(theTextField.text!.count)
        }
        
        return true
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing was called")
        if theTextField.text != nil {
            theLabel.text = theTextField.text! + "!"
        }
    }
}

