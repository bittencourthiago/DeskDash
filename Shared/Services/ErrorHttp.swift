//
//  ErrorHttp.swift
//  DeskDash (iOS)
//
//  Created by Thiago on 12/04/22.
//

import Foundation

struct ErrorHttp: Codable, Error {
    var statusCode: Int
    var message: String
    
    enum CodingKeys: String, CodingKey {
        case statusCode
        case message
    }
    init(statusCode: Int, description: String) {
        self.statusCode = statusCode
        self.message = description
    }
}
