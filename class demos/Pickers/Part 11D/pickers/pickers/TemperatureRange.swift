//
//  TemperatureRange.swift
//  pickers
//
//  Created by Maximilian Luttrell on 4/30/19.
//  Copyright © 2019 Max Luttrell. All rights reserved.
//

import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource {
    // create an empty array to hold temperatures displayed in picker
    var temps = [Int]()
    
    // MARK: picker data source methods
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temps.count
    }
    
    override init() {
        // initialize temps with the temperatures we want
        for i in -50...150 {
            temps.append(i)
        }
    }

}
