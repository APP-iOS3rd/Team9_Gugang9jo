//
//  Calculator.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/10/31.
//

import Foundation

class Calculator {
    let op = Operator()
    var numQue: [Int] = []
    var opQue: [String] = []
    
    func getCalculate( _ last: Int, _ total: Int, _ op: String) -> Int {
        switch op {
            case "+":
                return last + total
            case "-":
                return last - total
            case "*":
                return last * total
            case "/":
                return last / total
            default:
                return 0
        }
    }
    
    
    func inputNumber(_ inputNum: Int, _ total: Int) -> Int {
        if inputNum == 0 {
            return total * 10
        }
        
        if inputNum == 100 {
            return total * 100
        }
        
        return total * 10 + inputNum
    }
    
    
}

