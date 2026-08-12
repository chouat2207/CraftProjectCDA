//
//  UserFollowingCard.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 12/08/2026.
//

import SwiftUI

struct UserFollowingCard: View {
    let user: User
    var body: some View {
        
        ZStack{
            Rectangle()
                .cornerRadius(10)
                .foregroundStyle(.white)
            VStack {
                Image(user.imageName)
                    .imageModifier(frameWidth: 180, frameHeight: 140, clipShape: UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                
                Spacer()
                HStack {
                    Text("\(user.firstName) "+"\(user.lastName)")
                        .font(.caption)
                    Spacer()
                }
                
                .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                Spacer()
            }
        }
        .frame(width: 180, height: 190)
        .shadow(radius: 2)
        .padding(10)
        
    }
}

#Preview {
    UserFollowingCard(user: users[0])
}
