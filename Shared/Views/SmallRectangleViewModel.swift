//
//  SmallRectangleViewModel.swift
//  DeskDash (iOS)
//
//  Created by Thiago on 12/04/22.
//

import Foundation

class SmallRectangleViewModel: ObservableObject {
    
    let service = Service()
    
    func sendCommand() {
        service.sendCommand(command: .notes) { result in
            switch result {
                case .success(_):
                    print("success")
                case .failure(_):
                    print("failure")
            }
        }
        
        
        service.copyText(text: "adsdasd") { result in
            switch result {
                case .success(_):
                    print("success")
                case .failure(_):
                    print("failure")
            }
        }
        
        service.getUsage { result in
            switch result {
                case .success(let usage):
                    print(usage)
                case .failure(_):
                    print("failure")
            }
        }
        
    
    }
}
