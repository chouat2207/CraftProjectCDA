//
//  ArtisanProfiles.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 30/07/2026.
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
        id: .lisa,
        isActive: true,
        imageName: "AllegraLisa",
        shopAddress: "C. de Quevedo, 12, 08012, Barcelone, Espagne",
        shopLocation: CLLocationCoordinate2D(latitude: 41.4035, longitude: 2.1603),
        reviewsID: [.review1, .review7],
        totalRating: 5.0,
        artCategory: "Céramique",
        website: URL(string: "https://lisaallegra.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [.artworkAppliqueAbanico, .artworkArmchair],
        about: "Lisa Allegra développe un travail sculptural axé sur l'équilibre des formes, la matière et la simplicité esthétique.",
        followedByID: [.marie, .amande, .anneSophie]
    ),

    ArtisanProfile(
        id: .julie,
        isActive: true, 
        imageName: "BoucheratJulie",
        shopAddress: "17 rue Lagréou, 64100 Bayonne",
        shopLocation: CLLocationCoordinate2D(latitude: 43.4929, longitude: -1.4748),
        reviewsID: [.review2, .review6],
        totalRating: 5.0,
        artCategory: "Céramique",
        website: URL(string: "https://www.manomani.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [.artworkJosieAlbertMichel],
        about: "Julie Boucherat est la fondatrice de MANO MANI. Elle crée des pièces en grès aux formes organiques, inspirées de la nature du Pays basque. Son travail mêle recherche de textures, émaux personnels et cuissons traditionnelles au bois, notamment en four Anagama.",
        followedByID: [.anneSophie, .sofia]
    ),

    ArtisanProfile(
        id: .marie,
        isActive: true,
        imageName: "DuboisMarie",
        shopAddress: "Bessens, 82170 Tarn-et-Garonne, France",
        shopLocation: CLLocationCoordinate2D(latitude: 43.8798, longitude: 1.2475),
        reviewsID: [.review4],
        totalRating: 4.9,
        artCategory: "Céramique",
        website: URL(string: "https://ateliermariedubois.com")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [.artworkJeong],
        about: "Marie Dubois imagine une céramique contemporaine aux lignes sobres et sensibles. Chaque pièce est façonnée à la main dans une recherche d'équilibre entre matière, lumière et usage quotidien.",
        followedByID: [.amande, .lisa, .eloise]
    ),

    ArtisanProfile(
        id: .amande,
        isActive: true,
        imageName: "HaeghenAmande",
        shopAddress: "Rua Damasceno Monteiro 75A, 1170-110 Lisboa, Portugal",
        shopLocation: CLLocationCoordinate2D(latitude: 38.7237, longitude: -9.1283),
        reviewsID: [.review1],
        totalRating: 5.0,
        artCategory: "Sculpture",
        website: URL(string: "https://amandehaeghen.art")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [.artworkLouisVuitton],
        about: "Amande Haeghen réalise des sculptures contemporaines où le volume, les textures et les matières naturelles dialoguent. Son univers explore les formes organiques et la relation entre l'objet et l'espace.",
        followedByID: [.marie, .lisa]
    ),

    ArtisanProfile(
        id: .haruto,
        isActive: true,
        imageName: "HaeghenAmande",
        shopAddress: "3 avenue République Dame, 13002 Marseille",
        shopLocation: CLLocationCoordinate2D(latitude: 43.2965, longitude: 5.3698),
        reviewsID: [.review8],
        totalRating: 4.8,
        artCategory: "Verrerie",
        website: URL(string: "https://garasu-glass.com")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [.artworkCarnigrass, .artworkWhaleTail, .artworkOeufDeFaberge, .artworkCorallia, .artworkAnomalys, .artworkCodexSeraphinianus],
        about: "Artiste verrier passionné, Haruto explore le verre sous toutes ses formes à travers le travail à chaud et le vitrail irisé.",
        followedByID: [.julie, .eloise]
    ),

    ArtisanProfile(
        id: .anneSophie,
        isActive: true,
        imageName: "",
        shopAddress: "Le Clos du Moulin 4, 1 route de Fontcouvert, 38570 Goncelin, France",
        shopLocation: CLLocationCoordinate2D(latitude: 45.3439, longitude: 5.9723),
        reviewsID: [.review9],
        totalRating: 5.0,
        artCategory: "Broderie d'art",
        website: URL(string: "https://www.plumesdesoie.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [],
        about: "Anne-Sophie Deillon est brodeuse d'art. À travers Plumes de Soie, elle réalise des broderies contemporaines et des créations textiles mêlant finesse, savoir-faire traditionnel et poésie.",
        followedByID: [.julie, .sofia]
    ),

    ArtisanProfile(
        id: .eloise,
        isActive: true, 
        imageName: "SeaLea",
        shopAddress: "38 rue Saint-Jacques, 13006 Marseille",
        shopLocation: CLLocationCoordinate2D(latitude: 43.2926, longitude: 5.3771),
        reviewsID: [.review3],
        totalRating: 4.9,
        artCategory: "Poterie",
        website: URL(string: "https://tierraocre.fr")!,
        phoneNumber: "",
        logbookID: [],
        artworksID: [.artworkDeco156, .artworkPuebloSaucer, .artworkPuebloVase, .artworkPuebloPot, .artworkNavajoVase],
        about: "Sous le pseudonyme TIERRAOCRE, Éloïse imagine et façonne des pièces uniques inspirées des terres méditerranéennes. Passionnée de poterie depuis l'enfance, elle privilégie les matières brutes, les émaux naturels et le partage des savoir-faire artisanaux lors d'ateliers ouverts au public.",
        followedByID: [.marie, .haruto]
    )

//var artisanProfiles = [
//    lisaArtisanProfile,
//    julieArtisanProfile,
//    marieArtisanProfile,
//    amandeArtisanProfile,
//    nadegeArtisanProfile,
//    leaArtisanProfile,
//    anneSophieArtisanProfile,
//    eloiseArtisanProfile]
]

