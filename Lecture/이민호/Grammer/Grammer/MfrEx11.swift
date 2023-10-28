//
//  MfrEx11.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeMfrEx11() {
    let word = "eiApp"
    let vowelCount = countVowels(word)
    print(vowelCount) // 1
}

func countVowels(_ word: String) -> Int {
    return word.filter {"aeiou".contains( $0.lowercased() )}.count
}
