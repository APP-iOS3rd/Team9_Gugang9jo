//
//  OcEx6.swift
//  Grammer
//
//  Created by 이민호 on 10/25/23.
//

import Foundation

func exeOcEx6() {
    var matrix: Matrix? = Matrix(elements: [[1, 2, 3], [4, 5, 6]])
    print(matrix?.transpose().elements ?? [[Int]]())
}

struct Matrix {
    var elements: [[Int]]

    func transpose() -> Matrix {
        var result = [[Int]]()
        for i in 0..<elements[0].count {
            var row = [Int]()
            for j in 0..<elements.count {
                row.append(elements[j][i])
            }
            result.append(row)
        }
        return Matrix(elements: result)
    }
}
