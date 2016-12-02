//
//  ViewController.swift
//  TemperatureDemo
//
//  Created by Max Luttrell on 11/10/16.
//  Copyright © 2016 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    let tempModel = TemperatureModel()
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var tempRange: TemperatureRange!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let initialRow = tempRange.temps.count / 2 - 1
        pickerView.selectRow(initialRow, inComponent: 0, animated: false)
        
        let tempC = tempRange.temps[initialRow]
        tempLabel.text = ("\(tempModel.toFahrenheit(tempC)) °F")        
        imageView.image = tempModel.getImage(tempC)

    }


    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(tempRange.temps[row]) + " °C"
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempC = tempRange.temps[row]
        print("didSelectRow \(row) for temp \(tempRange.temps[row]) C, \(tempModel.toFahrenheit(tempRange.temps[row])) F")
        tempLabel.text = ("\(tempModel.toFahrenheit(tempC)) °F")
        
        imageView.image = tempModel.getImage(tempC)
        
    }


}

