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

var userToUserMessages: [UserToUserMessage] = [
    // MARK: - Conversation avec Marie (12 messages)
    // 0
    UserToUserMessage(
        id: UUID(),
        content: "Salut Haruto ! J'adore ton travail sur la pièce Louis Vuitton. Quel type d'émail tu as utilisé ?",
        postDate: Date.from(string: "27/07/2026 14:10"),
        senderID: .marie,
        receiverID: .haruto
    ),
    // 1
    UserToUserMessage(
        id: UUID(),
        content: "Merci Marie ! J'ai utilisé un émail grand feu opaque, cuit à 820°C.",
        postDate: Date.from(string: "27/07/2026 14:15"),
        senderID: .haruto,
        receiverID: .marie
    ),
    // 2
    UserToUserMessage(
        id: UUID(),
        content: "Impressionnant ! La finition est vraiment nette. Tu as mis combien de couches ?",
        postDate: Date.from(string: "27/07/2026 14:18"),
        senderID: .marie,
        receiverID: .haruto
    ),
    // 3
    UserToUserMessage(
        id: UUID(),
        content: "Trois fines couches en tout, avec un ponçage intermédiaire entre chaque cuisson.",
        postDate: Date.from(string: "27/07/2026 14:22"),
        senderID: .haruto,
        receiverID: .marie
    ),
    // 4
    UserToUserMessage(
        id: UUID(),
        content: "Ça demande une précision folle... Tu penses que ça conviendrait pour de la haute bijouterie ?",
        postDate: Date.from(string: "27/07/2026 14:30"),
        senderID: .marie,
        receiverID: .haruto
    ),
    // 5
    UserToUserMessage(
        id: UUID(),
        content: "Tout à fait ! C'est justement la technique utilisée sur les cadrans de montre de luxe.",
        postDate: Date.from(string: "27/07/2026 14:35"),
        senderID: .haruto,
        receiverID: .marie
    ),
    // 6
    UserToUserMessage(
        id: UUID(),
        content: "Super intéressant ! Tu aurais des références de fournisseurs pour cet émail ?",
        postDate: Date.from(string: "27/07/2026 15:02"),
        senderID: .marie,
        receiverID: .haruto
    ),
    // 7
    UserToUserMessage(
        id: UUID(),
        content: "Oui, je te recommande les émaux Soyer à Paris, ils ont une qualité incroyable.",
        postDate: Date.from(string: "27/07/2026 15:10"),
        senderID: .haruto,
        receiverID: .marie
    ),
    // 8
    UserToUserMessage(
        id: UUID(),
        content: "Je vais aller voir ça tout de suite. Merci infiniment pour ton temps !",
        postDate: Date.from(string: "27/07/2026 15:15"),
        senderID: .marie,
        receiverID: .haruto
    ),
    // 9
    UserToUserMessage(
        id: UUID(),
        content: "Avec plaisir ! N'hésite pas si tu as d'autres questions lors de tes essais.",
        postDate: Date.from(string: "27/07/2026 15:20"),
        senderID: .haruto,
        receiverID: .marie
    ),
    // 10
    UserToUserMessage(
        id: UUID(),
        content: "Je viens de passer commande chez eux, j'ai hâte de tester !",
        postDate: Date.from(string: "28/07/2026 10:05"),
        senderID: .marie,
        receiverID: .haruto
    ),
    // 11
    UserToUserMessage(
        id: UUID(),
        content: "Génial ! Tu me montreras tes premiers résultats ?",
        postDate: Date.from(string: "28/07/2026 10:12"),
        senderID: .haruto,
        receiverID: .marie
    ),

    // MARK: - Conversation avec Lucas (13 messages)
    // 12
    UserToUserMessage(
        id: UUID(),
        content: "Salut Haruto, tu viens à l'exposition de design ce soir ?",
        postDate: Date.from(string: "25/07/2026 18:00"),
        senderID: .lucas,
        receiverID: .haruto
    ),
    // 13
    UserToUserMessage(
        id: UUID(),
        content: "Salut Lucas ! Oui, j'y vais vers 19h30. Tu y seras ?",
        postDate: Date.from(string: "25/07/2026 18:05"),
        senderID: .haruto,
        receiverID: .lucas
    ),
    // 14
    UserToUserMessage(
        id: UUID(),
        content: "Parfait, j'y serai aussi avec Éloïse. On se retrouve devant le hall principal ?",
        postDate: Date.from(string: "25/07/2026 18:12"),
        senderID: .lucas,
        receiverID: .haruto
    ),
    // 15
    UserToUserMessage(
        id: UUID(),
        content: "Ça me va très bien ! À tout à l'heure.",
        postDate: Date.from(string: "25/07/2026 18:15"),
        senderID: .haruto,
        receiverID: .lucas
    ),
    // 16
    UserToUserMessage(
        id: UUID(),
        content: "Je suis arrivé un peu en avance, il y a déjà pas mal de monde.",
        postDate: Date.from(string: "25/07/2026 19:20"),
        senderID: .lucas,
        receiverID: .haruto
    ),
    // 17
    UserToUserMessage(
        id: UUID(),
        content: "J'arrive dans 5 minutes, je cherche juste une place pour me garer.",
        postDate: Date.from(string: "25/07/2026 19:25"),
        senderID: .haruto,
        receiverID: .lucas
    ),
    // 18
    UserToUserMessage(
        id: UUID(),
        content: "C'était vraiment une belle soirée ! La sculpture en métal valait le détour.",
        postDate: Date.from(string: "25/07/2026 22:45"),
        senderID: .haruto,
        receiverID: .lucas
    ),
    // 19
    UserToUserMessage(
        id: UUID(),
        content: "Carrément ! Ça m'a donné plein d'idées pour notre prochain projet.",
        postDate: Date.from(string: "25/07/2026 23:00"),
        senderID: .lucas,
        receiverID: .haruto
    ),
    // 20
    UserToUserMessage(
        id: UUID(),
        content: "Moi aussi ! On se bloque un créneau la semaine prochaine pour en discuter ?",
        postDate: Date.from(string: "26/07/2026 09:30"),
        senderID: .haruto,
        receiverID: .lucas
    ),
    // 21
    UserToUserMessage(
        id: UUID(),
        content: "Disponible mardi après-midi si tu veux.",
        postDate: Date.from(string: "26/07/2026 10:15"),
        senderID: .lucas,
        receiverID: .haruto
    ),
    // 22
    UserToUserMessage(
        id: UUID(),
        content: "Mardi 14h, c'est noté !",
        postDate: Date.from(string: "26/07/2026 10:20"),
        senderID: .haruto,
        receiverID: .lucas
    ),
    // 23
    UserToUserMessage(
        id: UUID(),
        content: "Top, j'amènerai mes premiers croquis.",
        postDate: Date.from(string: "26/07/2026 11:00"),
        senderID: .lucas,
        receiverID: .haruto
    ),
    // 24
    UserToUserMessage(
        id: UUID(),
        content: "Parfait, hâte de voir ça.",
        postDate: Date.from(string: "26/07/2026 11:05"),
        senderID: .haruto,
        receiverID: .lucas
    ),

    // MARK: - Conversation avec Sofia (11 messages)
    // 25
    UserToUserMessage(
        id: UUID(),
        content: "Bonjour Haruto, as-tu eu le temps de jeter un œil aux prototypes de bagues ?",
        postDate: Date.from(string: "26/07/2026 11:30"),
        senderID: .sofia,
        receiverID: .haruto
    ),
    // 26
    UserToUserMessage(
        id: UUID(),
        content: "Bonjour Sofia. Oui tout à fait, le travail sur l'argent massif est très propre.",
        postDate: Date.from(string: "26/07/2026 12:00"),
        senderID: .haruto,
        receiverID: .sofia
    ),
    // 27
    UserToUserMessage(
        id: UUID(),
        content: "Merci ! Tu penses qu'on devrait modifier le sertissage pour la pierre principale ?",
        postDate: Date.from(string: "26/07/2026 12:15"),
        senderID: .sofia,
        receiverID: .haruto
    ),
    // 28
    UserToUserMessage(
        id: UUID(),
        content: "Un serti clos apporterait plus de sécurité et affinerait le style minimaliste.",
        postDate: Date.from(string: "26/07/2026 12:40"),
        senderID: .haruto,
        receiverID: .sofia
    ),
    // 29
    UserToUserMessage(
        id: UUID(),
        content: "Excellente idée. Je vais refaire une modélisation 3D avec cette option.",
        postDate: Date.from(string: "26/07/2026 14:00"),
        senderID: .sofia,
        receiverID: .haruto
    ),
    // 30
    UserToUserMessage(
        id: UUID(),
        content: "Envoie-moi le rendu dès que c'est prêt, je le validerai rapidement.",
        postDate: Date.from(string: "26/07/2026 14:10"),
        senderID: .haruto,
        receiverID: .sofia
    ),
    // 31
    UserToUserMessage(
        id: UUID(),
        content: "Voici le nouveau rendu en pièce jointe, dis-moi ce que tu en penses !",
        postDate: Date.from(string: "27/07/2026 09:15"),
        senderID: .sofia,
        receiverID: .haruto
    ),
    // 32
    UserToUserMessage(
        id: UUID(),
        content: "C'est parfait Sofia ! La pierre est bien mise en valeur. On valide cette version.",
        postDate: Date.from(string: "27/07/2026 09:45"),
        senderID: .haruto,
        receiverID: .sofia
    ),
    // 33
    UserToUserMessage(
        id: UUID(),
        content: "Super ! Je lance la production du premier moule en cire.",
        postDate: Date.from(string: "27/07/2026 10:00"),
        senderID: .sofia,
        receiverID: .haruto
    ),
    // 34
    UserToUserMessage(
        id: UUID(),
        content: "Combien de temps prendra la fonte environ ?",
        postDate: Date.from(string: "27/07/2026 10:10"),
        senderID: .haruto,
        receiverID: .sofia
    ),
    // 35
    UserToUserMessage(
        id: UUID(),
        content: "Compte environ 48 heures. Je te préviens dès que la pièce sort de l'atelier.",
        postDate: Date.from(string: "27/07/2026 10:25"),
        senderID: .sofia,
        receiverID: .haruto
    ),

    // MARK: - Conversation avec Éloïse (12 messages)
    // 36
    UserToUserMessage(
        id: UUID(),
        content: "Haruto ! Est-ce que tu aurais un moule en silicone de passe à me prêter ?",
        postDate: Date.from(string: "27/07/2026 16:20"),
        senderID: .eloise,
        receiverID: .haruto
    ),
    // 37
    UserToUserMessage(
        id: UUID(),
        content: "Coucou Éloïse. Oui j'en ai plusieurs à l'atelier, quelle taille il te faut ?",
        postDate: Date.from(string: "27/07/2026 16:25"),
        senderID: .haruto,
        receiverID: .eloise
    ),
    // 38
    UserToUserMessage(
        id: UUID(),
        content: "Un moule rectangulaire, environ 10x15cm, c'est pour de la résine.",
        postDate: Date.from(string: "27/07/2026 16:30"),
        senderID: .eloise,
        receiverID: .haruto
    ),
    // 39
    UserToUserMessage(
        id: UUID(),
        content: "J'ai pile ce qu'il te faut ! Je peux te le déposer demain matin ?",
        postDate: Date.from(string: "27/07/2026 16:35"),
        senderID: .haruto,
        receiverID: .eloise
    ),
    // 40
    UserToUserMessage(
        id: UUID(),
        content: "Oh ce serait sauveur ! Merci beaucoup. Tu veux passer prendre un café par la même occasion ?",
        postDate: Date.from(string: "27/07/2026 16:40"),
        senderID: .eloise,
        receiverID: .haruto
    ),
    // 41
    UserToUserMessage(
        id: UUID(),
        content: "Avec plaisir ! Disons vers 10h30 ?",
        postDate: Date.from(string: "27/07/2026 16:45"),
        senderID: .haruto,
        receiverID: .eloise
    ),
    // 42
    UserToUserMessage(
        id: UUID(),
        content: "C'est parfait, à demain !",
        postDate: Date.from(string: "27/07/2026 17:00"),
        senderID: .eloise,
        receiverID: .haruto
    ),
    // 43
    UserToUserMessage(
        id: UUID(),
        content: "Je suis en bas de chez toi avec le matériel.",
        postDate: Date.from(string: "28/07/2026 10:28"),
        senderID: .haruto,
        receiverID: .eloise
    ),
    // 44
    UserToUserMessage(
        id: UUID(),
        content: "Je t'ouvre la porte !",
        postDate: Date.from(string: "28/07/2026 10:29"),
        senderID: .eloise,
        receiverID: .haruto
    ),
    // 45
    UserToUserMessage(
        id: UUID(),
        content: "Merci encore pour le café et la discussion, c'était super sympa !",
        postDate: Date.from(string: "28/07/2026 12:15"),
        senderID: .haruto,
        receiverID: .eloise
    ),
    // 46
    UserToUserMessage(
        id: UUID(),
        content: "Merci à toi pour le prêt ! Je te rends le moule dès que la résine a séché.",
        postDate: Date.from(string: "28/07/2026 12:30"),
        senderID: .eloise,
        receiverID: .haruto
    ),
    // 47
    UserToUserMessage(
        id: UUID(),
        content: "Prends ton temps, aucune urgence de mon côté.",
        postDate: Date.from(string: "28/07/2026 12:40"),
        senderID: .haruto,
        receiverID: .eloise
    ),

    // MARK: - Conversation avec Anne-Sophie (12 messages)
    // 48
    UserToUserMessage(
        id: UUID(),
        content: "Hello Haruto, j'ai vu ta dernière création sur Instagram, elle est sublime !",
        postDate: Date.from(string: "28/07/2026 14:00"),
        senderID: .anneSophie,
        receiverID: .haruto
    ),
    // 49
    UserToUserMessage(
        id: UUID(),
        content: "Merci Anne-Sophie ! C'est gentil, j'y ai passé beaucoup d'heures.",
        postDate: Date.from(string: "28/07/2026 14:15"),
        senderID: .haruto,
        receiverID: .anneSophie
    ),
    // 50
    UserToUserMessage(
        id: UUID(),
        content: "Tu fais des commandes personnalisées en ce moment ou ton carnet est complet ?",
        postDate: Date.from(string: "28/07/2026 14:22"),
        senderID: .anneSophie,
        receiverID: .haruto
    ),
    // 51
    UserToUserMessage(
        id: UUID(),
        content: "J'ai encore une petite place pour le mois prochain. Tu as un projet en tête ?",
        postDate: Date.from(string: "28/07/2026 14:30"),
        senderID: .haruto,
        receiverID: .anneSophie
    ),
    // 52
    UserToUserMessage(
        id: UUID(),
        content: "Oui, j'aimerais offrir un pendentif sur-mesure pour l'anniversaire de ma sœur.",
        postDate: Date.from(string: "28/07/2026 14:38"),
        senderID: .anneSophie,
        receiverID: .haruto
    ),
    // 53
    UserToUserMessage(
        id: UUID(),
        content: "C'est une très belle idée ! Quel genre de motifs ou de pierres elle aime ?",
        postDate: Date.from(string: "28/07/2026 14:45"),
        senderID: .haruto,
        receiverID: .anneSophie
    ),
    // 54
    UserToUserMessage(
        id: UUID(),
        content: "Elle adore les tons bleus, peut-être de l'azurite ou du saphir léger.",
        postDate: Date.from(string: "28/07/2026 15:00"),
        senderID: .anneSophie,
        receiverID: .haruto
    ),
    // 55
    UserToUserMessage(
        id: UUID(),
        content: "L'azurite associée à de l'argent brossé donnerait un rendu magnifique.",
        postDate: Date.from(string: "28/07/2026 15:15"),
        senderID: .haruto,
        receiverID: .anneSophie
    ),
    // 56
    UserToUserMessage(
        id: UUID(),
        content: "Ah oui, j'imagine trop bien ! Tu aurais une fourchette de prix à me proposer ?",
        postDate: Date.from(string: "28/07/2026 15:25"),
        senderID: .anneSophie,
        receiverID: .haruto
    ),
    // 57
    UserToUserMessage(
        id: UUID(),
        content: "Il faut compter entre 250€ et 350€ selon la pierre sélectionnée.",
        postDate: Date.from(string: "28/07/2026 15:40"),
        senderID: .haruto,
        receiverID: .anneSophie
    ),
    // 58
    UserToUserMessage(
        id: UUID(),
        content: "C'est parfaitement dans mon budget. Je te rassemble quelques images d'inspiration ce soir.",
        postDate: Date.from(string: "28/07/2026 15:50"),
        senderID: .anneSophie,
        receiverID: .haruto
    ),
    // 59
    UserToUserMessage(
        id: UUID(),
        content: "Super, j'attends tes images et je me lancerai dans les premiers croquis !",
        postDate: Date.from(string: "28/07/2026 16:00"),
        senderID: .haruto,
        receiverID: .anneSophie
    )
]
