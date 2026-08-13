//
//  DiscoveryNewsView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 03/08/2026.
//

import SwiftUI

struct DiscoveryNewsView: View {
    var imageName: String

    var body: some View {
        ZStack {
            Circle()
                .frame(width: 94, height: 94)
                .foregroundStyle(.green)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 84, height: 84)
                    .clipShape(Circle())
            }
        }
    }
}

//#Preview {
//    DiscoveryNewsView(imageName: .constant(""))
//}
