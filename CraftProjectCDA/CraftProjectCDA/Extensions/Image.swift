//
//  Image.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 11/08/2026.
//

import SwiftUI

extension Image {
    func imageModifier<T: Shape>(frameWidth :CGFloat, frameHeight: CGFloat, clipShape: T) -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: frameWidth, height: frameHeight)
            .clipShape(clipShape)
    }
}

