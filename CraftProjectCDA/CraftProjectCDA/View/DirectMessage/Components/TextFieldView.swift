//
//  TextFieldView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 07/08/2026.
//

import SwiftUI

struct ConversationTextFieldView: View {
    @State var message = ""
    var body: some View {
        VStack {
            HStack {
                // Placeholder text is invisible in dark mode, need to fix
                // Added space in the placeholder string to sim padding, prolly not a good way of doing it
                TextField("Message ...", text: $message)
                    .padding(5)
                    .frame(height:35)
                    .foregroundStyle(.black)
                    .background(.white)
                    .autocorrectionDisabled(true)
                    .cornerRadius(5)
               Button() {
                }
                label: {
                    Image(systemName: "paperplane.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(maxHeight: 40)
                        .foregroundStyle(.green)
                }
            }
        }
        .padding(5)
        
        .background(
        Rectangle()
            .foregroundStyle(.gray)
            .cornerRadius(5)
        )
        
    }
}

#Preview {
    ConversationTextFieldView()
}
