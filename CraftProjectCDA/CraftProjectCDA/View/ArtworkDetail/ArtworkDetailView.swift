//
//  ArtworkDetailView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 31/07/2026.
//

import SwiftUI

struct ArtworkDetailView: View {
    @State var viewModel : ArtworkDetailViewModel
 
    
    var body: some View {
        VStack{
            ZStack(alignment: .bottomLeading){
                Image(viewModel.artwork.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 280)
                    .frame(maxWidth: .infinity)
                
                HStack(){
                    Image(viewModel.artisan.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .clipShape(Circle())
                        .overlay(Circle()
                            .stroke(Color.white, lineWidth: 5))
                    
                    VStack (alignment: .leading){
                        Text(viewModel.artwork.name)
                            .fontWeight(.semibold)
                            .font(.title)
                            .padding(.top)
                        
                        Text("Par \(viewModel.artisan.firstName) \(viewModel.artisan.lastName) ")
                    }
                    Spacer()
                    Button(action: {
                        viewModel.toggleFavorite()
                    }) {
                        Image(systemName: viewModel.isFavorite ? "heart.fill" : "heart")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    }
                }
                .alignmentGuide(.bottom, computeValue: { dimension in
                    35
                })
            }
            ScrollView(.vertical/*, showsIndicators: false*/) {
                VStack(spacing: 10){
                    Text("\(viewModel.artwork.description)")
                        .padding(.bottom)
                    
                    Divider().background(.gray)
                    HStack(/*alignment: .lastTextBaseline*/){
                        Text("\(viewModel.artwork.details)")
                        Image(viewModel.artwork.imageName)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                    }
                    .padding(.top)
                }
                .padding()
            }
            Button(action: {
                viewModel.contactArtisan()
            }) {
                Text("Contacter")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color(red: 0.4, green: 0.85, blue: 0.6))
                    .cornerRadius(12)
            }
            
            .padding(.horizontal)
            .navigationDestination(isPresented: $viewModel.navigateToMessage) { Text("Conversation avec l'artisan \(viewModel.artisan.firstName)")
            }
        }
    }
}

#Preview {
    NavigationStack{ArtworkDetailView(viewModel: ArtworkDetailViewModel(artwork: artworks[2]))
    }
}
