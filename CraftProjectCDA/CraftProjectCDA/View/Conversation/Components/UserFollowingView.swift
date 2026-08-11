//
//  UserFollowingView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 11/08/2026.
//

import SwiftUI

struct UserFollowing: View {
    let user: User
    
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .cornerRadius(10)
                .foregroundStyle(.white)
            VStack {
                Image(user.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180, height: 140)
                    .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
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
        .padding()
        .frame(width: 180, height: 190)
        .shadow(radius: 2)
        
    }
}
