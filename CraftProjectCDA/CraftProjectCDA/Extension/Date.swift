//
//  Date.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 06/08/2026.
//

import Foundation

extension Date {
    static func from(string: String, format: String = "dd/MM/yyyy HH:mm") -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = Locale(identifier: "fr_FR")
        return formatter.date(from: string) ?? Date()
    }
}
