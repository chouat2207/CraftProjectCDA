//
//  ArtisanProfiles.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 30/07/2026.
//

import Foundation
import MapKit

var artisanProfiles = [
    ArtisanProfile(
        isActive: true,
        shopAddress: "C. de Quevedo, 12, 08012, Barcelone, Espagne",
        shopLocation: CLLocationCoordinate2D(latitude: 41.4035, longitude: 2.1603),
        reviewsID: [reviewMessages[0].id],
        totalRating: 5.0,
        artCategory: "Céramique",
        website: URL(string: "https://lisaallegra.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [artworks[0].id],
        about: "",
        followedByID: [users[0].id]
    ),
    
    ArtisanProfile(
        isActive: true,
        shopAddress: "17 rue Lagréou, 64100 Bayonne",
        shopLocation: CLLocationCoordinate2D(latitude: 43.4929, longitude: -1.4748),
        reviewsID: [reviewMessages[1].id],
        totalRating: 5.0,
        artCategory: "Céramique",
        website: URL(string: "https://www.manomani.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [artworks[1].id],
        about: "Julie Boucherat est la fondatrice de MANO MANI. Elle crée des pièces en grès aux formes organiques, inspirées de la nature du Pays basque. Son travail mêle recherche de textures, émaux personnels et cuissons traditionnelles au bois, notamment en four Anagama.",
        followedByID: [users[2].id]
    ),
    ArtisanProfile(
        isActive: true,
        shopAddress: "Bessens, 82170 Tarn-et-Garonne, France",
        shopLocation: CLLocationCoordinate2D(
            latitude: 43.8798,
            longitude: 1.2475
        ),
        reviewsID: [reviewMessages[2].id],
        totalRating: 4.9,
        artCategory: "Céramique",
        website: URL(string: "https://ateliermariedubois.com")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [artworks[2].id],
        about: "Marie Dubois imagine une céramique contemporaine aux lignes sobres et sensibles. Chaque pièce est façonnée à la main dans une recherche d'équilibre entre matière, lumière et usage quotidien.",
        followedByID: [users[3].id]
    ),
    ArtisanProfile(
        isActive: true,
        shopAddress: "Rua Damasceno Monteiro 75A, 1170-110 Lisboa, Portugal",
        shopLocation: CLLocationCoordinate2D(
            latitude: 38.7237,
            longitude: -9.1283
        ),
        reviewsID: [reviewMessages[3].id],
        totalRating: 5.0,
        artCategory: "Sculpture",
        website: URL(string: "https://amandehaeghen.art")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [artworks[3].id],
        about: "Amande Haeghen réalise des sculptures contemporaines où le volume, les textures et les matières naturelles dialoguent. Son univers explore les formes organiques et la relation entre l'objet et l'espace.",
        followedByID: [users[4].id]
    ),
    
    ArtisanProfile(
        isActive: true,
        shopAddress: "15 rue Madame de Sévigné, 87100 Limoges, France",
        shopLocation: CLLocationCoordinate2D(
            latitude: 45.8404,
            longitude: 1.2578
        ),
        reviewsID: [reviewMessages[4].id],
        totalRating: 4.9,
        artCategory: "Mobilier",
        website: URL(string: "https://nadegemouyssinat.com")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [artworks[4].id],
        about: "Nadège Mouyssinat conçoit du mobilier sculptural fabriqué artisanalement. Ses créations associent matériaux nobles, lignes minimalistes et savoir-faire traditionnel pour créer des pièces fonctionnelles et intemporelles.",
        followedByID: [users[5].id]
    ),
    
    ArtisanProfile(
        isActive: true,
        shopAddress: "12 rue Mazagran, 64200 Biarritz",
        shopLocation: CLLocationCoordinate2D(
            latitude: 43.4824,
            longitude: -1.5582
        ),
        reviewsID: [reviewMessages[5].id],
        totalRating: 4.8,
        artCategory: "Céramique",
        website: URL(string: "https://leasea.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [artworks[5].id],
        about: "Lea Sea est une céramiste inspirée par l'océan Atlantique. Elle façonne des objets du quotidien aux émaux bleutés et sableux, évoquant les paysages marins et les falaises de la côte basque.",
        followedByID: [users[6].id]
    ),
    
    ArtisanProfile(
        isActive: true,
        shopAddress: "Le Clos du Moulin 4, 1 route de Fontcouvert, 38570 Goncelin, France",
        shopLocation: CLLocationCoordinate2D(
            latitude: 45.3439,
            longitude: 5.9723
        ),
        reviewsID: [reviewMessages[6].id],
        totalRating: 5.0,
        artCategory: "Broderie d'art",
        website: URL(string: "https://www.plumesdesoie.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [artworks[6].id],
        about: "Anne-Sophie Deillon est brodeuse d'art. À travers Plumes de Soie, elle réalise des broderies contemporaines et des créations textiles mêlant finesse, savoir-faire traditionnel et poésie.",
        followedByID: [users[7].id]
    ),
    ArtisanProfile(
        isActive: true,
        shopAddress: "38 rue Saint-Jacques, 13006 Marseille",
        shopLocation: CLLocationCoordinate2D(
            latitude: 43.2926,
            longitude: 5.3771
        ),
        reviewsID: [reviewMessages[7].id],
        totalRating: 4.9,
        artCategory: "Poterie",
        website: URL(string: "https://tierraocre.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [artworks[7].id],
        about: "Sous le pseudonyme TIERRAOCRE, Éloïse imagine et façonne des pièces uniques inspirées des terres méditerranéennes. Passionnée de poterie depuis l'enfance, elle privilégie les matières brutes, les émaux naturels et le partage des savoir-faire artisanaux lors d'ateliers ouverts au public.",
        followedByID: [users[8].id]
    )
]
