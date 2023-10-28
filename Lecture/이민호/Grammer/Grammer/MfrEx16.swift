//
//  MfrEx16.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeMfrEx16() {
    let sentence = "This is a test"
    let noSpaceSentence = removeSpaces2(sentence)
    print(noSpaceSentence)      // "Thisisatest"
}

func removeSpaces(_ sentence: String) -> String {
    sentence.filter { $0 != " "}
        .map { String($0) }
        .joined(separator: "")
}

func removeSpaces2(_ sentence: String) -> String {
    sentence.replacingOccurrences(of: " ", with: "")
}

func removeSpaces3(_ sentence: String) -> String {
    sentence.map{ $0.isWhitespace ? "" : String($0) }.joined()
}

func removeSpaces4(_ sentence: String) -> String {
    sentence.filter{ !$0.isWhitespace }
}
