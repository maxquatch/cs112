//
//  ViewController.swift
//  TextField
//
//  Created by Maximilian Luttrell on 3/19/19.
//  Copyright © 2019 Maximilian Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var sloganLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var theTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sloganLabel.text = "hello"
        theTextField.placeholder = "name"
        theTextField.delegate = self
    }


    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn called")
        
        // here we "resign first responder" for our textfield, which means it will no longer accept input and the software keyboard will disappear
        theTextField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing called")
        
        if theTextField.text != nil {
            // set sloganLabel to whatever the user input with an "!" at the end
            sloganLabel.text = theTextField.text! + "!"
            
            // we need to know the number of characters in the textfield.  recall, theTextField.text is a String optional!  so we have to unwrap it in order to access its count.  before we unwrap it, we make sure it isn't nil.
            if theTextField.text != nil {
                let numChars = theTextField.text!.count
                
                // now numChars has the number of characters in the textField; however it is stored as an Int.  in order to put it in the countLabel we need to typecast it to a String
                countLabel.text = String(numChars)
            }
            
        }
        
        // this clears the text after the user finishes editing
        theTextField.text = ""
    }

}

