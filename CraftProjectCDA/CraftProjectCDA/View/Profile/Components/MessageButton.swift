//
//  MessageButton.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 12/08/2026.
//

import SwiftUI

struct MessageButton: View {
    
    var body: some View {
        
        Button{
            
        }label: {
            ZStack(alignment: .center){
                RoundedRectangle(cornerRadius: 32)
                    .frame(width: 160,height: 40)
                    .foregroundStyle(.mint.opacity(0.8))
                HStack{
                    Image(systemName: "ellipsis.message")
                        .font(.headline)
                        .foregroundStyle(.black.opacity(0.8))
                    Text("Message")
                        .font(.headline)
                        .fontDesign(.rounded)
                        .fontWeight(.medium)
                        .kerning(1)
                        .foregroundStyle(.black.opacity(0.8))
                }
            }
        }
    }
}

#Preview {
    MessageButton()
}
