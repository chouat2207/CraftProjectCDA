//
//  Users.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 30/07/2026.
//

import Foundation


let marie = User(
        firstName: "Marie",
        lastName: "Dubois",
        pseudonym: "@MarieDubois",
        imageName: "DuboisMarie",
        joinedDate: "27/07/2026",
        address: "193 Chemin des Vignes",
        city: "Bessens",
        description: "Passionnée de céramique",
        favoriteArtworksID: [],
        followingID: [amande.id],
        reviewsID: []
    )
    
let amande = User(
        firstName: "Amande",
        lastName: "Haeghen",
        pseudonym: "@AmandeHaeghen",
        imageName: "",
        joinedDate: "28/07/2026",
        address: "Rua Damasceno Monteiro 75A,",
        city: "Lisbonne",
        description: "Amoureuse des matières naturelles et de la céramique",
        favoriteArtworksID: [],
        followingID: [],
        reviewsID: []
    )

let anneSophie = User(
        firstName: "Anne-Sophie",
        lastName: "Deillon",
        pseudonym: "@PlumesDeSoie",
        imageName: "",
        joinedDate: "19/07/2026",
        address: "Grenoble",
        city: "Grenoble",
        description: "Passionnée de broderie d'art, de soie et de savoir-faire haute couture.",
        favoriteArtworksID: [],
        followingID: [],
        reviewsID: []
    )
    
let julie = User(
        firstName: "Julie",
        lastName: "Boucherat",
        pseudonym: "@JulieBoucherat",
        imageName: "",
        joinedDate: "22/07/2026",
        address: "17 rue Lagréou",
        city: "Bayonne",
        description: "Inspirée par l'artisanat, la terre et les pièces uniques.",
        favoriteArtworksID: [],
        followingID: [],
        reviewsID: []
    )
    
let lisa = User(
        firstName: "Lisa",
        lastName: "Allegra",
        pseudonym: "@LisaAllegra",
        imageName: "",
        joinedDate: "23/07/2026",
        address: "C. de Quevedo, 12, 08012",
        city: "Barcelone",
        description: "Amoureuse des formes minimalistes et des matières naturelles",
        favoriteArtworksID: [],
        followingID: [],
        reviewsID: []
    )
    
let haruto = User(
        firstName: "Haruto",
        lastName: "Aoki",
        pseudonym: "@GARASU",
        imageName: "",
        joinedDate: "18/07/2026",
        address: "3 avenue République Dame",
        city: "Marseille",
        description: "Passionné de verrerie",
        favoriteArtworksID: [],
        followingID: [],
        reviewsID: []
    )
    
let eloise = User(
        firstName: "Éloise",
        lastName: "Ocre",
        pseudonym: "@TIERRAOCRE",
        imageName: "",
        joinedDate: "21/07/2026",
        address: "38 rue Saint-Jacques",
        city: "Marseille",
        description: "Passionnée par la poterie depuis l'enfance. J'aime façonner des pièces uniques inspirées des terres méditerranéennes et partager les savoir-faire artisanaux.",
        favoriteArtworksID: [],
        followingID: [],
        reviewsID: []
    )

let lucas = User(
    firstName: "Lucas",
    lastName: "Bernard",
    pseudonym: "@WoodSoul",
    imageName: "",
    joinedDate: "30/07/2026",
    address: "14 rue des Tilleuls",
    city: "Lyon",
    description: "Ébéniste amateur, amoureux du bois brut et du mobilier contemporain.",
    favoriteArtworksID: [],
    followingID: [],
    reviewsID: []
)

let sofia = User(
    firstName: "Sofia",
    lastName: "Martins",
    pseudonym: "@FilEtLin",
    imageName: "",
    joinedDate: "29/07/2026",
    address: "82 rue Victor Hugo",
    city: "Bordeaux",
    description: "Passionnée de broderie et de lin naturel.",
    favoriteArtworksID: [],
    followingID: [marie.id],
    reviewsID: []
)

var users: [User] = [
    marie,
    amande,
    anneSophie,
    julie,
    lisa,
    haruto,
    eloise,
    lucas,
    sofia
]
