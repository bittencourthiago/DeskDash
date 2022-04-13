//
//  UsageRectangleViewModel.swift
//  DeskDash (iOS)
//
//  Created by PremierSoft on 13/04/22.
//

import Foundation

struct UsageRectangleViewModel {
    
    let service = Service()
    
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
}
