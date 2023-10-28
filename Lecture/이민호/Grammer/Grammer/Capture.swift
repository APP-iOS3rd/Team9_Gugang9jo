//
//  Capture.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func exeCapture() {
    let incrementByTen = makeIncrementer(forIncrement: 10)

    print(incrementByTen())
    // returns a value of 10
    print(incrementByTen())
    // returns a value of 20
    print(incrementByTen())
    // returns a value of 30
}

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

//참조: https://velog.io/@kimdo2297/클로져-캡쳐에-대해서-about-closure-capture
