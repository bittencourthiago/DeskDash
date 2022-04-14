//
//  SmallRectangleViewModel.swift
//  DeskDash (iOS)
//
//  Created by Thiago on 12/04/22.
//

import Foundation

class SmallRectangleViewModel: ObservableObject {
    
    let service = MainService()
    
    func sendCommand(command: TerminalCommands) {
        service.sendCommand(command: command) { result in
            switch result {
                case .success(_):
                    print("success")
                case .failure(_):
                    print("failure")
            }
        }
        
        
//        service.copyText(text: "adsdasd") { result in
//            switch result {
//                case .success(_):
//                    print("success")
//                case .failure(_):
//                    print("failure")
//            }
//        }
//
    
    }
}
