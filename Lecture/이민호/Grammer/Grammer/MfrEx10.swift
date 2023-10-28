//
//  MfrEx10.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx10() {
    let array = ["apple", "banana", "cherry"]
    print(lengthsOfElements(array: array))
}

func lengthsOfElements(array: [String]) -> [Int] {
    return array.map{ $0.count }
}
