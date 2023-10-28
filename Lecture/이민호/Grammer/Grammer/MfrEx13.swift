//
//  MfrEx13.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeMfrEx13() {
    let sentence = "this is a test"
    let capitalizedSentence = capitalize(sentence)
    print(capitalizedSentence)
}

func capitalize(_ sentence: String) -> String {
    return sentence.split(separator: " ")
        .map {$0.prefix(1).uppercased() + $0.dropFirst().lowercased()}
        .joined(separator: " ")
}
