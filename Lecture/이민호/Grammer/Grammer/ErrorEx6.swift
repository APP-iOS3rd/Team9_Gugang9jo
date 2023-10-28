//
//  ErrorEx3.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

enum ParsingErrors: Error {
    case invalidJSON
}

func executeErrorEx6() {
    let jsonString = """
    {
        "name": "John",
        "age": 25,
        "hobbies": ["reading", "coding", "gaming"]
    }
    """
    do {
        let dictionary = try parseJson(jsonString)
        print(dictionary)
    } catch ParsingErrors.invalidJSON {
        print("Invalid JSON format")
    } catch {
        print("error")
    }
}

func parseJson(_ jsonString: String) throws -> [String: Any] {
    if let data = jsonString.data(using: .utf8) {
        if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
            return json
        }
    }
    throw ParsingErrors.invalidJSON
}

