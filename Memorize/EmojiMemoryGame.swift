//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 张奎 on 2023/7/3.
//

import SwiftUI

/**
 * ViewModel
 */
class EmojiMemoryGame {
    static let emojis = ["⚽️", "🏀", "⚾️", "🎱", "🥎", "🎾", "🏐", "🏉", "🪀", "🏓", "🏸", "🏒", "🏑", "🥍", "🏏"]
    
    static func createMemoryGame() -> MemoryGame<String>  {
        MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: {pairIndex in emojis[pairIndex]})
    }

    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
