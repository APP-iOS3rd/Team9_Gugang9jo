//
//  Map.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func doubleNum (_ numbers: [Int]) -> [Int] {
    return numbers.map({ (num: Int) -> Int in
        return num * 2
    })
}

func doubleNum2 (_ numbers: [Int]) -> [Int] {
    return numbers.map({ $0 * 2 })
}

func doubleNum3 (_ numbers: [Int]) -> [Int] {
    return numbers.map() { $0 * 2 }
}

func doubleNum4 (_ numbers: [Int]) -> [Int] {
    return numbers.map { $0 * 2 }
}

// 클로저 사용
let doubleNumber: (Int) -> Int = { $0 * 2 }
let numbers = [1,2,3,4,5]
let result = numbers.map(doubleNumber)

// map 옵셔널 -> compactMap
let optionalNums = [1, nil, 3, nil, 5]
let result2 = optionalNums.compactMap{ $0 }
