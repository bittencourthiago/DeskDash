//
//  WeatherReceiver.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 13/04/22.
//

import Foundation

struct WeatherReceiver: Codable {
    let weather: Weather
    let wind: Wind
    let main: WeatherMain
}

struct WeatherItem: Codable {
    let main, description, icon: String
}

typealias Weather = [WeatherItem]

struct Wind: Codable {
    let speed: Double
    let deg: Int
}

struct WeatherMain: Codable {
    let temp, humidity: Double
}
