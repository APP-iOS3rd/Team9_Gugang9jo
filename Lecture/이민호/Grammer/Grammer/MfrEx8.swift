//
//  MfrEx8.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx8() {
    let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    print(sumOfMultiplesOfThree(array: array))
}

func sumOfMultiplesOfThree(array: [Int]) -> Int {
    return array.filter{ $0 % 3 == 0}
        .reduce(0, +)
}
