//
//  MainService.swift
//  Test-iOS
//
//  Created by Thiago on 17/06/21.
//

import Foundation
import Alamofire

struct Service {
    let urlBase = "http://192.168.178.200"
    
    func sendCommand(command: TerminalCommands, completion: @escaping((Result<Any, AFError>)->Void)) {
        
        let parameter = CommandSender(command: [command.rawValue])

        AF.request("\(urlBase):3000/",
                   method: .post,
                   parameters: parameter,
                   encoder: JSONParameterEncoder.default).response { response in
            switch response.result {
                case .success(_):
                    completion(.success(Any.self))
                case .failure(let error):
                    completion(.failure(error))
            }
        }
    }
    
    func copyText(text: String, completion: @escaping((Result<Any, AFError>)->Void)) {
        let parameter = ColorSender(text: text)
        AF.request("\(urlBase):3000/copy",
                   method: .post,
                   parameters: parameter,
                   encoder: JSONParameterEncoder.default).response { response in
            switch response.result {
                case .success(_):
                    completion(.success(Any.self))
                case .failure(let error):
                    completion(.failure(error))
            }
        }
    }
    
    func startUpdateUsage(completion: @escaping((Result<SystemUsage, AFError>)->Void)) {
        let _ =  Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            getUsage(completion: completion)
        }
    }
    
    func getUsage(completion: @escaping((Result<SystemUsage, AFError>)->Void)) {
        AF.request("\(urlBase):3030/usage").responseDecodable(of: SystemUsage.self) { response in
            completion(response.result)
        }
    }
    
}

