/**
# 10/24(화) 고차함수 예제문제 
*/
import Foundation

var greeting = "Hello, playground"

// for-in vs Map
let numbers = [0, 1, 2, 3, 4]


// 예제 1번
func sumOfSquaresOfOdds(array: [Int]) -> [Int] {
    // 여기에 코드를 작성
    array.filter{ $0 % 2 == 1 }.map{ $0 * $0 }
}

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print(sumOfSquaresOfOdds(array: array))

// 예제 2번
// 예시코드
func reverseWithoutVowels(string: String) -> String{
    // 여기에 코드를 작성
//    Regex("^[aeiouAEIOU][A-Za-z0-9_]*")
    let vowel = "aeiouAEIOU"

    return String(string.filter{ !vowel.contains($0) }.uppercased().reversed())
}

let string = "Hello World"
print(reverseWithoutVowels(string: string))


// 예제 3번
func sumOfKeysWithEvenValues(dictionary: [String: Int]) -> Int {
    
    dictionary.values.filter{ $0 % 2 == 0 }.reduce(0, +)
    
}

let dictionary = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]
print(sumOfKeysWithEvenValues(dictionary: dictionary))


// 예제 4번
// 예시코드

func differenceBetweenMaxAndMin(array: [Int]) -> Int{
    
    return [0, array.count-1].map{ array.sorted(by: > )[$0] }.reduce(0){result, next in abs(result) - next}
}
//func differenceBetweenMaxAndMin(array: [Int]) -> Int {
//    guard !array.isEmpty else { return 0 }
//    return array.reduce(Int.min) { max($0, $1) } - array.reduce(Int.max) { min($0, $1) }

//
//     let max = array.reduce(Int.min, max)
//     let min = array.reduce(Int.max, min)
//     return max - min
// 
//}
let array4 = [10, 20, 30, 40, 50]
print(differenceBetweenMaxAndMin(array: array4))


//// 예제 5번
func countElements(array: [String]) -> [String: Int] {
    
    return array.reduce(into: [:]){ $0[$1, default: 0] += 1}
    // $0 은 초기값 [:] 빈 디렉토리[key를 다음 들어오는 문자로], 디렉토리에 해당 키가 없으면 default 0에다가 += 1
    
}
let array5 = ["a", "b", "a", "c", "b", "d"]
print(countElements(array: array5))

// 예제 6번
// 예시코드
func mostFrequentElement(array: [String]) -> String {
    countElements(array: array).filter{$0.value == countElements(array: array).values.max() ?? 0}.keys.randomElement() ?? "없다"
}
// dict.first?.key => 옵셔널 체이닝 -> first의 값이 없으면 nil, key까지 안감
let array6 = ["a", "b", "a", "c", "b", "d"]
print( mostFrequentElement(array: array6) )


//예제 7번
// 예시코드
func addStars(array: [String]) -> [String] {
    array.map{"*\($0)*"}
}
let array7 = ["a", "b", "c"]
print( addStars(array: array7) )   // ["*a*", "*b*", "*c*"]

//예제 8번
// 예시코드
func sumOfMultiplesOfThree(array: [Int]) -> Int {
    array.filter{$0 % 3 == 0}.reduce(0, +)
//    array.reduce(0){if $0 % 3 == 0 }
}
let array8 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print( sumOfMultiplesOfThree(array: array8) )   // 18

// 예제 9번
// 예시코드
func repeatTwice(array: [String]) -> [String] {
    // 여기에 코드를 작성
//    array.flatMap{[$0, $0]} // map출력할때 일차원으로 하기
    array.reduce(into: [String]()){ $0 += [$1, $1] }
    
}
let array9 = ["a", "b", "c"]
print( repeatTwice(array: array9))   // ["a", "a", "b", "b", "c", "c"]

// 예제 10번
func lengthsOfElements(array: [String]) -> [Int] {
    return array.map { $0.count }
}

let array10 = ["apple", "banana", "cherry"]
print( lengthsOfElements(array: array10))   // [5, 6, 6]
print( array10.map { $0.count } )

// 예제 11번
func countVowels(_ word: String) -> Int{
    let vowel = "aeiouAEIOU"
    return word.filter{vowel.contains($0)}.count
}

let word = "swift"
let vowelCount = countVowels(word)
print(vowelCount) // 1

// 예제 12번
func countAlphabets(_ word: String) -> [Character: Int]{
    word.filter{ $0.isLetter }.reduce(into: [Character:Int]()){ $0[$1, default:0] += 1}
}
let word2 = "Hello2World!!"
let alphabetCount = countAlphabets(word2)
print(alphabetCount)  // ["e": 1, "o": 2, "r": 1, "H": 1, "W": 1, "d": 1, "l": 3]


// 예제 13번
func capitalize(_ sentence: String) -> String{
    // 구분자 기준 배열로 분리시켰다가 합치기
    sentence.split(separator: " ")
            .map{$0.prefix(1).capitalized + $0.dropFirst().lowercased()}
            .joined(separator: " ")
}

let sentence = "this is a test"
let capitalizedSentence = capitalize(sentence)
print(capitalizedSentence)      // "This Is A Test"


// 예제 14번
func reverse(_ numbers: [Int]) -> [Int]{
    numbers.reversed()
}
let numbers14 = [1, 3, 4, 2, 5]
let reversedNumbers = reverse(numbers14)
print(reversedNumbers)      // [5, 2, 4, 3, 1]

// 예제 15번
func uppercase(_ word: String) -> String{
    word.map{$0.isLowercase ? $0.uppercased() : $0.lowercased()}.reduce("", +)
}
let word15 = "swIFT"
let uppercasedWord = uppercase(word15)
print(uppercasedWord)       // "SWIFT"


// 예제 16번
func removeSpaces(_ word: String) -> String{
    word.filter{$0.isLetter}.reduce(into: ""){ $0 += String($1)}
}

let sentence16 = "This is a test"
let noSpaceSentence = removeSpaces(sentence16)
print(noSpaceSentence)      // "Thisisatest"
