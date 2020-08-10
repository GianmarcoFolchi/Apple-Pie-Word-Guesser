//
//  Game.swift
//  apple pie
//
//  Created by HS Lab10 on 1/21/20.
//  Copyright © 2020 dsamac. All rights reserved.
//

import Foundation


struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    mutating func playerGuesses(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
            }
        }
    var formattedWord: String {
             var guessedWord = ""
             for letter in word {
                 if guessedLetters.contains(letter){
                     guessedWord += "\(letter)"
                 } else {
                     guessedWord += "_"
                 }
             }
             return guessedWord
    }
}
