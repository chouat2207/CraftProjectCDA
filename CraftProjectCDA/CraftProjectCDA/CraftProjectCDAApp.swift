//
//  CraftProjectCDAApp.swift
//  CraftProjectCDA
//
//  Created by Apprenant 77 on 23/07/2026.
//

import SwiftUI

@main
struct CraftProjectCDAApp: App {
    @State var messageService: MessageService = MessageService()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(messageService)
        }
    }
}
