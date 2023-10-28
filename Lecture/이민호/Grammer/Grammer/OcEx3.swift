//
//  OcEx3.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeOcEx3() {
    var numbers: [Int]? = [1, 2, 3]
    
    if let result = numbers?[0] {
        print(result + 10)
    }
    
    print((numbers?[0] ?? 0) + 10)
    
}
