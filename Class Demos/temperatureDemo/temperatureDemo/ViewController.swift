//
//  ViewController.swift
//  temperatureDemo
//
//  Created by Max Luttrell on 4/19/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var temps = [Int]()
//    var temps = [0,1,2,3,4,5,6,7,8,9]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for i in -50...150 {
            temps.append(i)
        }
        //label.text = String(temps[0] * 9 / 5 + 32)
        label.text = toFahrenheit(celsius: temps[0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Picker data source functions
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temps.count
    }
    
    // Picker delegate functions
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        print("in pickerView titleForRow \(row)")
        //return String(temps[row]) + " ºC"
        return "\(temps[row]) ºC"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("user stopped on row \(row)")
        label.text = toFahrenheit(celsius: temps[row])
        //label.text = String(temps[row] * 9 / 5 + 32)
        //label.text = String(temps[row])
        
        // also, change the image
        if temps[row] <= 0 {
            // we are below freezing, display ice
            image.image = #imageLiteral(resourceName: "ice")
        } else if temps[row] <= 100 {
            image.image = UIImage(named: "water")
        } else {
            image.image = #imageLiteral(resourceName: "steam")
        }
        
    }

    // Helper function to convert temperature from C to F
    func toFahrenheit(celsius: Int) -> String {
        return String(celsius * 9 / 5 + 32) + " ºF"
    }
}

