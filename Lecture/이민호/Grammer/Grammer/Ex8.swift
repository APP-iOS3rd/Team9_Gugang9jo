//
//  Ex8.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func executeEx8(){
    let colors = [Color.red(r: 255, g: 0, b: 0), Color.green(r: 0, g: 255, b: 0), Color.blue(r: 0, g: 0, b: 255)]
    printColors(colors: colors)
}

enum Color {
    case red(r: Int, g: Int, b: Int)
    case green(r: Int, g: Int, b: Int)
    case blue(r: Int, g: Int, b: Int)
}

func printColors(colors: [Color]) {
    for color in colors {
        switch color {
            case .red(let rgb):
                printRGB("빨강", rgb)
            case .green(let rgb):
                printRGB("파랑", rgb)
            case .blue(let rgb):
                printRGB("초록", rgb)
        }
    }
}

func printRGB(_ color: String, _ rgb: (r: Int, g: Int, b: Int)) {
    print(" 이 색상은 \(color)이고 RGB 값은 \(rgb)입니다.")
}
