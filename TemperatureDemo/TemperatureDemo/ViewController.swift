//
//  ViewController.swift
//  TemperatureDemo
//
//  Created by Max Luttrell on 11/10/16.
//  Copyright © 2016 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    //var temps = [10, 12, 15, 18, 20, 21, 25, 26, 31, 32, 33, 34, 35, 36, 37, 38, 39]
    var temps = [Int]()
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in -50...150 {
            temps.append(i)
        }
        
        tempLabel.text = ("\(toFahrenheit(temps[0])) °F")
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temps.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(temps[row]) + " °C"
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let tempC = temps[row]
        print("didSelectRow \(row) for temp \(temps[row]) C, \(toFahrenheit(temps[row])) F")
        tempLabel.text = ("\(toFahrenheit(tempC)) °F")
        
        if tempC < 0 {
            imageView.image = UIImage(named: "ice")
        } else if tempC <= 100 {
            imageView.image = UIImage(named: "water")
        } else {
            imageView.image = UIImage(named: "steam")
        }
        
    }

    func toFahrenheit(celsius: Int) -> String {
        return String(Double(celsius) * 1.8 + 32)
    }
    
}

