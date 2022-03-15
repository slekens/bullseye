//
//  Game.swift
//  Bullseye
//
//  Created by Abraham Abreu on 15/03/22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var totalScore = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
}
