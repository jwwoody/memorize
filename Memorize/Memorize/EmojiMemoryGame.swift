//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jeffrey Woodbury on 2/26/25.
//
// ViewModel

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

    private static let emojis = ["👻", "🎃", "🕷️", "😈", "🧟‍♂️", "🕸️", "🦇", "💀", "☠️", "🧛", "🧙", "👀", "✌️", "🫥", "👽", "🤖"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame(numberOfPairsOfCards: 4) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            }
                return "⁉"
            }
    }
        
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    var color: Color {
        .orange
    }
    
    var score: Int {
        model.score
    }
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
        objectWillChange.send()
    }
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}


