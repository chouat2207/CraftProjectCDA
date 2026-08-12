//
//  FollowButton.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 12/08/2026.
//

import SwiftUI

struct FollowButton: View {

    var body: some View {
       
        Button{
            
        }label: {
            ZStack(alignment: .center){
                RoundedRectangle(cornerRadius: 32)
                    .frame(width: 160,height: 40)
                    .foregroundStyle(.mint.opacity(0.8))
                HStack{
                    Image(systemName: "person.2.fill")
                        .font(.headline)
                        .foregroundStyle(.black.opacity(0.8))
                    Text("Suivre")
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
    FollowButton()
}
