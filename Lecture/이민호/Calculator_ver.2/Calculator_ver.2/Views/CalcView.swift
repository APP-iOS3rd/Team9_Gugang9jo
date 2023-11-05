//
//  CalcView.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/10/31.
//

import SwiftUI

struct CalcView: View {
    private var gridItems = Array(repeating: GridItem(.flexible(), spacing: 5), count: 4)
    
    var body: some View {
        VStack {
            LazyVGrid(columns: gridItems, spacing: 5) {
                CellContent(index: "+/-")
                CellContent(index: "+/-")
                CellContent(index: "+/-")
                CellContent(index: "+/-")
                CellContent(index: "+/-")
                CellContent(index: "+/-")
                CellContent(index: "+/-")
                CellContent(index: "+/-")
                CellContent(index: "+/-")
                CellContent(index: "+/-")                
                
            }
            .padding(5)
        }
    }
}

struct CellContent: View {
    var index: String
    
    var body: some View {
        Button(index) {
            
        }
        .frame(width: 90, height: 90)
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(8)
        .font(.system(.largeTitle))
    }
}

struct CalcView_Previews: PreviewProvider {
    static var previews: some View {
        CalcView()
    }
}
