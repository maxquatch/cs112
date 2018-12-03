//
//  ViewController.swift
//  pickers
//
//  Created by Max Luttrell on 11/26/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var waterImage: UIImageView!
    
    var temps = [Int]()
    var tempModel = TemperatureModel()
    
    // MARK: picker data source methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temps.count
    }

    // MARK: picker delegate methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(temps[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("didSelectRow called for row \(row)")
        let tempF = tempModel.celsiusToFahrenheit(tempC: temps[row])
        print("tempC: \(temps[row]), tempF: \(tempF)")
        tempLabel.text = "\(tempF)"
        
        // set the image for current temperature
        waterImage.image = tempModel.imageForTemp(tempC: temps[row])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in -2...2 {
            temps.append(i)
        }
        let tempF = tempModel.celsiusToFahrenheit(tempC: temps[0])
        tempLabel.text = "\(tempF)"
    }
}

