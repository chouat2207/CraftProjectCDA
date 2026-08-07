//
//  ButtonContenu.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 07/08/2026.
//

import SwiftUI

struct ButtonContenu: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Button{
                print(" ")
                
            }
            label:{Text("Création")
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(.white)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.gray, lineWidth: 1)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))}
            Button{
                print(" ")
                
            }
            label:{Text("Artisan")
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(.white)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.gray, lineWidth: 1)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))}
            Button{
                print(" ")
                
            }
            label:{Text("Evènement")
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(.white)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(.gray, lineWidth: 1)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 12))}
        }
        .padding()
    }
}

#Preview {
    ButtonContenu()
}
