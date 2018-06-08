//
//  Concentration.swift
//  Concentration
//
//  Created by XY on 2018/6/8.
//  Copyright © 2018年 jy. All rights reserved.
//

import Foundation
class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        }else{
            cards[index].isFaceUp = true
        }
    }
    init(numberOfPairsOfCards: Int) {
        for _ in 0...numberOfPairsOfCards{
            let card = Card()
            cards += [card, card]
        }
        //TODO: 洗牌
    }
}
