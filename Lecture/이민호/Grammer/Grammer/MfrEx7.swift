//
//  MfrEx7.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx7() {
    let array = ["a", "b", "c"]
    print(addStars(array: array))
}

func addStars(array: [String]) -> [String] {
    return array.map{ "*\($0)*"}
}
