//
//  EventsView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 11/08/2026.
//
import SwiftUI

struct EventsView: View {
    
    // Données communes de l'application
    @Environment(SharedViewModel.self)
    
    private var svm
    
    // ViewModel spécifique à EventsView
    @State private var viewModel = EventsViewModel()
    
    var body: some View {
        // Permet d'utiliser les Binding :$vm.searchText, $vm.selectedCategory
        @Bindable var vm = viewModel
        
        VStack(
            alignment: .leading,
            spacing: 20
        ) {
            
            HStack {
                
                Text("Évènements")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
                
                if let user = svm.mainUser {
                    
                    Image(user.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                }
                }
                
                HStack {
                    
                    SearchBarCarte(
                        searchText: $vm.searchText
                    )
                    
                    Button {
                        
                        vm.showingSheet = true
                        
                    } label: {
                        
                        Image(
                            systemName: "slider.vertical.3"
                        )
                        .font(.system(size: 20))
                        .foregroundStyle(.gray)
                        .frame(
                            width: 45,
                            height: 45
                        )
                        .background(.white)
                        .clipShape(
                            RoundedRectangle(
                                cornerRadius: 10
                            )
                        )
                        .overlay {
                            
                            RoundedRectangle(
                                cornerRadius: 10
                            )
                            .stroke(
                                .black,
                                lineWidth: 1
                            )
                        }
                    }
                }
                .padding(.horizontal)
                
                ScrollView {
                    
                    LazyVStack(spacing: 16) {
                        
                        ForEach(
                            vm.filteredEvents(
                                from: svm.eventsData
                            )
                        ) { event in
                            
                            EventCardView(
                                event: event
                            )
                        }
                    }
                    .padding()
                }
            
            
            
            
            .sheet(
                isPresented: $vm.showingSheet
            ) {
                
                FilterCarteListeView(
                    displayedArtworks:
                        ArtisanCategoryEnm.allCases,
                    
                    selectedContent:
                        $vm.selectedContent,
                    
                    selectedCategory:
                        $vm.selectedCategory,
                    
                    selectedDistance:
                        $vm.selectedDistance
                )
            }
        }
    }
}

#Preview {

    EventsView()
        .environment(SharedViewModel())
}

