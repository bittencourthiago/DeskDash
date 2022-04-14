//
//  PercentType.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 13/04/22.
//

import Foundation

enum PercentType {
    case cpu
    case memory

    func getName() -> String {
        switch self {
            case .cpu:
                return "CPU"
            case .memory:
                return "Memory"
        }
    }
}
