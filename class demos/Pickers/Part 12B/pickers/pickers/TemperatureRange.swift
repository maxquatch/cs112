//
//  TemperatureRange.swift
//  pickers
//
//  Created by Max Luttrell on 12/5/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource {
    
    var temps = [Int]()
    
    override init() {
        super.init()
        
        for i in -50...150 {
            temps.append(i)
        }
    }
    
    // MARK: picker data source methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temps.count
    }
}
