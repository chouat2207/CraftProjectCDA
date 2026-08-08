//
//  ButtonContenu.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 07/08/2026.
//

//import SwiftUI
//
//struct ButtonsContenu: View {
//   
//    @State private var estAppuyeCr = false
//    @State private var estAppuyeAr = false
//    @State private var estAppuyeEv = false
//    var body: some View {
//        HStack(alignment: .center, spacing: 10){
//            Button{
//                estAppuyeCr.toggle()
//                print(" ")
//                
//            }
//            label:{Text("Création")
//                    .foregroundStyle(.black)
//                    .frame(maxWidth: .infinity)
//                    .padding(.vertical, 12)
//                    .background(estAppuyeCr ?
//                                Color(red: 103/255, green: 226/255, blue: 150/255)
//                                : Color.white)
//                    .overlay {
//                        RoundedRectangle(cornerRadius: 12)
//                            .stroke(.gray, lineWidth: 1)
//                    }
//                    .clipShape(RoundedRectangle(cornerRadius: 12))}
//            Button{
//                estAppuyeAr.toggle()
//                print(" ")
//                
//            }
//            label:{Text("Artisan")
//                    .foregroundStyle(.black)
//                    .frame(maxWidth: .infinity)
//                    .padding(.vertical, 12)
//                    .background(estAppuyeAr ?
//                                Color(red: 103/255, green: 226/255, blue: 150/255)
//                                : Color.white)                    .overlay {
//                        RoundedRectangle(cornerRadius: 12)
//                            .stroke(.gray, lineWidth: 1)
//                    }
//                    .clipShape(RoundedRectangle(cornerRadius: 12))}
//            Button{
//                estAppuyeEv.toggle()
//                print(" ")
//                
//            }
//            label:{Text("Evènement")
//                    .foregroundStyle(.black)
//                    .frame(maxWidth: .infinity)
//                    .padding(.vertical, 12)
//                    .background(estAppuyeEv ?
//                                Color(red: 103/255, green: 226/255, blue: 150/255)
//                                : Color.white)                    .overlay {
//                        RoundedRectangle(cornerRadius: 12)
//                            .stroke(.gray, lineWidth: 1)
//                    }
//                    .clipShape(RoundedRectangle(cornerRadius: 12))}
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    ButtonsContenu()
//}
import SwiftUI

struct ButtonsContenu: View {

    @Binding var selection: TypeContenuEnm?

    var body: some View {

        HStack(spacing: 10) {

            ForEach(TypeContenuEnm.allCases) { contenu in

                Button {

                    // Si je reclique sur le même bouton
                    // je désélectionne
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
//    @Previewable @State var selection: TypeContenuEnm? = .creation
//
//    ButtonsContenu(
//        selection: $selection
//    )
//    .padding()
    ButtonsContenu(selection: .constant(.none))
}
