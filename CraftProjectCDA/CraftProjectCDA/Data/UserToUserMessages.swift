//
//  UserToUserMessages.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 28/07/2026.
//

//
//  UserToUserMessages.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 28/07/2026.
//

import Foundation

extension UUID {
    static let msg1 = UUID()
    static let msg2 = UUID()
    static let msg3 = UUID()
    static let msg4 = UUID()
    static let msg5 = UUID()
    static let msg6 = UUID()
    static let msg7 = UUID()
    static let msg8 = UUID()
    static let msg9 = UUID()
    static let msg10 = UUID()
    static let msg11 = UUID()
    static let msg12 = UUID()
    static let msg13 = UUID()
    static let msg14 = UUID()
}

var userToUserMessages: [UserToUserMessage] = [
    UserToUserMessage(
        id: .msg1,
        content: "Salut Amande ! J'adore ton travail sur la pièce Louis Vuitton. Quel type d'émail tu as utilisé ?",
        postDate: "27/07/2026 14:10",
        senderID: .marie,
        receiverID: .amande
    ),
    UserToUserMessage(
        id: .msg2,
        content: "Merci Marie ! C'est un émail à effets superposés cuit à haute température. Je peux te donner la formule si tu veux !",
        postDate: "27/07/2026 14:32",
        senderID: .amande,
        receiverID: .marie
    ),
    UserToUserMessage(
        id: .msg3,
        content: "Oh oui je veux bien ! On se croise au marché de Dinan la semaine prochaine ?",
        postDate: "27/07/2026 15:05",
        senderID: .marie,
        receiverID: .amande
    ),
    UserToUserMessage(
        id: .msg4,
        content: "Carrément, je passe sur ton stand samedi matin !",
        postDate: "27/07/2026 15:20",
        senderID: .amande,
        receiverID: .marie
    ),

    UserToUserMessage(
        id: .msg5,
        content: "Bonjour Haruto, est-ce que tu prends encore des commandes personnalisées en verrerie pour le mois d'août ?",
        postDate: "28/07/2026 09:15",
        senderID: .julie,
        receiverID: .haruto
    ),
    UserToUserMessage(
        id: .msg6,
        content: "Bonjour Julie ! Oui tout à fait, il me reste 2 créneaux. Tu as une idée précise en tête ?",
        postDate: "28/07/2026 10:02",
        senderID: .haruto,
        receiverID: .julie
    ),
    UserToUserMessage(
        id: .msg7,
        content: "J'aimerais une pièce murale dans le style de 'Carnigrass', mais avec des nuances bleutées.",
        postDate: "28/07/2026 10:45",
        senderID: .julie,
        receiverID: .haruto
    ),
    UserToUserMessage(
        id: .msg8,
        content: "C'est tout à fait réalisable. Je te prépare des croquis et des échantillons de teinte d'ici demain !",
        postDate: "28/07/2026 11:30",
        senderID: .haruto,
        receiverID: .julie
    ),

    UserToUserMessage(
        id: .msg9,
        content: "Hello Sofia, tu penses exposer au festival Art et Passion du Bois ?",
        postDate: "29/07/2026 16:00",
        senderID: .lucas,
        receiverID: .sofia
    ),
    UserToUserMessage(
        id: .msg10,
        content: "Salut Lucas ! Oui j'y serai avec mes créations en lin brodé. Tu fais du covoiturage depuis Lyon ?",
        postDate: "29/07/2026 16:40",
        senderID: .sofia,
        receiverID: .lucas
    ),
    UserToUserMessage(
        id: .msg11,
        content: "Exactement, il me reste une place dans le camion si tu as du matériel à transporter.",
        postDate: "29/07/2026 17:05",
        senderID: .lucas,
        receiverID: .sofia
    ),

    UserToUserMessage(
        id: .msg12,
        content: "Bonjour Éloise, ton travail sur les pièces Pueblo est magnifique !",
        postDate: "30/07/2026 18:20",
        senderID: .anneSophie,
        receiverID: .eloise
    ),
    UserToUserMessage(
        id: .msg13,
        content: "Merci beaucoup Anne-Sophie ! Venant d'une brodeuse d'art comme toi, ça me touche énormément.",
        postDate: "30/07/2026 19:00",
        senderID: .eloise,
        receiverID: .anneSophie
    ),
    UserToUserMessage(
        id: .msg14,
        content: "J'aimerais beaucoup tenter une association céramique et broderie de soie sur un prochain projet si ça te tente...",
        postDate: "30/07/2026 20:15",
        senderID: .anneSophie,
        receiverID: .eloise
    )
]
