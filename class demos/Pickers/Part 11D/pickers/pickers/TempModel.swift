//
//  TempModel.swift
//  pickers
//
//  Created by Maximilian Luttrell on 4/25/19.
//  Copyright © 2019 Max Luttrell. All rights reserved.
//

import UIKit

class TempModel {
    func toFahrenheit(tempC: Double) -> Double {
        return 1.8 * tempC + 32
    }
    
    func getImage(tempC: Int) -> UIImage {
        if tempC > 100 {
            return UIImage(named: "steam")!
        } else if tempC > 0 {
            return UIImage(named: "water")!
        } else {
            return UIImage(named: "ice")!
        }
    }
}
