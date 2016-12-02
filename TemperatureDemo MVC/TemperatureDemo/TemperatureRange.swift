//
//  TemperatureRange.swift
//  TemperatureDemo
//
//  Created by Max Luttrell on 12/1/16.
//  Copyright © 2016 Max Luttrell. All rights reserved.
//

import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource {
    var temps = [Int]()

    override init() {
        super.init()
        
        // we want the range to include every temperature in between 0 and 40 C, inclusive.  Above 40 and below 0 we only want every 5th temperature.
        for i in -50...150 {
            if i < 0 {
                if i % 5 == 0 {
                    temps.append(i)
                }
            } else if i < 40 {
                temps.append(i)
            } else {
                if i % 5 == 0 {
                    temps.append(i)
                }
            }
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temps.count
    }
}
