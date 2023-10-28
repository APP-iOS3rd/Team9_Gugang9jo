//
//  Set.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

struct MySet {
    func intersect(_ setA: Set<Int>, _ setB: Set<Int>) -> [Int] {
        return setA.intersection(setB).map { $0 }.sorted()
    }
    
    func unite<T: Comparable>(_ setA: Set<T>, _ setB: Set<T>) -> [T] {
        return setA.union(setB).map { $0 }.sorted()
    }
    
    func subtract<T: Comparable>(_ setA: Set<T>, _ setB: Set<T>) -> [T] {
        return setA.subtracting(setB).map { $0 }.sorted()
    }
    func isDisJoint<T: Comparable>(_ setA: Set<T>, _ setB: Set<T>) -> Bool {
        let intersect = setA.intersection(setB)
        return intersect.count == 0
    }
    
    func combinations(_ elements: [Int], _ k: Int, _ current: [Int] = [], _ startIndex: Int = 0, _ result: inout [[Int]]) {
        if current.count == k {
            result.append(current)
            return
        }

        for i in startIndex..<elements.count {
            var newCurrent = current
            newCurrent.append(elements[i])
            combinations(elements, k, newCurrent, i + 1, &result)
        }
    }
    
    func generateSubsets<T>(_ elements: [T]) -> [[T]] {
        var subsets: [[T]] = [[]]

        for element in elements {
            let newSubsets = subsets.map { subset -> [T] in
                var newSubset = subset
                newSubset.append(element)
                return newSubset
            }
            subsets.append(contentsOf: newSubsets)
        }
        return subsets
    }
}

