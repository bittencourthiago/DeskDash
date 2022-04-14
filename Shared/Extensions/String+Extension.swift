//
//  String+Extension.swift
//  DeskDash (iOS)
//
//  Created by Thiago on 13/04/22.
//

import Foundation
import SwiftUI

extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }

    var cgFloat: CGFloat {
        return CGFloat(self.floatValue)
    }
}
