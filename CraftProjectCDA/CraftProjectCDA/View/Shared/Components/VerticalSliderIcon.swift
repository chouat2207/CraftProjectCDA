//
//  VerticalSliderIcon.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 12/08/2026.
//

import SwiftUI

struct VerticalSliderIcon: View {
    var body: some View {
        Image(systemName: "slider.vertical.3")
            .font(.system(size: 20))
            .foregroundStyle(.gray)
            .frame(width: 45,height: 45)
            .background(.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 10))
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black,lineWidth: 1)
            }
    }
}

#Preview {
    VerticalSliderIcon()
}
