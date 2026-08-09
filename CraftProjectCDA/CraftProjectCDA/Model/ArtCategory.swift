//
//  ArtCategory.swift
//  CraftProjectCDA
//
//  Created by Apprenant 89 on 08/08/2026.
//

import Foundation

enum ArtCategory: String, CaseIterable, Identifiable {
    case joaillerie = "Joaillerie"
    case broderie = "Broderie"
    case ceramique = "Céramique"
    case poterie = "Poterie"
    case chapeaux = "Chapeaux"
    case cordonnerie = "Cordonnerie"
    case couture = "Couture"
    case ebenisterie = "Ébénisterie"
    case horlogerie = "Horlogerie"
    case lutherie = "Lutherie"
    case maroquinerie = "Maroquinerie"
    case marqueterie = "Marqueterie"
    case mosaique = "Mosaïque"
    case sculpture = "Sculpture"
    case sellerie = "Sellerie"
    case serigraphie = "Sérigraphie"
    case tannerie = "Tannerie"
    case tapisserie = "Tapisserie"
    case verrerie = "Verrerie"
    case autre = "Autre"

    var id: String { rawValue }
}
