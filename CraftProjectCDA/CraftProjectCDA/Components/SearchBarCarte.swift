//
//  SearchBarCarte.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//



//import SwiftUI
//
//struct SearchBarCarte: View {
//    @State private var searchText = ""
//    
//       private let countries = [
//           "Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Antigua and Barbuda", "Argentina", "Armenia", "Australia", "Austria"
//       ]
//       
//       private var searchResults : [String] {
//           searchText.isEmpty ? countries : countries.filter { $0.contains(searchText) }
//       }
//
//       var body: some View {
//           NavigationStack {
//               VStack {
//                   List(searchResults, id: \.self) { country in
//                       Text(country)
//                   }
//               }
//               .searchable(text: $searchText)
//           }
//       }
//}
//#Preview {
//    SearchBarCarte()
//}
import SwiftUI

struct SearchBarCarte: View {

    @Binding var searchText: String 

    var body: some View {
        HStack(spacing: 10) {

            Image(systemName: "magnifyingglass")
                .foregroundStyle(.secondary)

            TextField(
                "Search...",
                text: $searchText
            )
            .submitLabel(.search)
            Image(systemName: "microphone.fill")
                .foregroundStyle(.secondary)
            
            if !searchText.isEmpty {
                Button {
                    searchText = ""
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundStyle(.secondary)
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal, 14)
        .frame(height: 45)
        .background(
            .ultraThinMaterial,
            in: RoundedRectangle(cornerRadius: 14)
        )
        
        
    }
}

#Preview {
    SearchBarCarte(searchText: .constant(""))
        .padding()
}
