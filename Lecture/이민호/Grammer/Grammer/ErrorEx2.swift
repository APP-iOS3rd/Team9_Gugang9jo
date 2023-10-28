//
//  ErrorEx2.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation
import RegexBuilder

func executeErrorEx2() {
    let password = "asdf"
    print(isContainNumber(password))
}

enum PasswordError: Error {
    case inputError
}

func validatePassword(_ password: String) throws {
    if isContainNumber(password) {
        throw PasswordError.inputError
    }
}


func isContainNumber(_ password: String) -> Bool {
    let regex = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$/
    let tmp = password.wholeMatch(of: regex)?.output
    if let result = tmp {
        return true
    } else {
        return false
    }
}

