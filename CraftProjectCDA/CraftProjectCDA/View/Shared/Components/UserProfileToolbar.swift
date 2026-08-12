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
                ToolbarItem(placement: .principal) {
                    NavigationLink {
                        EventsView()
                        // ProfileView(editProfileViewModel: EditProfileViewModel())
                    }
                    label: {
                        AvatarView(imageName: imageName, frameWidth: 40, frameHeight: 40)
                    }
                }
            }

    }
}


