//
//  ButtonContenu.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 07/08/2026.
//

import SwiftUI

struct ButtonsContenu: View {

    @Binding var selection: TypeContenuEnm?

    var body: some View {

        HStack(spacing: 10) {

            ForEach(TypeContenuEnm.allCases) { contenu in

                Button {
                    if selection == contenu {
                        selection = nil
                    } else {
                        selection = contenu
                    }

                } label: {

                    Text(contenu.rawValue)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(
                            selection == contenu
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
    //pour tester l'effet des boutons ici au lieu de view principale.
    @Previewable @State var selection : TypeContenuEnm? = nil
    ButtonsContenu(selection : $selection)
}
