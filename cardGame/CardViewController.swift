//
//  CardViewController.swift
//  cardGame
//
//  Created by Daniel Thompson on 7/6/17.
//  Copyright © 2017 Daniel Thompson. All rights reserved.
//

import UIKit

class CardViewController: UIView {
    
    @IBOutlet var imageViews: [UIImageView]!
    @IBOutlet weak var label: UILabel!
    
    init(frame: CGRect, card: Card) {
        super.init(frame: frame)
        
        print("making new card view with card: \(card)")
        label.text = String(describing: card.numericValue)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
}
