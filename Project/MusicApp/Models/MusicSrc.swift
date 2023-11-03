//
//  Track.swift
//  MusicApp
//
//  Created by 이민호 on 2023/11/02.
//

import Foundation

struct MusicSrc: Codable {
    let artist, title, lastWeek, rank: String
    let award: Bool
    let image: String
    let peakPosition, weeksOnChart: String

    enum CodingKeys: String, CodingKey {
        case artist, title
        case lastWeek = "last_week"
        case rank, award, image
        case peakPosition = "peak_position"
        case weeksOnChart = "weeks_on_chart"
    }
}
