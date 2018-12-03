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
    
    // MARK: picker data source methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 5
    }

    // MARK: picker delegate methods
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //print("titleForRow called with  component \(component), row \(row)")
        return String(temps[row])
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("didSelectRow called for row \(row)")
        let tempF = celsiusToFahrenheit(tempC: temps[row])
        print("tempC: \(temps[row]), tempF: \(tempF)")
        tempLabel.text = "\(tempF)"
        
        // if temperature <= 0 C, use the ice image.  else, use the water image.
        if temps[row] <= 0 {
            waterImage.image = #imageLiteral(resourceName: "ice")
        } else {
            waterImage.image = #imageLiteral(resourceName: "water")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        for i in 0...4 {
//            temps.append(i-2)
//        }
        for i in -2...2 {
            temps.append(i)
        }
        let tempF = celsiusToFahrenheit(tempC: temps[0])
        tempLabel.text = "\(tempF)"

    }


    func celsiusToFahrenheit(tempC: Int) -> Double {
        return 1.8 * Double(tempC) + 32
        
    }

}

