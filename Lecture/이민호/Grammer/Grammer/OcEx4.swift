//
//  OcEx4.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeOcEx4() {
    var students: [String: Int]? = ["Kim": 90, "Lee": 80, "Park": 85]
    if let student = students?["Lee"] {
        print(student + 1)
    }
    
    let student = students?["Lee"] ?? 0
    print(student + 1)
}
