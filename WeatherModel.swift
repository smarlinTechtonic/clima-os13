//
//  WeatherModel.swift
//  Clima
//
//  Created by Sonali Marlin on 11/18/19.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let id: Int
    let cityName: String
    let description: String
    let temp: Double
    var tempString: String {
        return String(format: "%.0f", temp)
    }

    var image: String {
        switch id {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.heavyrain"
        case 600...622:
            return "cloud.snow"
        case 700...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "questionmark"
        }
    }
}
