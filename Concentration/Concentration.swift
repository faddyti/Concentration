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
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                // 只有一张牌翻开，判断是否可以和它匹配
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            }else{
                // 没有翻开的牌，或者是翻开了两张牌的情况
                // 所有的牌都扣下
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
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
