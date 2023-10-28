//
//  MfrEx4.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx4() {
    let array = [10, 20, 30, 40]    
    print(differenceBetweenMaxAndMin2(array: array))
}

func differenceBetweenMaxAndMin(array: [Int]) -> Int {
    let maxMin = [array.max(), array.min()]
    return abs(array.filter{ maxMin.contains($0) }
        .reduce(0) { result, next in
            abs(result) - next
        })
}

func differenceBetweenMaxAndMin2(array: [Int]) -> Int {
    // max는 함수이다, 두 수중 더 큰 값을 반환한다.
    let max = array.reduce(Int.min, max)
    // min은 함수이다. 두 수중 더 작은 값을 반환한다.
    let min = array.reduce(Int.max, min)
    return max - min
}



