//
//  Home.swift
//  UsersApp
//
//  Created by Cristian David Laguna Aldana on 1/05/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var userVM: UserViewModel = UserViewModel()
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(userVM.users, id: \.login.uuid) { user in
                    NavigationLink(destination: DetailUserView(user: user)) {
                        HStack(spacing: 4) {
                            AsyncImage(url:URL(string: user.picture.thumbnail)){ image in
                                image
                                    .clipShape(.circle)
                            } placeholder: {
                                ProgressView()
                            }

                            VStack(alignment: .leading){
                                Text(user.name.first)
                                Text(user.name.last)
                            }
                            .padding(.leading, 16)

                            VStack(alignment: .leading){
                                Text(user.gender.rawValue)
                                Text(user.phone)
                            }
                            .padding(.leading, 16)
                        }
                    }
                }
            }
            .navigationTitle("Users")
            /*.navigationDestination(for: Result.self) { user in
                DetailUserView(user: user)
            }*/
        }
        .background(.white)
    }
}

#Preview {
    HomeView()
}
