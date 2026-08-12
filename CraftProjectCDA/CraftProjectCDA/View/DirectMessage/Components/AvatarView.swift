//
//  AvatarView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 08/08/2026.
//

import SwiftUI

struct AvatarView: View {
    var imageName: String
    var frameWidth: CGFloat
    var frameHeight: CGFloat
    
    var body: some View {
        UIKitImage(imageName: imageName)
            .aspectRatio(contentMode: .fill)
            .frame(width: frameWidth, height: frameHeight)
            .clipShape(Circle())
    }
}

struct UIKitImage: UIViewRepresentable {
    let imageName: String
    func makeUIView(context: Context) -> UIImageView {
        let uiKitImageView = UIImageView()
        uiKitImageView.image = UIImage(named: imageName)
        uiKitImageView.contentMode = .scaleAspectFit
        uiKitImageView
            .setContentCompressionResistancePriority(
                .defaultLow, for: .horizontal
            )
        uiKitImageView
            .setContentCompressionResistancePriority(
                .defaultLow, for: .vertical
            )
        return uiKitImageView
    }
    
    func updateUIView(_ uiView: UIImageView, context: Context) {
    }
}


#Preview {
    AvatarView(imageName: "AllegraLisa", frameWidth: 32, frameHeight: 32)
}
