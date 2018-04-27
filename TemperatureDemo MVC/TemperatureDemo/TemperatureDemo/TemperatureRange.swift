//
//  TemperatureRange.swift
//  TemperatureDemo
//
//  Created by Max Luttrell on 4/26/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource {
    var temps = [Int]()

    override init() {
        super.init()

        // every 5 degrees from -50 to 0, then every degree from 0 to 50, then every 5 degrees from 50 to 150
        for i in -50...0 {
            if i % 5 == 0 {
                temps.append(i)
            }
        }
        for i in 1...50 {
            temps.append(i)
        }
        for i in 55...150 {
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
