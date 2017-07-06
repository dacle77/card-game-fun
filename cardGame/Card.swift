//
//  Card.swift
//  cardGame
//
//  Created by Daniel Thompson on 7/6/17.
//  Copyright © 2017 Daniel Thompson. All rights reserved.
//

import Foundation

struct Card: Equatable {
    let value: String
    let suit: String
    let numericValue: Int
    var color: String {
        get{
            if suit == "diamonds" || suit == "hearts" {
                return "red"}
            else{
                return "black"}
        }
    }
    
    public static func ==(lhs: Card, rhs: Card) -> Bool {
        if lhs.suit == rhs.suit && lhs.value == rhs.value {
            return true
        }
        return false
    }
}
