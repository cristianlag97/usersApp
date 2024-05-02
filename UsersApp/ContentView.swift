//
//  ContentView.swift
//  UsersApp
//
//  Created by Cristian David Laguna Aldana on 1/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var userVM: UserViewModel = UserViewModel()
    
    var body: some View {
        HomeView()
    }
}

#Preview {
    ContentView()
}
