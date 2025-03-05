//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jeffrey Woodbury on 2/26/25.
//
// ViewModel

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["👻", "🎃", "🕷️", "😈", "🧟‍♂️", "🕸️", "🦇", "💀", "☠️", "🧛", "🧙", "👀", "✌️", "🫥", "👽", "🤖"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 12) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            }
                return "⁉"
            }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
        objectWillChange.send()
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}


