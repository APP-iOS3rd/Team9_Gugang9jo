//
//  ContentView.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/10/31.
//

import SwiftUI

struct ContentView: View {
    
    @State var displayNum: Double = 0
    @State var formula: String = ""        
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                                                
                HStack {
                    Spacer()
                    Text(formula)
                        .font(.system(size: 30))
                        .foregroundColor(.gray)
                        .padding()
                }
                
                HStack {
                    Text("=")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                    Spacer()
                    Text(String(format: "%.2f", displayNum))
                        .font(.system(size: 73))
                        .foregroundColor(.white)
                        .padding()
                }
                
                HStack {
                    ForEach (["C", "+/-", "%", "/"], id: \.self) { idx in
                        Button{
                            if idx == "C" {
                                displayNum = 0
                                formula = ""
                            }
                            else if idx == "+/-" {
                                displayNum = displayNum * -1
                            }
                            else if idx == "%" {
                                displayNum = displayNum / 100
                            }
                            else {
                                formula += idx
                            }
                        } label: {
                            Text(idx)
                                .frame(width: 80, height: 80)
                                .background(idx == "/" ? Color.orange : Color.gray)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .font(.system(size: 33))
                                
                        }
                    }
                }
                
                HStack {
                    ForEach (["7", "8", "9", "x"], id: \.self) { idx in
                        Button{
                            formula += idx
                        } label: {
                            Text(idx)
                                .frame(width: 80, height: 80)
                                .background(idx == "x" ? Color.orange : Color.gray)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .font(.system(size: 33))
                                
                        }
                    }
                }
                
                HStack {
                    ForEach (["4", "5", "6", "-"], id: \.self) { idx in
                        Button{
                            formula += idx
                        } label: {
                            Text(idx)
                                .frame(width: 80, height: 80)
                                .background(idx == "-" ? Color.orange : Color.gray)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .font(.system(size: 33))
                                
                        }
                    }
                }
                
                HStack {
                    ForEach (["1", "2", "3", "+"], id: \.self) { idx in
                        Button{
                            formula += idx
                        } label: {
                            Text(idx)
                                .frame(width: 80, height: 80)
                                .background(idx == "+" ? Color.orange : Color.gray)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .font(.system(size: 33))
                                
                        }
                    }
                }
                
                HStack {
                    ForEach (["00", "0", ".", "="], id: \.self) { idx in
                        Button{
                            if idx == "=" {
                                if let result = calculate(expression: formula) {
                                    displayNum = result
                                } else {
                                    displayNum = 0
                                }
                            } else {
                                formula += idx
                            }
                        } label: {
                            Text(idx)
                                .frame(width: 80, height: 80)
                                .background(idx == "=" ? Color.orange : Color.gray)
                                .cornerRadius(40)
                                .foregroundColor(.white)
                                .font(.system(size: 33))
                                
                        }
                    }
                }
            }
        }
    }
    
    func calculate(expression: String) -> Double? {
        let changedExpression = expression.replacingOccurrences(of: "x", with: "*")
        let mathExpression = NSExpression(format: changedExpression)
        if let result = mathExpression.expressionValue(with: nil, context: nil) as? Double {
            return result
        } else {
            return nil
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
