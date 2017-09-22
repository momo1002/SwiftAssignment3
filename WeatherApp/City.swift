//
//  City.swift
//  WeatherApp
//
//  Created by momo on 2017-09-20.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class City: NSObject {
    var weather : String = ""
    var weathers : [String] = ["sunny","cloudy","snow"]
    
    func randomWeatherInt() -> Int {
        let randomInt = Int(arc4random_uniform(UInt32(weathers.count)))
        return randomInt
    }
    
}
