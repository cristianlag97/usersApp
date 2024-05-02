//
//  Detail.swift
//  UsersApp
//
//  Created by Cristian David Laguna Aldana on 1/05/24.
//

import SwiftUI

struct DetailUserView: View {
    let user: Result // Asegúrate de que el tipo sea el mismo que el usado en la lista

    var body: some View {
        NavigationStack{
            VStack{
                AsyncImage(url: URL(string: user.picture.medium)){ image in
                    image
                        .clipShape(.circle)
                        .frame(width:100, height: 100)
                } placeholder: {
                    ProgressView()
                        .frame(width: 70, height: 70)
                }
                
                Text("\(user.name.first) \(user.name.last)")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                
                
                Text(user.email)
                    .font(.title3)
                
                HStack{
                    Text("City:")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text(user.location.city)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal, 16)
                
                HStack{
                    Text("State:")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text(user.location.state)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal, 16)
                
                HStack{
                    Text("Country:")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text(user.location.country)
                        .fontWeight(.semibold)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 16)
                
  
                    Section("Cell"){
                        Text(user.cell)
                    }
                    Spacer()
                    Section("Phone"){
                        Text(user.phone)
                    }
    
                
                Spacer()
            }
        }
    }
}

