//
//  ErrorEx6+.swift
//  Grammer
//
//  Created by 이민호 on 10/24/23.
//

import Foundation

func executeErrorEx6Plus() {
    let jsonString = """
    {
        "name": "John",
        "age": 25,
        "hobbies": ["reading", "coding", "gaming"]
    }
    """
    
    do {
        let person = try parseJSON(jsonString)
        print(person)
    } catch ParsingError.loadError {
        print("loadError")
    } catch ParsingError.parseError {
        print("parseError")
    } catch {
        print("invalidJSON")
    }
}

enum ParsingError: Error {
    case loadError
    case parseError
}

struct Person: Codable {
    let name: String
    let age: Int
    let hobbies: [String]
}

func parseJSON(_ jsonString: String) throws -> [String: Any] {
    guard let data = jsonString.data(using: .utf8) else {
        throw ParsingError.loadError
    }
                                    
    do {
        let decoder = JSONDecoder()
        let person = try decoder.decode(Person.self, from: data)
        return personToDic(person)
    } catch {
        throw ParsingError.parseError
    }
}
         
func personToDic(_ person: Person) -> [String: Any] {
    var dictionary: [String: Any] = [:]
    dictionary["name"] = person.name
    dictionary["age"] = person.age
    dictionary["hobbies"] = person.hobbies
    return dictionary
}
