//
//  Ex6.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func executeEx6() {
    let currentPosition = (x: 0, y: 0)

    var nextPosition = move(position: currentPosition, direction: .right)
    print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (1, 0)입니다.

    nextPosition = move(position: currentPosition, direction: .left)
    print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (-1, 0)입니다.

    nextPosition = move(position: currentPosition, direction: .up)
    print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, 1)입니다.

    nextPosition = move(position: currentPosition, direction: .down)
    print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, -1)입니다.
}

enum Direction {
    case right
    case left
    case down
    case up
}

func move(position: (x: Int, y: Int), direction: Direction) -> (x: Int, y: Int) {
    let dx = [1, -1, 0, 0]
    let dy = [0, 0, -1, 1]
    var d = -1
    
    switch direction {
    case .down:
        d = 2
    case .up:
        d = 3
    case .left:
        d = 1
    case .right:
        d = 0
    }
    
    let nx = position.x + dx[d]
    let ny = position.y + dy[d]
    return (nx, ny)
}
