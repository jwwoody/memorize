//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Jeffrey Woodbury on 9/9/24.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
