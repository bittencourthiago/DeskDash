//
//  WeatherViewModel.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 13/04/22.
//

import Foundation

struct WeatherRectangleViewModel {

    let service = WeatherService()

    func getWeather(completion: @escaping((WeatherReceiver) -> Void)) {
        service.getWeatherStart { result in
            switch result {
                case .success(let receiver):
                    completion(receiver)
                case .failure(let error):
                    print(error.errorDescription ?? "")
            }
        }
    }
}
