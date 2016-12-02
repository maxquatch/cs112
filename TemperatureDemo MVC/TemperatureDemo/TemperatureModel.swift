//
//  TemperatureModel.swift
//  TemperatureDemo
//
//  Created by Max Luttrell on 12/1/16.
//  Copyright © 2016 Max Luttrell. All rights reserved.
//

import UIKit

class TemperatureModel {

    func toFahrenheit(celsius: Int) -> String {
        return String(Double(celsius) * 1.8 + 32)
    }

    func getImage(tempC: Int) -> UIImage? {
        if tempC < 0 {
            return UIImage(named: "ice")
        } else if tempC <= 100 {
            return UIImage(named: "water")
        } else {
            return UIImage(named: "steam")
        }

    }
}