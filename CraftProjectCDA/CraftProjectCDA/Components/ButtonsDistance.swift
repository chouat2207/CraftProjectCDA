//
//  ButtonsDistance.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 07/08/2026.
//

import SwiftUI

struct ButtonsDistance: View {
    @State private var estAppuye13 = false
    @State private var estAppuye36 = false
    @State private var estAppuye10 = false
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Button{
                estAppuye13.toggle()
                print(" ")
                
            }
            label:{Text("1 - 3 km")
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(estAppuye13 ?
                                Color(red: 103/255, green: 226/255, blue: 150/255)
                                : Color.white)                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.gray, lineWidth: 1)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))}
            Button{
                estAppuye36.toggle()
                print(" ")
                
            }
            label:{Text("3 - 6 km")
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(estAppuye36 ?
                                Color(red: 103/255, green: 226/255, blue: 150/255)
                                : Color.white)                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.gray, lineWidth: 1)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))}
            Button{
                estAppuye10.toggle()
                print(" ")
                
            }
            label:{Text("> 10 km")
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(estAppuye10 ?
                                Color(red: 103/255, green: 226/255, blue: 150/255)
                                : Color.white)                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.gray, lineWidth: 1)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))}
        }
        .padding()
    }
}

#Preview {
    ButtonsDistance()
}
