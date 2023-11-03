
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let music = try? JSONDecoder().decode(Music.self, from: jsonData)

import Foundation

// MARK: - MusicElement
struct MusicElement: Codable {
    let name, duration, playcount, listeners: String
    let mbid: String
    let url: String
    let streamable: Streamable
    let artist: Artist
    let image: [Asset]
}

// MARK: - Artist
struct Artist: Codable {
    let name, mbid: String
    let url: String
}

// MARK: - Image
struct Asset: Codable {
    let text: String
    let size: Size

    enum CodingKeys: String, CodingKey {
        case text = "#text"
        case size
    }
}


enum Size: String, Codable {
    case extralarge = "extralarge"
    case large = "large"
    case medium = "medium"
    case small = "small"
}

// MARK: - Streamable
struct Streamable: Codable {
    let text, fulltrack: String

    enum CodingKeys: String, CodingKey {
        case text = "#text"
        case fulltrack
    }
}

typealias Music = [MusicElement]
