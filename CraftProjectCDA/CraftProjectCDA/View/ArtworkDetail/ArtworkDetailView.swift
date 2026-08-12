//
//  ArtworkDetailView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 31/07/2026.
//

import SwiftUI

struct ArtworkDetailView: View {
    @Environment(SharedViewModel.self) var sharedVM
    @State var viewModel = ArtworkDetailViewModel()
    let artwork: Artwork
    
    var body: some View {
 
            VStack{
                ZStack(alignment: .bottomLeading){
                    Image(viewModel.artwork.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 280)
                        .frame(maxWidth: 420)
                        .clipped()
                    
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
                                .lineLimit(1)
                                .padding(.top)
                            
                            Text("Par \(viewModel.artisan.firstName) \(viewModel.artisan.lastName) ")
                        }
                        Spacer()
                        Button(action: {
                            sharedVM.toggleFavorite(artworkID: viewModel.artwork.id)
                        }) {
                            Image(systemName: sharedVM.isFavorite(artworkID: viewModel.artwork.id) ? "heart.fill" : "heart")
                                .font(.largeTitle)
                                .foregroundStyle(.red)
                        }
                    }
                    .alignmentGuide(.bottom, computeValue: { dimension in
                        35
                    })
                    .padding(.horizontal,8)
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
                                .scaledToFill()
                                .clipShape(Circle())
                        }
                        .padding(.top)
                    }
                    .padding()
                }
                NavigationLink{
                    DirectMessageView(
                        peerID: viewModel.artisan.id,
                        peerName: viewModel.artisan.name,
                        profileImageName: viewModel.artisan.imageName
                    )
                }
                label: {
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
                //
                //                .navigationDestination(isPresented: $viewModel.navigateToMessage) {
                //                    DirectMessageView(
                //                        peerID: viewModel.artisan.id,
                //                        peerName: viewModel.artisan.name,
                //                        profileImageName: viewModel.artisan.imageName
                //                    )
                //                }
                
            }
            
            .onAppear {
                viewModel.artwork = artwork
            }
        }
}

#Preview {
    ArtworkDetailView(artwork: artworks[2])
        .environment(SharedViewModel())
    
}
