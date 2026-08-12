//
//  DMToolbar.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 11/08/2026.
//

import SwiftUI

extension View {
    func customToolbar(imageName: String, userName: String) -> some View {
        self
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack(spacing: 10) {
                        AvatarView(
                            imageName: imageName,
                            frameWidth: 32,
                            frameHeight: 32
                        )
                        Text(userName)
                            .font(.headline)
                            .foregroundColor(.primary)
                    }
                }
            }
    }
}
