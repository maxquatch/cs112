//
//  TemperatureModel.swift
//  pickers
//
//  Created by Max Luttrell on 12/3/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class TemperatureModel {
    func celsiusToFahrenheit(tempC: Int) -> Double {
        return 1.8 * Double(tempC) + 32        
    }

    func imageForTemp(tempC: Int) -> UIImage {
        if tempC <= 0 {
            return #imageLiteral(resourceName: "ice")
        } else {
            return #imageLiteral(resourceName: "water")
        }
    }
}
