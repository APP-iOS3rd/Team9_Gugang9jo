//
//  MfrEx3.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx3() {
    let dictionary = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]
    print(sumOfKeysWithEvenValues(dictionary: dictionary))
}

func sumOfKeysWithEvenValues(dictionary: [String: Int]) -> Int {
    return dictionary.values.filter{ $0 % 2 == 0}
            .reduce(0, +)
}

func sumOfKeysWithEvenValue(dictionary: [String: Int]) -> String {
    return dictionary.filter { $0.value % 2 == 0}
        .map { $0.key }
        .joined(separator: "")
}
