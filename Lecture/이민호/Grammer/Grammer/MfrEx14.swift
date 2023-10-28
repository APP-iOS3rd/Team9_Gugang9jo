//
//  MfrEx14.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeMfrEx14() {
    let numbers = [1, 3, 4, 2, 5]
    let reversedNumbers = reverse(numbers)
    print(reversedNumbers)      // [5, 2, 4, 3, 1]
}

func reverse(_ numbers: [Int]) -> [Int] {
    return numbers.reduce(into: []) { $0.insert($1, at: 0) }            
}


// { [$1] + $0 }: reduce(into:) 클로저 내부에서 각 요소($1)를 새 배열의 맨 앞에 추가합니다.
func reverse2(_ numbers: [Int]) -> [Int] {
    return numbers.reduce(into: []) { [$1] + $0 }
}
