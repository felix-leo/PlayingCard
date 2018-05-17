//
//  ViewController.swift
//  PlayingCard
//
//  Created by sysadmin on 5/12/18.
//  Copyright © 2018 sysadmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        var deck = PlayingCardDeck()
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        super.viewDidLoad()
        for _ in 1...10 {
            if let card = deck.draw(){
                print("\(card)")
            }
        }
    }

} 

