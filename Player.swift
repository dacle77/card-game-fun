//
//  Player.swift
//  cardGame
//
//  Created by Daniel Thompson on 7/6/17.
//  Copyright © 2017 Daniel Thompson. All rights reserved.
//

import Foundation

class Player {
    var hand = Array<Card>()
    let name: String
    
    init(name: String, toDraw: Int, deck: Deck) {
        self.name = name
        for _ in 0..<toDraw{
            print(draw(from: deck))
        }
    }
    
    func draw(from deck: Deck)->String{
        if let newCard = deck.deal(){
            hand.append(newCard)
            return newCard.value
        }
        return "Deck is empty"
    }
    
    func discard(card: Card){
        for i in 0..<hand.count {
            if card == hand[i] {
                hand.remove(at: i)
            }
        }
        print("card wasn't in hand...")
    }
}
