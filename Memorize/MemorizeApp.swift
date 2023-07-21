//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 张奎 on 2023/7/2.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(game)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
