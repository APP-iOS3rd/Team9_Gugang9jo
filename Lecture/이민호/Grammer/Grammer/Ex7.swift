//
//  Ex7.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func executeEx7() {
    let dice = rollDice()
}

enum Dice {
    case one
    case two
    case three
    case four
    case five
    case six
}

func rollDice() {
    let randomNum = Int.random(in: 1...6)
    var dice : Dice
    
    switch randomNum {
        case 1:
            dice = .one
        case 2:
            dice = .two
        case 3:
            dice = .three
        case 4:
            dice = .four
        case 5:
            dice = .five
        case 6:
            dice = .six
        default:
            fatalError("예상치 못한 랜덤 숫자: \(randomNum)")
    }
    
    print("주사위의 면은 \(dice)입니다.")
}
