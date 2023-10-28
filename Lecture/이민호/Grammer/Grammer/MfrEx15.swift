//
//  MfrEx15.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeMfrEx15() {
    let word = "sWifT"
    let uppercasedWord = uppercase(word)
    print(uppercasedWord)       // "SWIFT"
}

func uppercase(_ word: String) -> String {
    word.map {(char) in
        let value = char.isUppercase ? char.lowercased() : char.uppercased()
        return value
    }
    .joined(separator: "")
}
