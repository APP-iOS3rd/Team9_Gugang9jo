//
//  Ex5.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func executeEx5() {
    let beverages = [Beverage.coffee(price: 3000), Beverage.tea(price: 2000), Beverage.juice(price: 2500)]
    printTypeAndPrice(beverages: beverages)
}

enum Beverage {
    case coffee(price: Int)
    case tea(price: Int)
    case juice(price: Int)
}

func printTypeAndPrice(beverages: [Beverage]) {
    for beverage in beverages {
        switch beverage {
        case .coffee(let price):
            print("이 음료는 커피이고 가격은 \(price)원입니다.")
        case .tea(let price):
            print("이 음료는 차이고 가격은 \(price)원입니다.")
        case .juice(let price):
            print("이 음료는 주스이고 가격은 \(price)원입니다.")
        }
    }
}
