//
//  MfrEx5.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx5() {
    let array = ["a", "b", "a", "c", "b", "d"]
    print( countElements(array: array) )
    // print(countElements(array: array))
}

func countElements(array: [String]) -> [String: Int] {
    var dic = [String: Int]()
    array.map({(value) in
        dic[value, default: 0] += 1
    })
    
    return dic
}

func countElements3(array: [String]) -> [String: Int] {
    return array.reduce(into: [:]) { (result, element) in
        result[element, default: 0] += 1
    }
}

func countElements2(array: [String]) -> [String: Int] {
    return array.reduce(into: [:]){ $0[$1, default: 0] += 1 }
}



