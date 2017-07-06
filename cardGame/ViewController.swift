//
//  ViewController.swift
//  cardGame
//
//  Created by Daniel Thompson on 7/6/17.
//  Copyright © 2017 Daniel Thompson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mainDeck: Deck?
    var player1: Player?
    @IBOutlet weak var cardArea: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        mainDeck = Deck()
        player1 = Player(name: "James", toDraw: 1, deck: mainDeck!)
        let card1 = player1?.hand[0]
        
        let newCardView = CardViewController(frame: CGRect(), card: card1!)
        
        cardArea.addSubview(newCardView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func drawCard(_ sender: Any) {
        let card = player1?.draw(from: mainDeck!)
        print(card)
    }
    

}

