import SwiftUI

struct ContentView: View {
    @State private var F_number: String = "0"
    @State private var C_number: String = "0"
    @State var isDecimalPointEntered: Bool = false
    @State var selectedOperator: String? = nil // 선택된 연산자
    @State private var numbers: [String] = [] // 연산을 위해 숫자를 저장할 배열
    @State private var isResultShown: Bool = false // 결과를 보여줄지 여부

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack {
                Text(F_number)
                    .foregroundColor(.white)
                    .font(.system(size: 70))
                    .frame(maxWidth: 350, alignment: .trailing)

                HStack {
                    CalButton(label: "AC", backgroundColor: .gray, action: {
                        F_number = "0"
                        isDecimalPointEntered = false
                        selectedOperator = nil
                        numbers = []
                        isResultShown = false
                    }, textColor: .black)
                    CalButton(label: "+/-", backgroundColor: .gray, action: {
                        if F_number != "0" {
                            if F_number.prefix(1) == "-" {
                                F_number.remove(at: F_number.startIndex)
                            } else {
                                F_number = "-" + F_number
                            }
                        }
                    }, textColor: .black)
                    CalButton(label: "%", backgroundColor: .gray, action: {
                        if let number = Double(F_number) {
                            F_number = String(number / 100)
                        }
                    }, textColor: .black)
                    CalButton(label: "÷", backgroundColor: .orange, action: {
                        selectedOperator = "÷"
                        numbers.append(F_number)
                        F_number = "0"
                        isResultShown = false
                    }, textColor: .white)
                }.padding(10)

                HStack {
                    Spacer()
                    CalButton(label: "7", backgroundColor: .gray, action: {
                        appendNumber("7")
                    }, textColor: .black)
                    CalButton(label: "8", backgroundColor: .gray, action: {
                        appendNumber("8")
                    }, textColor: .black)
                    CalButton(label: "9", backgroundColor: .gray, action: {
                        appendNumber("9")
                    }, textColor: .black)
                    CalButton(label: "x", backgroundColor: .orange, action: {
                        selectedOperator = "x"
                        numbers.append(F_number)
                        F_number = "0"
                        isResultShown = false
                    }, textColor: .white)
                }.padding(10)

                HStack {
                    Spacer()
                    CalButton(label: "4", backgroundColor: .gray, action: {
                        appendNumber("4")
                    }, textColor: .black)
                    CalButton(label: "5", backgroundColor: .gray, action: {
                        appendNumber("5")
                    }, textColor: .black)
                    CalButton(label: "6", backgroundColor: .gray, action: {
                        appendNumber("6")
                    }, textColor: .black)
                    CalButton(label: "-", backgroundColor: .orange, action: {
                        if selectedOperator != nil {
                            performCalculation()
                        }
                        selectedOperator = "-"
                        numbers.append(F_number)
                        F_number = "0"
                        isResultShown = false
                    }, textColor: .white)
                }.padding(10)

                HStack {
                    Spacer()
                    CalButton(label: "1", backgroundColor: .gray, action: {
                        appendNumber("1")
                    }, textColor: .black)
                    CalButton(label: "2", backgroundColor: .gray, action: {
                        appendNumber("2")
                    }, textColor: .black)
                    CalButton(label: "3", backgroundColor: .gray, action: {
                        appendNumber("3")
                    }, textColor: .black)
                    CalButton(label: "+", backgroundColor: .orange, action: {
                        if selectedOperator != nil {
                            performCalculation()
                            F_number = "0"
                            
                        }
                        selectedOperator = "+"
                        numbers.append(F_number)
                        F_number = "0"
                        isResultShown = false
                    }, textColor: .white)
                }.padding(10)

                HStack {
                    Spacer()
                    CalButton(label: "0", backgroundColor: .gray, action: {
                        appendNumber("0")
                    }, textColor: .black)
                    CalButton(label: ".", backgroundColor: .gray, action: {
                        if !isDecimalPointEntered {
                            isDecimalPointEntered = true
                            F_number += "."
                        }
                    }, textColor: .black)
                    CalButton(label: "=", backgroundColor: .orange, action: {
                        performCalculation()
                    }, textColor: .white)
                }.padding(10)
            }
            .padding()
        }
    }

    private func appendNumber(_ digit: String) {
        if isResultShown {
            F_number = "0"
            isResultShown = false
        }

        if F_number == "0" {
            F_number = digit
        } else if selectedOperator == nil {
            F_number += digit
        } else {
            F_number = digit
            selectedOperator = nil
        }
    }

    private func performCalculation() {
        if numbers.count >= 1 && selectedOperator != nil {
            let num1 = Double(numbers[0]) ?? 0.0
            let num2 = Double(F_number) ?? 0.0
            switch selectedOperator {
            case "+":
                F_number = formatNumber(num1 + num2)
            case "-":
                F_number = formatNumber(num1 - num2)
            case "x":
                F_number = formatNumber(num1 * num2)
                
            case "÷":
                if num2 != 0 {
                    F_number = formatNumber(num1 / num2)
                    
                } else {
                    // 예외 처리: 0으로 나눌 수 없음
                    // 이 부분을 원하는 방식으로 처리하세요.
                }
            default:
                break
            }
            
            numbers[0] = F_number
            print(numbers)
            
        } else {
            numbers.append(F_number)
        }
        isResultShown = true
    }


    private func formatNumber(_ number: Double) -> String {
        if number.truncatingRemainder(dividingBy: 1) == 0 {
            return String(format: "%.0f", number)
        } else {
            return String(number)
        }
    }
}

struct CalButton: View {
    let label: String
    let backgroundColor: Color
    let action: () -> Void
    let textColor: Color

    var body: some View {
        Button(action: {
            action()
        }) {
            if label == "0" {
                Text(label)
                    .frame(width: 185, height: 80)
                    .foregroundColor(textColor)
                    .background(backgroundColor)
                    .cornerRadius(100)
                    .font(.largeTitle)
            } else {
                Text(label)
                    .frame(width: 80, height: 80)
                    .foregroundColor(textColor)
                    .background(backgroundColor)
                    .cornerRadius(100)
                    .font(.largeTitle)
            }
        }
        .padding(5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
