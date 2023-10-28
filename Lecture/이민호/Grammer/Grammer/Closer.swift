//
//  Closer.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func sample(closer: (String, String) -> String) -> String {
    return closer("c", "d")
}

// closer의 축약 과정
let ex1 = sample(closer: {(a: String, b: String) -> String in a + b })

let ex2 = sample(closer: {(a: String, b: String) in a + b})

let ex3 = sample(closer: { $0 + $1 })
