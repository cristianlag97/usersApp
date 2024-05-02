//
//  UserViewModel.swift
//  UsersApp
//
//  Created by Cristian David Laguna Aldana on 1/05/24.
//

import Foundation

class UserViewModel: ObservableObject { // el observabe es para que el view escuche los cambios que pasan acá en el view model
    
    @Published var users: [Result] = []
    
    init() {
        getAllUsers() // cuando se inicialice el view model la función se ejecutará
    }
    
    private func getAllUsers() {
        Task { @MainActor in
            self.users = try await NetworkService.shared.getUsers()
        }
    }
 
}
