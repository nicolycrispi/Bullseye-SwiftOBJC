//
//  Game.swift
//  Bullseye
//
//  Created by Nicoly Crispi on 17/12/21.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int{
        let difference = abs(target - sliderValue)
        let bonus: Int
        if difference == 0 {
            bonus = 100
        } else if difference <= 2 {
            bonus = 50
        } else {
            bonus = 0
        }
    return 100 - difference
}
    
    mutating func startNewRound (points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
}

