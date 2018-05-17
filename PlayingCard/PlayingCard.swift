//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by sysadmin on 5/12/18.
//  Copyright © 2018 sysadmin. All rights reserved.
//

import Foundation
struct PlayingCard : CustomDebugStringConvertible
{
    var debugDescription: String { return "\(rank)\(suit)" }
    
    var suit: Suit
    var rank: Rank
    
    enum Suit: String, CustomDebugStringConvertible {
        var debugDescription: String{ return "suit"}
        
        case spades = "♠️"
        case hearts = "♥️"
        case diamonds = "♦️"
        case clubs = "♣️"
        
        static var all = [Suit.spades, .hearts, .diamonds, .clubs]
    }
    
    enum Rank : CustomDebugStringConvertible{
        
        var debugDescription: String {return "rank"}
        
        case ace
        case face(String) // for J Q K
        case numeric(Int) // 1 to 10
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
        }
        
        static var all: [Rank]{
            var allRanks = [Rank.ace]
            for pips in 2...10{
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"), .face("Q"), .face("K")]
            return allRanks
        }
    }
}
