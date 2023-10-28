//
//  MfrEx12.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeMfrEx12() {
    let word = "Hello2World!!"
    let alphabetCount = countAlphabets(word)
    if let result = alphabetCount {
        print(result)
    }  // ["e": 1, "o": 2, "r": 1, "H": 1, "W": 1, "d": 1, "l": 3]
}

func countAlphabets(_ word: String) -> [String : Int]? {
    let alphabets = CharacterSet.letters
    
    guard word.count > 0 else { return nil }
    return word.unicodeScalars.filter {alphabets.contains($0)}
        .reduce(into: [:]) { $0[String($1), default: 0] += 1}
}

func countAlphabets2(_ word: String) -> [Character : Int]? {
    guard word.count > 0 else { return nil }
    return word.filter {$0.isLetter}
        .reduce(into: [:]) { $0[$1, default: 0] += 1}
}
