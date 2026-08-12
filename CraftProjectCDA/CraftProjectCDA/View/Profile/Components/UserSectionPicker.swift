//
//  UserSectionPicker.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 12/08/2026.
//

import SwiftUI

struct UserSectionPicker: View {
    @State var profileViewModel: ProfileViewModel = ProfileViewModel()
    @State var selectedTab = "following"
    
    
    var body: some View {
        VStack{
            Picker("", selection: $selectedTab){
                Text("Abonnements")
                
                    .tag("following")
                
                Text("Avis")
                
                    .tag("reviews")
            }
            .padding(.horizontal,40)
            .pickerStyle(.segmented)
            .scaleEffect(1.2)
            .colorMultiply(.mint.opacity(0.7))
            
            
            if selectedTab == "following"{
                ScrollView{
                    LazyVGrid(columns: [
                        GridItem(.flexible()),
                        GridItem(.flexible())
                    ]){
                        ForEach (profileViewModel.filterByFollower) { user in
                            UserFollowingCard(user: user)
                        
                        }
                        
                    }
                
                }
            }else if selectedTab == "reviews"{
                ReviewsView()
                
            }
        }
    }
}

#Preview {
    UserSectionPicker()
}
