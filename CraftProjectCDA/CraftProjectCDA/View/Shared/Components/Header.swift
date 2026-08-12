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
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            NavigationLink {
                ProfileView(editProfileViewModel: EditProfileViewModel())
            }
            label: {
                Image(imageName)
                    .imageModifier(frameWidth: 45, frameHeight: 45, clipShape: Circle())
            }
        }
        .padding()
    }
    
    //                            HStack {
    //                                Text("Évènements")
    //                                    .font(.largeTitle)
    //                                    .fontWeight(.bold)
    //
    //                                Spacer()
    //
    //                                if let user = svm.mainUser {
    //
    //                                    Image(user.imageName)
    //                                        .resizable()
    //                                        .scaledToFill()
    //                                        .frame(width: 45, height: 45)
    //                                        .clipShape(Circle())
    //                                }
    //                            }
}

#Preview {
    Header(imageName: "", title: "Didier")
}
