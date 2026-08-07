//
//  CarteView.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 31/07/2026.
//

import SwiftUI
import MapKit

struct CarteView: View {
    
    //Définir la position initiale de la caméra avec un état (@State).
    @State private var position = MapCameraPosition.region(
           MKCoordinateRegion(
               center: CLLocationCoordinate2D(latitude: 43.2965, longitude: 5.3698),
               // si on augmente les valeurs a 10.0 la zone dans la carte est plus grandes et les choses va apparaitre trop petites voir disparau.
               span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
           )
       )
    var body: some View {
        Map(position: $position) {
            ForEach(artisanProfiles) { artisan in
                Annotation(
                    artisan.artCategory,
                    coordinate: artisan.shopLocation,
                    anchor: .bottom
                ) {
                    Image(artisan.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 44, height: 44)
                        .clipShape(Circle())
                        .overlay {
                            Circle()
                                .stroke(.white, lineWidth: 3)
                        }
                        .shadow(
                            color: .black.opacity(0.25),
                            radius: 3,
                            x: 0,
                            y: 2
                        )
                }
            }
        }
        .ignoresSafeArea()
    }
}


#Preview {
    CarteView()
}

