//
//  SwiftUIView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 05/08/2026.
//

import SwiftUI

struct MessageCardView: View {
        var body: some View {
            HStack(alignment: .top) {
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    .foregroundStyle(.gray)
                HStack (alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("UserName")
                        Text("Ninja")
                    }
                    Text("01/01/2026 14:32")
                        .font(.caption)
                }
                .padding()
                .frame(width: 300)
                .background(
                    Rectangle()
                        .cornerRadius(15)
                        .foregroundStyle(.gray)
                )
            }
        }
    }
    #Preview {
        MessageCardView()
    }

