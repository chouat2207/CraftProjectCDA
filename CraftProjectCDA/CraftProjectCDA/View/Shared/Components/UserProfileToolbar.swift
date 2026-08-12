//
//  DiscoveryToolar.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 11/08/2026.
//

import SwiftUI

extension View {
    func userProfileToolbar(imageName: String) -> some View {
        self
            .toolbar{
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink {
                        ProfileView(editProfileViewModel: EditProfileViewModel())
                    }
                    label: {
                        AvatarView(imageName: imageName, frameWidth: 32, frameHeight: 32)
                    }
                }
            }

    }
}


