//
//  PickerCarte.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//
//
//import SwiftUI
//enum MonOption: String, CaseIterable {
//    case vue1 = "Carte"
//    case vue2 = "List"
//}
//struct PickerCarte: View {
//    @State private var choixActuel: MonOption = .vue1
//    var user = users
//    var body: some View {
//                ZStack {
//                    switch choixActuel {
//                    case .vue1:
//                        CarteView()
//                    case .vue2:
//                        ListViewPickerCarte(displayedUsers: user)
//                    }
//                    
//                    //Spacer()
//                    Picker("Sélectionnez une vue", selection: $choixActuel) {
//                        ForEach(MonOption.allCases, id: \.self) { option in
//                            Text(option.rawValue).tag(option)
//                        }
//                    }
//                    .pickerStyle(.segmented)
//                    .padding(0)
//                }
//        
//                .ignoresSafeArea()
//            }
//        }
//
//#Preview {
//    PickerCarte()
//}
import SwiftUI

struct PickerCarte: View {
    @Binding  var selection: Content
    
    enum Content : String,CaseIterable {
       case liste = "Liste"
       case carte = "Carte"
       var id: Self { self }
   }
    
    init(selection: Binding<Content>) {
            self._selection = selection

            UISegmentedControl.appearance().setTitleTextAttributes(
                [.foregroundColor: UIColor.green],
                for: .selected
            )
    
            UISegmentedControl.appearance().setTitleTextAttributes(
                [.foregroundColor: UIColor.black],
                for: .normal
            )
        }
  
    
    var body: some View {
        Picker("Mode d'affichage", selection: $selection){
                ForEach(Content.allCases, id: \.self){ content in
                    Text(content.rawValue)
                        .tag(content)
                    
                }
        }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        
    }}

#Preview {
    PickerCarte(selection: .constant(.liste))
}
