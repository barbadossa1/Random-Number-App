//
//  RandomNumbers.swift
//  Random Number App
//
//  Created by VK on 27.07.2022.
//

import Foundation

struct RandomNumber {
    let minNumber: Int
    let maxNumber: Int
    
    var getRandomNumber: Int {
        Int.random(in: minNumber...maxNumber)
    }
}
