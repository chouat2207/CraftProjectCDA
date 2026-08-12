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
    @State var sharedVM: SharedViewModel = SharedViewModel()
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environment(messageService)
                .environment(sharedVM)
        }
    }
}
