//
//  ReviewMessages.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 28/07/2026.
//

//
//  ReviewMessages.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 28/07/2026.
//

import Foundation

extension UUID {
    static let review1 = UUID()
    static let review2 = UUID()
    static let review3 = UUID()
    static let review4 = UUID()
    static let review5 = UUID()
    static let review6 = UUID()
    static let review7 = UUID()
    static let review8 = UUID()
    static let review9 = UUID()
}

var reviewMessages: [ReviewMessage] = [
    ReviewMessage(
        id: .review1,
        content: "Superbe échange ! La pièce en céramique est encore plus belle en vrai.",
        postDate: "27/07/2026 23:12",
        senderID: .marie,
        receiverID: .amande,
        rating: 5
    ),
    ReviewMessage(
        id: .review2,
        content: "Travail très soigné et envoi rapide, merci beaucoup !",
        postDate: "28/07/2026 10:15",
        senderID: .julie,
        receiverID: .anneSophie,
        rating: 4
    ),
    ReviewMessage(
        id: .review3,
        content: "Un savoir-faire impressionnant. Je recommande vivement !",
        postDate: "28/07/2026 14:30",
        senderID: .haruto,
        receiverID: .eloise,
        rating: 5
    ),
    ReviewMessage(
        id: .review4,
        content: "Très belle pièce, emballage très sécurisé.",
        postDate: "29/07/2026 09:05",
        senderID: .lisa,
        receiverID: .marie,
        rating: 4
    ),
    ReviewMessage(
        id: .review5,
        content: "Excellente communication et créations magnifiques.",
        postDate: "29/07/2026 18:20",
        senderID: .lucas,
        receiverID: .sofia,
        rating: 5
    ),
    ReviewMessage(
        id: .review6,
        content: "Créatrice passionnée, c'est un plaisir de commander auprès d'elle.",
        postDate: "30/07/2026 11:45",
        senderID: .sofia,
        receiverID: .julie,
        rating: 5
    ),
    ReviewMessage(
        id: .review7,
        content: "Pièce unique de grande qualité. Merci pour le soin apporté.",
        postDate: "30/07/2026 16:00",
        senderID: .amande,
        receiverID: .lisa,
        rating: 4
    ),
    ReviewMessage(
        id: .review8,
        content: "Super contact et travail remarquable sur le verre.",
        postDate: "31/07/2026 08:30",
        senderID: .eloise,
        receiverID: .haruto,
        rating: 5
    ),
    ReviewMessage(
        id: .review9,
        content: "Envoi rapide et travail du bois impeccable !",
        postDate: "31/07/2026 19:10",
        senderID: .anneSophie,
        receiverID: .lucas,
        rating: 5
    )
]
