//
//  ReviewUserCard.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 10/08/2026.
//

import SwiftUI

struct ReviewUserCard: View {
    @State var profileViewModel: ProfileViewModel = ProfileViewModel()
   
    var body: some View {
        
        
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .frame(maxWidth: .infinity, minHeight: 120, maxHeight: 120)
                .foregroundStyle(.gray.quinary)
            
           
                HStack{
                    Image(profileViewModel.mainUser.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                        .overlay(Circle()
                            .stroke(.white, lineWidth: 5)
                        )
                        .padding(.bottom,45)
                    Text(profileViewModel.mainUser.pseudonym)
                        .font(.headline)
                        .padding(.bottom,80)
                    
                    Spacer()
                    
                    HStack(spacing: 0.3){
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .font(.title3)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .font(.title3)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .font(.title3)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .font(.title3)
                        Image(systemName: "star.leadinghalf.filled")
                            .foregroundStyle(.yellow)
                            .font(.title3)
                    }
                    .padding()
                    .padding(.bottom,80)
                   
                }
            VStack{
                Text("Un savoir-faire impressionnant, ainsi qu'une personnalité chaleureuse !")
                    .frame(width: 290, height: 80)
                 
            }
            .padding(.leading, 50)
            .padding(.top,30)
            
        }
        .padding()
    }
}

#Preview {
    ReviewUserCard()
}
