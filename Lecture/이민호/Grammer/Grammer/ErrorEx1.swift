//
//  Ex1.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

enum TemperatureError: Error {
    case  invalidTemperature
}

func executeErrorEx1() {
    do {
        let fahrenheit = try celsiusToFahrenheit(-300)
        print(fahrenheit)
    } catch TemperatureError.invalidTemperature {
        print("올바르지 않은 온도")
    } catch {
        print("알 수 없는 오류: \(error)")
    }
}


func celsiusToFahrenheit(_ temperature: Double) throws -> Double {
    if temperature < -273.15 {
        throw TemperatureError.invalidTemperature
    } else {
        return (temperature * (9 / 5)) + 32
    }
}
