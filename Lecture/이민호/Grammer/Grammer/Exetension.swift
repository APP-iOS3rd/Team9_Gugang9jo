//
//  Exetension.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

extension Int {
    // 연산 프로퍼티
    var isEven: Bool {
        return self % 2 == 0
    }
    
    // 메소드 확장
    func multiply(by n: Int) -> Int {
         return self * n
    }
}
