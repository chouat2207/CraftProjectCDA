//
//  DistanceEnm.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 08/08/2026.
//

import Foundation

enum DistanceEnm: String, CaseIterable, Identifiable {
    case troisKm = "1 - 3 km"
    case sixKm = "3 - 6 km"
    case dixKm = "> 10km"
   

    var id: Self { self }
}
