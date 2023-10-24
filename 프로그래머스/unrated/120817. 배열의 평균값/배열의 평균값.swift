import Foundation

func solution(_ numbers:[Int]) -> Double {
    var arr:Double = Double(numbers.reduce(0, +)) / Double(numbers.count)
                            // 0부터 더함         나눔 // 배열의길이
    return arr
}