//
//  MfrEx2.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeMfrEx2() {
    let string = "Hello World"
    print(reverseWithoutVowels(string: string))
}

func reverseWithoutVowels(string: String) -> String {
    let vowel = "aeiouAEIOU"
    
    return String(string.filter{ !vowel.contains($0) }
                .uppercased()
                .reversed()
            )
}
