//
//  TemperatureModel.swift
//  TemperatureDemo
//
//  Created by Max Luttrell on 4/26/18.
//  Copyright © 2018 Max Luttrell. All rights reserved.
//

import UIKit

class TemperatureModel {
    func toFahrenheit(celsius: Int) -> String {
        return String(Double(celsius) * 1.8 + 32)
    }
    
    func getImage(celsius: Int) -> UIImage? {
        if celsius < 0 {
            return UIImage(named: "ice")
        } else if celsius <= 100 {
            return UIImage(named: "water")
        } else {
            return UIImage(named: "steam")
        }
        
    }
}
