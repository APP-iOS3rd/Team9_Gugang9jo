//
//  ex.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/10/31.
//

import SwiftUI

struct ex: View {
    var body: some View {
        VStack {
            Text("0")
                .font(.system(size: 50))
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
                .background(Color.gray)
                .foregroundColor(.white)
            
            LazyVGrid(columns: [
                GridItem(.flexible(minimum: 0, maximum: .infinity), spacing: 10),
                GridItem(.flexible(minimum: 0, maximum: .infinity), spacing: 10),
                GridItem(.flexible(minimum: 0, maximum: .infinity), spacing: 10),
                GridItem(.flexible(minimum: 0, maximum: .infinity), spacing: 10)
            ], spacing: 10, content: {
                ForEach(["7", "8", "9", "+", "4", "5", "6", "-", "1", "2", "3", "*", "C", "0", "=", "/"], id: \.self) { buttonTitle in
                    Button(buttonTitle) {
                        // Button action here
                    }
                }
            })
        }
    }
}

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 30))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.orange)
            .foregroundColor(.white)
    }
}

struct ex_Previews: PreviewProvider {
    static var previews: some View {
        ex()
    }
}
