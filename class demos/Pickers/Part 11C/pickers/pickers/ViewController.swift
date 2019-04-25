//
//  ViewController.swift
//  pickers
//
//  Created by Max Luttrell on 11/26/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var tempModel = TempModel()
    @IBOutlet weak var waterImage: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    // create an empty array to hold temperatures displayed in picker
    var temps = [Int]()
    
    // MARK: picker data source methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temps.count
    }

    // MARK: picker delegate methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print("titleForRow called with  component \(component), row \(row)")
        
        let tempC = temps[row]
        return String(tempC)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempC = temps[row]
        let tempF = tempModel.toFahrenheit(tempC: Double(tempC))
        tempLabel.text = "\(tempF)"
        waterImage.image = tempModel.getImage(tempC: tempC)
        print("didSelectRow \(row), tempC is: \(tempC)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // initialize temps with the temperatures we want
        for i in -50...150 {
            temps.append(i)
        }
    }


}

