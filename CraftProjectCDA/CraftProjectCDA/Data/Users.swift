//
//  Users.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 30/07/2026.
//

import Foundation

var users = [
    User(
        firstName: "Marie",
        lastName: "Dubois",
        pseudonym: "@MarieDubois",
        imageName: "",
        joinedDate: "27/07/2026",
        address: "193 Chemin des Vignes",
        city: "Bessens",
        description: "Passionnée de céramique",
        favoriteArtworksID: [artworks[0].id],
        followingID: [users[1].id],
        reviewsID: [reviewMessages[1].id]
    ),
    
    User(
        firstName: "Amande",
        lastName: "Haeghen",
        pseudonym: "@AmandeHaeghen",
        imageName: "",
        joinedDate: "28/07/2026",
        address: "Rua Damasceno Monteiro 75A,",
        city: "Lisbonne",
        description: "Amoureuse des matières naturelles et de la céramique",
        favoriteArtworksID: [artworks[5].id],
        followingID: [users[0].id],
        reviewsID: [reviewMessages[5].id]
    ),
    
    User(
        firstName: "Anne-Sophie",
        lastName: "Deillon",
        pseudonym: "@PlumesDeSoie",
        imageName: "",
        joinedDate: "19/07/2026",
        address: "Grenoble",
        city: "Grenoble",
        description: "Passionnée de broderie d'art, de soie et de savoir-faire haute couture.",
        favoriteArtworksID: [artworks[0].id],
        followingID: [users[8].id],
        reviewsID: [reviewMessages[8].id]
    ),
    
    User(
        firstName: "Julie",
        lastName: "Boucherat",
        pseudonym: "@JulieBoucherat",
        imageName: "",
        joinedDate: "22/07/2026",
        address: "17 rue Lagréou",
        city: "Bayonne",
        description: "Inspirée par l'artisanat, la terre et les pièces uniques.",
        favoriteArtworksID: [artworks[6].id],
        followingID: [users[2].id],
        reviewsID: [reviewMessages[6].id]
    ),
    
    User(
        firstName: "Lisa",
        lastName: "Allegra",
        pseudonym: "@LisaAllegra",
        imageName: "",
        joinedDate: "23/07/2026",
        address: "C. de Quevedo, 12, 08012",
        city: "Barcelone",
        description: "Amoureuse des formes minimalistes et des matières naturelles",
        favoriteArtworksID: [artworks[7].id],
        followingID: [users[0].id],
        reviewsID: [reviewMessages[7].id]
    ),
    
    User(
        firstName: "Haruto",
        lastName: "Aoki",
        pseudonym: "@GARASU",
        imageName: "",
        joinedDate: "18/07/2026",
        address: "3 avenue République Dame",
        city: "Marseille",
        description: "Passionné de verrerie",
        favoriteArtworksID: [artworks[1].id],
        followingID: [users[0].id],
        reviewsID: [reviewMessages[2].id]
    ),
    
    User(
        firstName: "Éloise",
        lastName: "Ocre",
        pseudonym: "@TIERRAOCRE",
        imageName: "",
        joinedDate: "21/07/2026",
        address: "38 rue Saint-Jacques",
        city: "Marseille",
        description: "Passionnée par la poterie depuis l'enfance. J'aime façonner des pièces uniques inspirées des terres méditerranéennes et partager les savoir-faire artisanaux.",
        favoriteArtworksID: [artworks[2].id],
        followingID: [users[0].id],
        reviewsID: [reviewMessages[3].id]
    ),

User(
    firstName: "Lucas",
    lastName: "Bernard",
    pseudonym: "@WoodSoul",
    imageName: "",
    joinedDate: "30/07/2026",
    address: "14 rue des Tilleuls",
    city: "Lyon",
    description: "Ébéniste amateur, amoureux du bois brut et du mobilier contemporain.",
    favoriteArtworksID: [artworks[4].id],
    followingID: [users[4].id],
    reviewsID: [reviewMessages[5].id]
),

User(
    firstName: "Sofia",
    lastName: "Martins",
    pseudonym: "@FilEtLin",
    imageName: "",
    joinedDate: "29/07/2026",
    address: "82 rue Victor Hugo",
    city: "Bordeaux",
    description: "Passionnée de broderie et de lin naturel.",
    favoriteArtworksID: [artworks[5].id],
    followingID: [users[3].id],
    reviewsID: [reviewMessages[4].id]
)
]

