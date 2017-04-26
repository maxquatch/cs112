//
//  TemperatureModel.swift
//  TemperatureDemo
//
//  Created by Max Luttrell on 4/25/17.
//  Copyright © 2017 Max Luttrell. All rights reserved.
//

import UIKit

class TemperatureModel {
    func toFahrenheit(celsius: Int) -> String {
        return String(Double(celsius) * 1.8 + 32)
    }
    
    func getImage(celsius: Int) -> UIImage {
        if celsius < 0 {
            return #imageLiteral(resourceName: "ice")
        } else if celsius <= 100 {
            return #imageLiteral(resourceName: "water")
        } else {
            return #imageLiteral(resourceName: "steam")
        }
    }
}
