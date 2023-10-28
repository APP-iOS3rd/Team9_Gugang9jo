//
//  MapFilterReduceEx1.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx1() {
    let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let result = sumOfSquaresOfOdds(array: array)
    print(result)
}

func sumOfSquaresOfOdds(array: [Int]) -> Int {
    return array.filter { $0 % 2 != 0 }
                .map { $0 * $0 }
                .reduce(0, +)
}
