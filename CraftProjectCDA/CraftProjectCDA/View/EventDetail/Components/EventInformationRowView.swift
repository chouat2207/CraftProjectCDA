//
//  EventInformationRowView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 11/08/2026.
//

import SwiftUI

struct EventInformationRowView: View {
    let title : String
    let information : String
    
    var body: some View {
        
        HStack{
            Text(title)
                .fontWeight(.bold)
            Text(information)
        }
    }
}

#Preview {
    EventInformationRowView(title: "Date :", information: "du 23 mai au 4 octobre 2026")
}
