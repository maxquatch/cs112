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
    @IBOutlet weak var celsiusPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let totalRows = tempRange.temps.count
        let totalRows = celsiusPicker.numberOfRows(inComponent: 0)
        let initialRow = totalRows / 2
        
        celsiusPicker.selectRow(initialRow, inComponent: 0, animated: true)
//        tempLabel.text = ("\(tempModel.toFahrenheit(celsius: tempRange.temps[initialRow])) °F")
//        imageView.image = tempModel.getImage(celsius: tempRange.temps[initialRow])
        
        // call didSelectRow to set up values and image for initialRow
        pickerView(celsiusPicker, didSelectRow: initialRow, inComponent: 0)
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(tempRange.temps[row]) + " °C"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempC = tempRange.temps[row]
        print("didSelectRow \(row) for temp \(tempRange.temps[row]) C, \(tempModel.toFahrenheit(celsius: tempRange.temps[row])) F")
        tempLabel.text = ("\(tempModel.toFahrenheit(celsius: tempC)) °F")
        
        imageView.image = tempModel.getImage(celsius: tempC)
        
    }

}

