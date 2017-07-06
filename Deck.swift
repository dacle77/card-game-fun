//
//  Deck.swift
//  cardGame
//
//  Created by Daniel Thompson on 7/6/17.
//  Copyright © 2017 Daniel Thompson. All rights reserved.
//

import Foundation

class Deck {
    var cards = Array<Card>()//OP masters
    init(){
        populate()
    }
    private func populate(){
        let suits = ["spades", "hearts", "diamonds", "clubs"]
        let values = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
        for suit in suits{
            for i in 0..<values.count{
                cards.append(Card(value: values[i], suit: suit, numericValue: i+1))
            }
        }
    }
    func deal()->Card?{
        let card = cards.removeLast()
        return card
    }
    
    func shuffle() {
        var randomIdx1: Int
        var randomIdx2: Int
        
        for _ in 0..<100 {
            randomIdx1 = Int(arc4random_uniform(UInt32(cards.count)))
            randomIdx2 = Int(arc4random_uniform(UInt32(cards.count)))
            
            let temp = cards[randomIdx1]
            cards[randomIdx1] = cards[randomIdx2]
            cards[randomIdx2] = temp
        }
        
    }
    
    func viewDeck(){
        for card in cards {
            print("suit: \(card.suit), value: \(card.value)")
        }
    }
    
    func reset(){
        cards = Array<Card>()
        populate()
    }
    
}
