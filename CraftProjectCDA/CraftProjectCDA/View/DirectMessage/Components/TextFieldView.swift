//
//  TextFieldView.swift
//  CraftProjectCDA
//

import SwiftUI

struct TextFieldView: View {
    @Binding var message: String
    var onSend: (String) -> Void
    var body: some View {
        HStack(spacing: 12) {
            TextField("Message...", text: $message, axis: .vertical)
                .padding(.horizontal, 14)
                .padding(.vertical, 10)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .autocorrectionDisabled(true)
            
            Button {
                if message != "" {
                    onSend(message)
                    message = ""
                }
                
            } label: {
                Image(systemName: "paperplane.fill")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(10)
                    .background(.green)
                    .clipShape(Circle())
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        
    }
}

#Preview {
    //TextFieldView(message: .constant(""))
}
