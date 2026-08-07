//
//  ArtisanCategory.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 06/08/2026.
//

import Foundation
import Foundation

enum ArtisanCategory: String, CaseIterable, Identifiable {
    case bijoutier = "Bijoutier"
    case brodeur = "Brodeur"
    case ceramiste = "Céramiste"
    case chapelier = "Chapelier"
    case cordonnier = "Cordonnier"
    case couturier = "Couturier"
    case dessinateur = "Dessinateur"
    case ebeniste = "Ébéniste"
    case encadreur = "Encadreur"
    case horloger = "Horloger"
    case luthier = "Luthier"
    case maroquinier = "Maroquinier"
    case marqueteur = "Marqueteur"
    case mosaiste = "Mosaïste"
    case sculpteur = "Sculpteur"
    case sellier = "Sellier"
    case serigraphe = "Sérigraphe"
    case tailleur = "Tailleur"
    case tanneur = "Tanneur"
    case tapissier = "Tapissier"
    case verrier = "Verrier"

    var id: String {
        rawValue
    }
}
