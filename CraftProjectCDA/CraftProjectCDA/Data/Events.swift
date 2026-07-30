//
//  Untitled.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 30/07/2026.
//
import Foundation
import MapKit

let events : [Event] = [
                       Event(name: "EN RÉSONNANCES", imageName: "", postDate: "01/02/2026", participantsID: [users[0].id, users[3].id, users[12].id], authorID: users[2].id, description: "Brigitte MARIONNEAU et Gisèle BUTHOD-GARÇON présentent leurs œuvres 'en résonnances' au musée Bernard Palissy à Lacapelle-Biron (47) du 23 mai au 4 octobre 2026", artCategory: "", adress: "Lot-et-Garonne", location: CLLocationCoordinate2D(latitude: 44.3666, longitude: 0.7832), startingDate: "23/05/2026", endingDate: "04/10/2026"), 
                        
                        Event(name: "EXPO 'DEPUIS 20 ANS'", imageName: "", postDate: "08/03/2026", participantsID: [users[1].id, users[4].id, users[11].id], authorID: users[3].id, description: " Cette exposition sera l’occasion de mettre en valeur le travail de dix céramistes qui ont exposé au Couvent durant ces 20 dernières années et qui ont marqué le public par la qualité et l’originalité de leurs œuvres.",
                            artCategory: "", adress: "Yonne", location: CLLocationCoordinate2D(latitude: 47.7740, longitude: 3.6299), startingDate: "04/07/2026", endingDate: "30/08/2026"), 
                        
                        Event(name: "TERRA DINAN - MARCHÉ DE CÉRAMIQUES", imageName: "", postDate: "12/04/2026", participantsID: [users[5].id, users[4].id, users[8].id], authorID: users[2].id, description: "La première édition de l’Escale Céramique, organisée par l’association Argile Bretagne, se tiendra à Dinan (Côtes-d’Armor) les 1er et 2 août prochains.", artCategory: "", adress: "Côtes-d'Armor", location: CLLocationCoordinate2D(latitude: 48.4528, longitude: -3.0286), startingDate: "01/08/2026", endingDate: "02/08/2026"),
                       Event(name: "FESTIVAL DE LA CÉRAMIQUE D'ANDUZE", imageName: "", postDate: "13/05/2026", participantsID: [users[2].id, users[3].id, users[4].id, users[6].id], authorID: users[8].id, description: "L'association Planète Terre organise sa 22ème édition du FESTIVAL DE LA CERAMIQUE D'ANDUZE, du vendredi 7 au dimanche 9 août 2026 (9h-19h) Cette grande fête de la Terre se renouvelle chaque année pour proposer à ses visiteurs toujours aussi nombreux, des visions différentes de la création céramique.", artCategory: "", adress: "Gard", location:  CLLocationCoordinate2D(latitude: 43.9675, longitude: 4.2152), startingDate: "07/08/2026", endingDate: "09/08/2026"), 
                       Event(name: "ART ET PASSION DU BOIS", imageName: "", postDate: "05/01/2026", participantsID: [users[5].id, users[7].id, users[8].id, users[6].id], authorID: users[9].id, description: "Art et Passion du bois 2026, c'est sur le thème : Jeux, jouets et marionnettes du monde avec expositions thématiques, vente métiers d'art, stages, concours de tournage, sculpture monumentale en tournage, conférences, ateliers et théâtre de marionnettes, magie, espaces jeux en bois, rallye de chariottes, animation échiquéenne, mur digital, concert orgues de barbarie,", artCategory: "", adress: "Charente", location: CLLocationCoordinate2D(latitude: 45.7889, longitude: 0.0797), startingDate: "25/08/2026", endingDate: "30/08/2026")
]
