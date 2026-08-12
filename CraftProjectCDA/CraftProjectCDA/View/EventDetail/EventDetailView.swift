//
//  EventDetailView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 11/08/2026.
//

import SwiftUI

struct EventDetailView: View {
    
    @State var viewModel = EventDetailViewModel()
    
    let event: Event
    
    var body: some View {
        VStack{
            Image(viewModel.event.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 280)
                .frame(maxWidth: 420)
                .clipped()
            
            Text(viewModel.event.name)
                .fontWeight(.semibold)
                .font(.title)
                .lineLimit(1)
                .padding(.top)
            
            Text("Par \(viewModel.author.firstName) \(viewModel.author.lastName) ")
            
            ScrollView(.vertical/*, showsIndicators: false*/) {
                VStack(alignment: .leading, spacing: 10){
                    Text("\(viewModel.event.description)")
                        .padding(.bottom)
                    
                    Divider().background(.gray)
                    
                    EventInformationRowView(title: "Date : ", information: "du \(viewModel.event.startingDate) au \(viewModel.event.endingDate)")
                    EventInformationRowView(title: "Adresse : ", information: " \(viewModel.event.adress)")
                    EventInformationRowView(title: "Contact : ", information: "\(viewModel.author.firstName)\(viewModel.author.lastName)")
                    EventInformationRowView(title: "Tarif : ", information: "5€/Pers.")
                }
                .padding()
            }
            Button(action: {
                viewModel.contactAuthor()
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
            .navigationDestination(isPresented: $viewModel.navigateToMessage) {
                // A VOIR AVEC SARAH
                // DirectMessageView(peerID: <#T##UUID#>, peerName: <#T##String#>, profileImageName: <#T##String#>)
            }
        }
        .onAppear {
            viewModel.event = event
        }
    }
}
#Preview {
    EventDetailView(event: events[0])
}
