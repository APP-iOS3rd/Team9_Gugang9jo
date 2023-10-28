//
//  OcEx5.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeOcEx5() {
    var animal: Animall? = Dog()
    animal?.speak()
}

class Animall {
    func speak() {
        print("...")
    }
}

class Dog: Animall {
    override func speak() {
        print("Woof")
    }
}
