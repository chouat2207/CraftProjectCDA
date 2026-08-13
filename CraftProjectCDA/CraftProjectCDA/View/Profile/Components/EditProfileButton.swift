//
//  EditProfileButton.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 12/08/2026.
//

import SwiftUI

struct EditProfileButton: View {
    
//    @State private var isShowEdit: Bool = false
//    
    var body: some View {
       
//        Button{
//            isShowEdit = true
//        }label: {
        HStack {
            Image(systemName: "square.and.pencil")
                .foregroundStyle(.blue)
                .font(.system(size: 20))
            
            Text("EDIT")
                .foregroundStyle(.blue)
        }
        
    }
}

#Preview {
    EditProfileButton()
}
