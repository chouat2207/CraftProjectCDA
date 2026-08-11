//
//  AboutMeInspirationDetailView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 08/08/2026.
//

import SwiftUI

struct AboutMeInspirationDetailView: View {
    
    var body: some View {
        
        HStack{
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .foregroundStyle(.white)
                
                VStack {
                    Image("GarasuInspirationOeufDeFaberge")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 180, maxHeight: 200)
                        .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                    Spacer()
                    HStack {
                        Text("Oeuf de Fabergé")
                            .font(.caption)
                        Spacer()
                    }
                    
                    .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                    
                    HStack{
                        Text("Par Pierre-Karl Fabergé")
                            .font(.caption2)
                            .fontWeight(.light)
                            .italic()
                        Spacer()
                    }
                    .padding(.init(top: 0, leading: 10, bottom: 5, trailing: 0))
                }
            }
            .padding()
            //.frame(width: 180, height: 210)
            .shadow(radius: 2)
            
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .foregroundStyle(.white)
                
                VStack {
                    Image("GarasuInspirationCodexSeraphinianus")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 180, maxHeight: 200)                        .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                    Spacer()
                    HStack {
                        Text("Codex Seraphianianus")
                            .font(.caption)
                        Spacer()
                    }
                    .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                    HStack{
                        Text("Par Luigi Serafini")
                            .font(.caption2)
                            .fontWeight(.light)
                            .italic()
                        Spacer()
                    }
                    .padding(.init(top: 0, leading: 10, bottom: 5, trailing: 0))
                }
            }
            .padding()
            //.frame(width: 180, height: 210)
            .shadow(radius: 2)
        }
        .padding(.vertical, 50)
        
        HStack{
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .foregroundStyle(.white)
                
                VStack {
                    Image("GarasuInspirationAnomalys")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 180, maxHeight: 200)
                        .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                    Spacer()
                    HStack {
                        Text("Anomalys")
                            .font(.caption)
                        Spacer()
                    }
                    
                    .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                    
                    HStack{
                        Text("Par Jennifer Umphress")
                            .font(.caption2)
                            .fontWeight(.light)
                            .italic()
                        Spacer()
                    }
                    .padding(.init(top: 0, leading: 10, bottom: 5, trailing: 0))
                }
            }
            .padding()
            //.frame(width: 180, height: 210)
            .shadow(radius: 2)
            
            ZStack {
                Rectangle()
                    .cornerRadius(10)
                    .foregroundStyle(.white)
                
                VStack {
                    Image("GarasuInspirationCorallia")
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: 180, maxHeight: 200)          .clipShape(UnevenRoundedRectangle(topLeadingRadius: 10, topTrailingRadius: 10))
                    Spacer()
                    HStack {
                        Text("YellowEdith")
                            .font(.caption)
                        Spacer()
                    }
                    .padding(.init(top: 5, leading: 10, bottom: 5, trailing: 0))
                    HStack{
                        Text("Katie Stout")
                            .font(.caption2)
                            .fontWeight(.light)
                            .italic()
                        Spacer()
                    }
                    .padding(.init(top: 0, leading: 10, bottom: 5, trailing: 0))
                }
            }
            .padding()
            //.frame(width: 180, height: 210)
            .shadow(radius: 2)
        }
        .padding(.vertical, 50)

            
        
    }
}

#Preview {
    AboutMeInspirationDetailView()
}
