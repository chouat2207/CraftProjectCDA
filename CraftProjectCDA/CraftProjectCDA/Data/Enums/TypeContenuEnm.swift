//
//  TypeContenuEnm.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 08/08/2026.
//

import Foundation
import Foundation

enum TypeContenuEnm: String, CaseIterable, Identifiable {
    case creation = "Création"
    case artisan = "Artisan"
    case evenement = "Evènement"

    var id: String {
        rawValue
    }
}
