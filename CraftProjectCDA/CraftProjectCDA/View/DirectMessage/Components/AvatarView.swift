//
//  AvatarView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 08/08/2026.
//

import SwiftUI

struct AvatarView: View {
     var body: some View {
        Image(systemName: "person.circle.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 32, height: 32)
            .foregroundStyle(.gray)
    }
}

#Preview {
    AvatarView()
}
