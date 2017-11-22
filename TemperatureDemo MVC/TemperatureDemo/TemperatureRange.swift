//
//  TemperatureRange.swift
//  TemperatureDemo
//
//  Created by Max Luttrell on 4/25/17.
//  Copyright © 2017 Max Luttrell. All rights reserved.
//

import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource {
    var temps = [Int]()
    
    override init() {
        super.init()
        
//        for i in -50...150 {
//            if i % 5 == 0 {
//                temps.append(i)
//            }
//        }

        // put rows on the picker for -50, -45, -40, ... 0, 1, 2, 3, ... , 39, 40, 45, 50, ..., 145, 150
        
        for i in -50...0 {
            if i % 5 == 0 {
                temps.append(i)
            }
        }
        for i in 1...40 {
            temps.append(i)
        }
        for i in 45...150 {
            if i % 5 == 0 {
                temps.append(i)
            }
        }
    }
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temps.count
    }
    
}
