//
//  OcEx1.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeOcEx1() {
    var human: Human? = Human(name: "Kim", age: 25)
    print(human?.name ?? "")
    print(human?.age ?? 0)
}

struct Human {
    var name: String?
    var age: Int?
}


