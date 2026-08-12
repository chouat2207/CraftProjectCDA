//
//  Filter.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 12/08/2026.
//

import SwiftUI
extension View {

    func filterButtonStyle() -> some View {

        self
            .frame(width: 38, height: 44)
            .background(.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 10)
            )
            .overlay {

                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, lineWidth: 1)
            }
    }
}
