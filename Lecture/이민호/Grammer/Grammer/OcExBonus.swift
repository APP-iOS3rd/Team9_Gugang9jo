//
//  OcExBonus.swift
//  Grammer
//
//  Created by 이민호 on 10/26/23.
//

import Foundation

func exeOcBonus() {
    var dictionary: [String: String?]? = ["name": "Lee", "age": "25"]
    print( dictionary?["name"]??.count ?? 0 )
}
