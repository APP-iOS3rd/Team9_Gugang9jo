//
//  Buttons.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/10/31.
//

import SwiftUI

extension Button {
    func blackStyle() -> some View {
        self
            .foregroundColor(Color.white)
            .frame(maxWidth: 100, maxHeight: 100)
            .background(Color.black)
    }
    
    func grayStyle() -> some View {
        self
            .frame(maxWidth: 100, maxHeight: 100)
            .background(Color(red: 100/255, green: 100/255, blue: 100/255))
            .foregroundColor(.white)
    }
    
    func orangeStyle() -> some View {
        self
            .foregroundColor(Color.white)
            .frame(maxWidth: 100, maxHeight: 100)
            .background(Color.orange)            
    }
}
