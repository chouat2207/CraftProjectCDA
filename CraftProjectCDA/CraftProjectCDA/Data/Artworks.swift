//
//  Artworks.swift
//  
//
//  Created by Apprenant 85 on 30/07/2026.
//

//
//  Artworks.swift
//  CraftProjectCDA
//
//  Created by Apprenant 85 on 30/07/2026.
//

import Foundation

extension UUID {
    static let artworkLouisVuitton = UUID()
    static let artworkDeco156 = UUID()
    static let artworkJeong = UUID()
    static let artworkJosieAlbertMichel = UUID()
    static let artworkAppliqueAbanico = UUID()
    static let artworkArmchair = UUID()
    static let artworkWhiteOffering = UUID()
    static let artworkCarnigrass = UUID()
    static let artworkWhaleTail = UUID()
    static let artworkOeufDeFaberge = UUID()
    static let artworkCorallia = UUID()
    static let artworkAnomalys = UUID()
    static let artworkCodexSeraphinianus = UUID()
    static let artworkPuebloSaucer = UUID()
    static let artworkPuebloVase = UUID()
    static let artworkPuebloPot = UUID()
    static let artworkNavajoVase = UUID()
}


// artworks[index]
var artworks: [Artwork] = [
    Artwork(
        id: .artworkLouisVuitton,
        name: "Louis Vuitton",
        imageName: "HaeghenAmandeLouisVuitton", 
        imageArtisan: "HaeghenAmande",
        artCategory: "Céramique",
        description: """
        À l’image d’un collectionneur,
        qui célèbre le passé, et d’un peintre qui dessine l’avenir dans un collage en perpétuel mouvement.
        200 ans qui nous rappellent que personne ne peut rien contre le temps. Les temps changent, mais certaines choses sont immuables et traversent les années avec une étrange robustesse.
        
        La prise de conscience de ce temps qui passe, la sédimentation, un processus au cours duquel les particules de toute matière cessent progressivement de bouger et s’agglomèrent en couches. Ces couches qui se créent, année après année, pour former une mémoire universelle, celle de la Terre et de notre empreinte. Autant d’épaisseurs, comme les pages d’un livre qui nous racontent l’histoire, notre histoire.
        """,

            details: "",
            artistID: users[1].id),
    Artwork(name: "Deco 156",
            imageName: "JemezPuebloDeco156",
            artCategory: "Poterie",
            description: "",
            details: "",
            artistID: users[1].id),
    Artwork(name: "Jeong 정",
            imageName: "DuboisMarieJeong",
            artCategory: "Céramique",
            description: """
            Jeong (정), inspirée de  la  Chine  des  Song  et  de  la  Corée Joseon, explore  des  formes  épurées et  des  objets  pensés pour  être  utilisés, incarnés  et  transmis.
        
            À travers mes recherches d'émaux, je privilégie des tonalités naturelles  et   nuancées   comme  des  blancs  cassés, verts sourds, bruns profonds,  laissant apparaître les variations de cuisson et les singularités propres à chaque pièce. 
        """,
            details: "",
            artistID: users[1].id),
    Artwork(name: "Josie, Albert & Michel",
            imageName: "BoucheratJulieJosieAlbertMichel",
            artCategory: "Céramique",
            description: "",
            details: "",
            artistID: users[1].id),
    Artwork(name: "Applique Abanico",
            imageName: "AllegraLisaAppliqueAbanico",
            artCategory: "Argile",
            description: """
""",
        details: "",
        artistID: .amande
    ),
    
    Artwork(
        id: .artworkDeco156,
        name: "Deco 156",
        imageName: "JemezPuebloDeco156",
        imageArtisan: "TierraOcre",
        artCategory: "Poterie",
        description: "",
        details: "",
        artistID: .eloise
    ),
    
    Artwork(
        id: .artworkJeong,
        name: "Jeong 정",
        imageName: "DuboisMarieJeong",
        artCategory: "Céramique",
        description:
        """
        Jeong (정), inspirée de la Chine des Song et de la Corée Joseon, explore des formes épurées et des objets pensés pour être utilisés, incarnés et transmis.
        
        À travers mes recherches d'émaux, je privilégie des tonalités naturelles et nuancées comme des blancs cassés, verts sourds, bruns profonds, laissant apparaître les variations de cuisson et les singularités propres à chaque pièce.
        """,
        details: """
        DÉTAILS : 
        
        Taille : 6 x 8 cm 
        Contenance : 200 ml
        Couleur : Brun cuba
        Matière : Porcelaine
        
        Prix : 568 €
        """,
        artistID: .marie
    ),
    
    Artwork(
        id: .artworkJosieAlbertMichel,
        name: "Josie, Albert & Michel",
        imageName: "BoucheratJulieJosieAlbertMichel",
        artCategory: "Céramique",
        description: "",
        details: "",
        artistID: .julie
    ),
    
//    Artwork(
//        id: .artworkJeong,
//        name: "Jeong 정",
//        imageName: "DuboisMarieJeong",
//        imageArtisan: "DuboisMarie",
//        artCategory: "Céramique",
//        description: """
//        Jeong (정), inspirée de la Chine des Song et de la Corée Joseon,
//        explore des formes épurées et des objets pensés pour être utilisés,
//        incarnés et transmis.
//
//        À travers mes recherches d'émaux, je privilégie des tonalités
//        naturelles et nuancées.
//        """,
//        details: """
//        DÉTAILS :
//
//        Taille : 6 x 8 cm
//        Contenance : 200 ml
//        Couleur : Brun cuba
//        Matière : Porcelaine
//
//        Prix : 568 €
//        """,
//        artistID: .marie
//    ),
//
//    Artwork(
//        id: .artworkJosieAlbertMichel,
//        name: "Josie, Albert & Michel",
//        imageName: "BoucheratJulieJosieAlbertMichel",
//        imageArtisan: "BoucheratJulie",
//        artCategory: "Céramique",
//        description: "",
//        details: "",
//        artistID: .julie
//    ),
// 
//    
    Artwork(
        id: .artworkAppliqueAbanico,
        name: "Applique Abanico",
        imageName: "AllegraLisaAppliqueAbanico",
        imageArtisan: "AllegraLisa",
        artCategory: "Argile",
        description: """

        L'applique Abanico a une silhouette douce, inspirée d’une arche sculpturale, elle capte la lumière avec subtilité pour révéler toute la richesse de sa matière.
        
        La finition texturée, légèrement granuleuse, joue avec les ombres et les reflets pour créer une atmosphère chaleureuse et apaisante. Lorsqu’elle est allumée, la lumière glisse délicatement le long de ses courbes, dessinant sur le mur un halo raffiné et architectural. Disponible en version intérieur, ou extérieur.
        """,

            details: "",
            artistID: users[1].id),
    Artwork(name: "White Offering",
            imageName: "MouyssinatNadegeWhiteOffering",
            artCategory: "Porcelaine",
            description: """
            Façonnées patiemment à la main, ces courbes douces, allongées et organiques prennent vie. La surface est affinée par de multiples ponçages successifs, qui lui confèrent sa douceur satinée et minérale.
            
            Hommage à la blancheur légendaire de la porcelaine de Limoges, cette création explore la puissance de cette teinte dans toute sa majesté et sa profonde luminosité.
            """,
            details: "",
            artistID: users[1].id),
    Artwork(name: "Carnigrass",
            imageName: "GarasuAboutMeCarnigrass",
            artCategory: "Verrerie",
            description: "",
            details: "",
            artistID: users[1].id),
    Artwork(name: "Whale Tail",
            imageName: "SeaLeaWhaleTail",
            artCategory: "",
            description: """
  """,
        details: "",
        artistID: .lisa
    ),
    
    Artwork(
        id: .artworkArmchair,
        name: "Armchair",
        imageName: "AllegraLisaArmchair",
        imageArtisan: "AllegraLisa",
        artCategory: "Ceramique",
        description: """
            Les lignes épurées et minimalistes du fauteuil ARK apportent une touche raffinée à un salon, associé à un canapé, ou à une chambre à coucher, où il sert d’élément décoratif. Il peut également être associé à la lampe ARK ou à d’autres pièces de la collection. La collection ARK se compose de : deux lampadaires, un fauteuil, un tabouret, une table d’appoint et un bureau.
            
            Chaque pièce en céramique est associée à un autre matériau : le chêne ou le tissu. Des planches de bois ou des coussins moelleux relient les monolithes en céramique, tel un pont reliant deux rives. Un demi-cylindre en coton plissé s'enroule autour de son jumeau en céramique, comme un pull autour de la taille. L'équilibre est toujours au rendez-vous : un coussin en apesanteur ou un demi-cylindre en lévitation.
            """,
        details: "",
        artistID: .lisa
    ),
    
    Artwork(
        id: .artworkWhiteOffering,
        name: "White Offering",
        imageName: "MouyssinatNadegeWhiteOffering",
        imageArtisan: "MouyssinatNadege",
        artCategory: "Porcelaine",
        description: """
            Façonnées patiemment à la main, ces courbes douces, naturally allongées et organiques prennent vie. La surface est affinée par de multiples ponçages successifs, qui lui confèrent sa douceur satinée et minérale.
            
            Hommage à la blancheur légendaire de la porcelaine de Limoges, cette création explore la puissance de cette teinte dans toute sa majesté et sa profonde luminosité.
            """,
        details: "",
        artistID: .anneSophie
    ),
    
    Artwork(
        id: .artworkCarnigrass,
        name: "Carnigrass",
        imageName: "GarasuAboutMeCarnigrass",
        imageArtisan: "",
        artCategory: "Verrerie",
        description: "",
        details: "",
        artistID: .haruto
    ),
    
    Artwork(
        id: .artworkWhaleTail,
        name: "Whale Tail",
        imageName: "SeaLeaWhaleTail", 
        imageArtisan: "SeaLea",
        artCategory: "Verrerie",
        description:
            """
            De magnifiques sculptures représentant des queues de baleine et de requin occupent le devant de la scène, incarnant une forme emblématique qui captive l’imagination. Inspirées par la magie de l’observation des baleines, chaque sculpture est réalisée à la main pour évoquer les souvenirs et les moments précieux passés aux côtés de ces créatures majestueuses dans leur habitat naturel.
            
            Nos sculptures en vitrail sont méticuleusement réalisées dans cet esprit, à partir de verre irisé qui offre un jeu fascinant de couleurs et de reflets imitant la lueur éthérée et les teintes de l’océan. Chaque pièce est un véritable atout pour votre intérieur, apportant une touche de merveille aquatique à n’importe quel espace.
            """,
   

//    Artwork(name: "Oeuf de Fabergé",
//            imageName: "GarasuInspirationOeufDeFaberge",
//            artCategory: "Joaillerie",
//            description: "",
//            details: "",
//            artistID: users[1].id),
//    Artwork(name: "Corallia",
//            imageName: "GarasuInspirationCorallia",
//            artCategory: "Verrerie",
//            description: "",
//            details: "",
//            artistID: users[1].id),
//    Artwork(name: "Anomalys",
//            imageName: "GarasuInspirationAnomalys",
//            artCategory: "Verrerie",
//            description: "",
//            details: "",
//            artistID: users[1].id),
//    Artwork(name: "Codex Seraphinianus",
//            imageName: "GarasuInspirationCodexSeraphinianus",
//            artCategory: "Dessin",
//            description: "",
//            details: "",
//            artistID: users[1].id),

   
        details: "",
        artistID: .haruto
    ),
    
    Artwork(
        id: .artworkOeufDeFaberge,
        name: "Oeuf de Fabergé",
        imageName: "GarasuInspirationOeufDeFaberge",
        imageArtisan: "",
        artCategory: "Joaillerie",
        description: "",
        details: "",
        artistID: .haruto
    ),
    
    Artwork(
        id: .artworkCorallia,
        name: "Corallia",
        imageName: "GarasuInspirationCorallia", 
        imageArtisan: "",
        artCategory: "Verrerie",
        description: "",
        details: "",
        artistID: .haruto
    ),
    
    Artwork(
        id: .artworkAnomalys,
        name: "Anomalys",
        imageName: "GarasuInspirationAnomalys", 
        imageArtisan: "",
        artCategory: "Verrerie",
        description: "",
        details: "",
        artistID: .haruto
    ),
    
    Artwork(
        id: .artworkCodexSeraphinianus,
        name: "Codex Seraphinianus",
        imageName: "GarasuInspirationCodexSeraphinianus",
        imageArtisan: "",
        artCategory: "Dessin",
        description: "",
        details: "",
        artistID: .haruto
    ),
    
    Artwork(
        id: .artworkPuebloSaucer,
        name: "Pueblo Saucer",
        imageName: "TierraOcrePuebloSaucer", 
        imageArtisan: "TierraOcre",
        artCategory: "Poterie",
        description: "",
        details: "",
        artistID: .eloise
    ),
    
    Artwork(
        id: .artworkPuebloVase,
        name: "Pueblo Vase",
        imageName: "TierraOcrePuebloPottery",
        imageArtisan: "",
        artCategory: "Poterie",
        description: "TierraOcre",
        details: "",
        artistID: .eloise
    ),
    
    Artwork(
        id: .artworkPuebloPot,
        name: "Pueblo Pot",
        imageName: "TierraOcrePuebloPottery2",
        imageArtisan: "TierraOcre",
        artCategory: "Poterie",
        description: "",
        details: "",
        artistID: .eloise
    ),
    
    Artwork(
        id: .artworkNavajoVase,
        name: "Navajo Vase",
        imageName: "TierraOcreNavajoPottery", 
        imageArtisan: "TierraOcre",
        artCategory: "Poterie",
        description: "",
        details: "",
        artistID: .eloise
    )
]
