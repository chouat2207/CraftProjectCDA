//
//  ButtonsCategory.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 06/08/2026.
//

import SwiftUI

struct ButtonsCategory: View {

    let displayedArtworks: [ArtisanCategoryEnm]

    @Binding var selection: ArtisanCategoryEnm?

    private let columns = [
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10),
        GridItem(.flexible(), spacing: 10)
    ]

    var body: some View {

        LazyVGrid(
            columns: columns,
            spacing: 10
        ) {

            ForEach(displayedArtworks) { category in

                Button {

                    if selection == category {
                        selection = nil
                    } else {
                        selection = category
                    }

                } label: {

                    Text(category.rawValue)
                        .font(.system(size: 14))
                        .foregroundStyle(.black)
                        .lineLimit(1)
                        .minimumScaleFactor(0.7)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(
                            selection == category
                            ? Color(
                                red: 103 / 255,
                                green: 226 / 255,
                                blue: 150 / 255
                            )
                            : Color.white
                        )
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                        )
                        .overlay {

                            RoundedRectangle(cornerRadius: 12)
                                .stroke(.gray, lineWidth: 1)
                        }
                }
                .buttonStyle(.plain)
            }
        }
    }
}
#Preview {
    @Previewable @State var selection: ArtisanCategoryEnm? = nil

    ButtonsCategory(
        displayedArtworks: ArtisanCategoryEnm.allCases,
        selection: $selection
    )
    .padding()

}
