//
//  APIError.swift
//  UsersApp
//
//  Created by Cristian David Laguna Aldana on 1/05/24.
//

import Foundation

enum APIError: Error {
    
    case inavliUrl
    case decodingError
    
    var errorDescription: String {
        
        switch self {
        case .inavliUrl:
            return "Invalid URL, please check the url and try again"
        case .decodingError:
            return "There was an error decoding the following data"
        }
    }
}
