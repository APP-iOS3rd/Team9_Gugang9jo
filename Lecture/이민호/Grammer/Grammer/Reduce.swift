//
//  Reduce.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

let numArray = [1,2,3,4,5]
var sum = numArray.reduce(0, {(result:Int, next: Int) -> Int in
        return result + next
})

var sum2 = numArray.reduce(0, {(result: Int, next: Int) in
        result + next
})

var sum3 = numArray.reduce(0, {(result, next) in
        result + next
})

var sum4 = numArray.reduce(0, {$0 + $1})




