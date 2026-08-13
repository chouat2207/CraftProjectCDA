//
//  SettingsAccountView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 09/08/2026.
//

import SwiftUI

struct SettingsAccountView: View {
    
    @Environment(SharedViewModel.self) private var sharedVM
    @State private var isShowingSheet = false
    @State private var isShowingCreationView = false
    
    var body: some View {
        
//        NavigationStack {
            VStack {
                List {
                    Section {
                        HStack {
                            Text("Informations personnelles")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        HStack {
                            Text("Adresse e-mail")
                            Spacer()
                            Text("*******@gmail.com")
                                .font(.footnote)
                                .foregroundStyle(.black.opacity(0.8))
                            Image(systemName: "chevron.right")
                        }
                        HStack {
                            Text("Mot de passe")
                            Spacer()
                            Text("••••••••••")
//                                .font(.default)
                                .font(.body)
                                .foregroundStyle(.black.opacity(0.8))
                            Image(systemName: "chevron.right")
                        }
                    } header: {
                        Text("Compte")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                    }
                    Section {
                        HStack {
                            Text("Notifications")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        HStack {
                            Text("Langue")
                            Spacer()
                            Text("Français")
                                .font(.footnote)
                                .foregroundStyle(.black.opacity(0.8))
                            Image(systemName: "chevron.right")
                        }
                        HStack {
                            Text("Confidentialité")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    } header: {
                        Text("Préférences")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                        
                    }
                    Section {
                        VStack(alignment: .leading){
                            Text("Passez en compte Artisan et créez votre vitrine.")
                                .font(.caption)
                                .foregroundStyle(.black)
                                .padding(.bottom,10)
                            Button {
                                isShowingSheet = true
                            } label : {
                                BecomeArtisanButton()
                            }
                            .buttonStyle(.plain)
                        }
                        
                    }header: {
                        Text("Compte Artisan")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                    }
                    
                    Section{
                        HStack{
                            Text("F.A.Q")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        HStack{
                            Text("Conditions générales d'Utilisation")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        
                    }header: {
                        Text("Aide")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                    }
                }
            }
            .navigationTitle(Text(""))
            .sheet(isPresented: $isShowingSheet) {
                SheetArtisanAccount(isShowingCreationView: $isShowingCreationView)
                    .presentationDetents([.height(450)])
                    .presentationDragIndicator(.visible)
                    .presentationBackground(.clear)
            }
            .fullScreenCover(isPresented: $isShowingCreationView) {
                            ArtisanProfileCreationView()
                                .environment(sharedVM)
                        }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    HStack{
                        Text("Réglages")
                            .fontWeight(.bold)
                            .kerning(1)
                    }
//                    .padding(.trailing,185)
                }
            }
        }
    }
//}

#Preview {
    SettingsAccountView()
        .environment(SharedViewModel())
}
