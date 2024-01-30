import Foundation

func solution(_ s:String) -> Int {
    var answer = s
    let number = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    for i in 0..<number.count {
        //0-9까지 배열 해당 문자가 있을 경우 숫자형 문자로 치환해 answer에 적용.
        answer = answer.replacingOccurrences(of: number[i], with: String(i))
    }
    
    return Int(answer)!
}