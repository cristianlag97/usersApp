//
//  NetworkService.swift
//  UsersApp
//
//  Created by Cristian David Laguna Aldana on 1/05/24.
//

import Foundation

class NetworkService {
    
    static let shared = NetworkService()
    
    func getUsers() async throws -> [Result] {
        
        let baseURL = "https://randomuser.me/api/?results=20"
        
        guard let url = URL(string: baseURL) else {
            throw APIError.inavliUrl
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        do {
            let user = try JSONDecoder().decode(Users.self, from: data)
            return user.results
        } catch {
            throw APIError.decodingError
        }
    }
}
