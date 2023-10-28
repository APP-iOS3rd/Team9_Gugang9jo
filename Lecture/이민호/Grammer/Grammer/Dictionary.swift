//
//  Dictionary.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

struct Dictionary {
    func getMaxValue(_ dic: [String : Int]) -> Int? {
        let maxValue = dic.values.max()
        if let result = dic.values.filter({$0 == maxValue}).first {
            return result
        }
        return nil
    }
    
    func changeKeyValue<T>(_ dic: [T : T]) -> [T : T] {
        var newDic = [T : T]()
        for (key, value) in dic {
            newDic[value] = key
        }
        return newDic
    }
    
    func findEvenValue(_ dic: [String: Int]) -> [String: Int] {
        dic.filter { _, value in
            return value % 2 == 0
        }
    }
}
