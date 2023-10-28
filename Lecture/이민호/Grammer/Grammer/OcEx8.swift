//
//  OcEx8.swift
//  Grammer
//
//  Created by 이민호 on 10/26/23.
//

import Foundation

func exeOcEx8() {
    var students: [Student]? = [Student(name: "Kim", score: 80),
                                Student(name: "Lee", score: 90),
                                Student(name: "Park", score: 85)]
    
    print((students?.reduce(into: 0){ $0 += $1.score } ?? 0) / (students?.count ?? 1))
}

struct Student {
    var name: String
    var score: Int
}
