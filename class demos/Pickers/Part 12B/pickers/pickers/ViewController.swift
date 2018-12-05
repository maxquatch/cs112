//
//  ViewController.swift
//  pickers
//
//  Created by Max Luttrell on 11/26/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var waterImage: UIImageView!
    @IBOutlet var tempRange: TemperatureRange!

    var tempModel = TemperatureModel()
    
    // MARK: picker delegate methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(tempRange.temps[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempF = tempModel.celsiusToFahrenheit(tempC: tempRange.temps[row])
        print("tempC: \(tempRange.temps[row]), tempF: \(tempF)")
        tempLabel.text = "\(tempF)"
        
        // set the image for current temperature
        waterImage.image = tempModel.imageForTemp(tempC: tempRange.temps[row])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tempF = tempModel.celsiusToFahrenheit(tempC: tempRange.temps[0])
        tempLabel.text = "\(tempF)"
    }
}

