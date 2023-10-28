//
//  Ex4.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func executeEx4() {
    let result = calculate(num1: 10, num2: 5, op: .divide)

    print("결과는 \(result)입니다.")      //결과는 2입니다.
    print("결과는 \( calculate(num1: 10, num2: 5, op: .add) )입니다.")        //결과는 15입니다.
    print("결과는 \( calculate(num1: 10, num2: 5, op: .subtract) )입니다.")   //결과는 5입니다.
    print("결과는 \( calculate(num1: 10, num2: 5, op: .multiply) )입니다.")   //결과는 50입니다.
}

enum Operator {
    case add
    case subtract
    case multiply
    case divide
}

func calculate(num1: Int, num2: Int, op: Operator) -> Int {
    switch op {
    case .add:
        return num1 + num2
    case .subtract:
        return num1 - num2
    case.multiply:
        return num1 * num2
    default:
        return num1 / num2
    }
}
