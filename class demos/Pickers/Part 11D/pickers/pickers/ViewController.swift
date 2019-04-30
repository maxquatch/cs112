//
//  ViewController.swift
//  pickers
//
//  Created by Max Luttrell on 11/26/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    var tempModel = TempModel()
    @IBOutlet weak var waterImage: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet var tempRange: TemperatureRange!
    @IBOutlet weak var tempPicker: UIPickerView!
    
    // MARK: picker delegate methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print("titleForRow called with  component \(component), row \(row)")
        
        let tempC = tempRange.temps[row]
        return String(tempC)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempC = tempRange.temps[row]
        let tempF = tempModel.toFahrenheit(tempC: Double(tempC))
        tempLabel.text = "\(tempF)"
        waterImage.image = tempModel.getImage(tempC: tempC)
        print("didSelectRow \(row), tempC is: \(tempC)")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // start in middle row of picker
        let middleRow = tempRange.temps.count / 2
        pickerView(tempPicker, didSelectRow: middleRow, inComponent: 0)
        tempPicker.selectRow(middleRow, inComponent: 0, animated: false)

    }


}

