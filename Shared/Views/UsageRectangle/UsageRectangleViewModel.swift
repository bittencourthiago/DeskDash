//
//  UsageRectangleViewModel.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 13/04/22.
//

import Foundation
import SwiftUI

struct UsageRectangleViewModel {
    
    let service = MainService()
    
    func getUsage(completion: @escaping((SystemUsage)->Void)) {
        service.startUpdateUsage { result in
            switch result {
                case .success(let usage):
                    completion(usage)
                case .failure(_):
                    print("failure")
            }
        }
    }
    
    func getPercentOfHeight(value: Float) -> CGFloat {
        return CGFloat(value * 175 / 100)
    }
}
