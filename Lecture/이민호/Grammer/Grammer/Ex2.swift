//
//  Ex1.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func excuteEx2() {
    let animals = [Animal.dog(name: "바둑이"), Animal.cat(name: "나비"), Animal.bird(name: "짹짹이")]
    checkAnimal(animals: animals)
}

enum Animal {
    case dog(name: String)
    case cat(name: String)
    case bird(name: String)
}

func checkAnimal(animals: [Animal]) {
    for animal in animals {
        switch animal {
        case .dog(let name):
            print("이 동물은 개이고 이름은 \(name)입니다.")
        case .cat(let name):
            print("이 동물은 고양이이고 이름은 \(name)입니다.")
        case .bird(let name):
            print("이 동물은 새이고 이름은 \(name)입니다.")
        }
    }
}
