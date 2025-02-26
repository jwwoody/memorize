//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Jeffrey Woodbury on 2/26/25.
//

// Model Class

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
