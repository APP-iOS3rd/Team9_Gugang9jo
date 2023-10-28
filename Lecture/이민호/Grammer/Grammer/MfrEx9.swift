//
//  MfrEx9.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx9() {
    let array = ["a", "b", "c"]
    print(repeatTwice(array: array))
}

func repeatTwice(array: [String]) -> [String] {
    array.map{ $0 + $0 }
}
