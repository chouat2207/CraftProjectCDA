//
//  Header.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 12/08/2026.
//

import SwiftUI

struct Header: View {
    
    var imageName: String
    var title: String
    var user: User
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            NavigationLink {
                ProfileView(profileViewModel: ProfileViewModel(), user: user)
            }
            label: {
                Image(imageName)
                    .imageModifier(frameWidth: 45, frameHeight: 45, clipShape: Circle())
            }
        }
        .padding()
    }
}

#Preview {
    Header(imageName: "", title: "Didier", user: users[0])
}
