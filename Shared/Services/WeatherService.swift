//
//  WeatherService.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 13/04/22.
//

import Foundation
import Alamofire

class WeatherService {

	
	
	
    let apiURL = "https://api.openweathermap.org/data/2.5/weather"

	// swiftlint:disable all
    lazy var urlWithCoordinate: String = {
        "\(apiURL)?lat=\(locationManager.latitude)&lon=\(locationManager.longitude)&lang=pt_br&appid=\(weatherApiKey)&units=metric"
    }()
	
    var locationManager = CurrentLocationManager()

    func getWeatherStart(completion: @escaping((Result<WeatherReceiver, AFError>) -> Void)) {
		_ =  Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
            self.getWeather(completion: completion)
        }
    }

    func getWeather(completion: @escaping((Result<WeatherReceiver, AFError>) -> Void)) {
        switch locationManager.locManager.authorizationStatus {
            case .notDetermined, .denied, .restricted:
                locationManager.requestAuthorization()
                return
            default:
                break
        }
        print(urlWithCoordinate)
        AF.request(urlWithCoordinate).responseDecodable(of: WeatherReceiver.self) { response in
            print(response.result)
            completion(response.result)
        }
    }
}
