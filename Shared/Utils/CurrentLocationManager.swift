//
//  CurrentLocationManager.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 13/04/22.
//

import Foundation
import MapKit

struct CurrentLocationManager {

    let locManager = CLLocationManager()

    lazy var latitude: String = {

        switch locManager.authorizationStatus {
        case .restricted, .denied:
            return ""
        default:
            let currentLocation = self.locManager.location?.coordinate.latitude.description ?? ""
            return String(describing: currentLocation)
        }

    }()

    lazy var longitude: String = {

        switch locManager.authorizationStatus {
        case .restricted, .denied:
            return ""
        default:
            let currentLocation = self.locManager.location?.coordinate.longitude.description ?? ""
            return String(describing: currentLocation)
        }

    }()

    func requestAuthorization() {

        locManager.requestWhenInUseAuthorization()
    }

}
