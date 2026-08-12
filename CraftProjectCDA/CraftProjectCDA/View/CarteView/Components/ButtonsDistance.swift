//
//  ButtonsDistance.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 07/08/2026.
//

import SwiftUI

struct ButtonsDistance: View {
    @Binding var selected : DistanceEnm?
    
    var body: some View {
        HStack{
            ForEach(DistanceEnm.allCases){distance in
                Button {
                    if selected == distance {
                        selected = nil
                    } else {
                        selected = distance
                    }
                }    
                label: {
                    
                    Text(distance.rawValue)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 12)
                        .background(
                            selected == distance
                            ? Color(
                                red: 103 / 255,
                                green: 226 / 255,
                                blue: 150 / 255
                            )
                            : Color.white
                        )
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12)
                        )
                        .overlay {
                            
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(.gray, lineWidth: 1)
                        }
                }
                .buttonStyle(.plain)
            }
        }
        
    }  }

#Preview {
    ButtonsDistance(selected: .constant(.none))
}
