//
//  Double+Extension.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 13/04/22.
//

import Foundation

extension Double {
    var roundedToZero: String {
        return String(format: "%.0f", self)
    }
}
