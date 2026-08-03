//
//  DiscoverySection.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 03/08/2026.
//

import Foundation

// Small struct to manage sections of DiscoveryView without copy/pasting DiscoveryHScrollView multiple times, to add more sections just add the instances in the ViewModel.
struct DiscoverySection : Identifiable {
    var id: UUID = UUID()
    var title: String
    var items: [any DisplayableItem & Identifiable]
}
