//
//  ArtworkDetailView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 31/07/2026.
//

import SwiftUI

struct ArtworkDetailView: View {
    var body: some View {
       
        ZStack(alignment: .bottomLeading){
            
            Image(artworkJeong.imageName)
                .resizable()
                .scaledToFit()
            
            HStack{
                Image(marie.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.black, lineWidth: 5))
                VStack (alignment: .leading){
                    Text(artworkJeong.name)
                    Text("Par \(marie.firstName) \(marie.lastName)")
                    
                }
            }
        }
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text("\(users[0].firstName)")
                Text("Followed by: \(users[1].firstName)")
            
        
    }
}

#Preview {
    ArtworkDetailView()
}
