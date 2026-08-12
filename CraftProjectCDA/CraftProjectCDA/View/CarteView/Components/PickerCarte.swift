//
//  PickerCarte.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//
//

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
                        .tag(content)}
        }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        
    }}

#Preview {
    PickerCarte(selection: .constant(.liste))
}
