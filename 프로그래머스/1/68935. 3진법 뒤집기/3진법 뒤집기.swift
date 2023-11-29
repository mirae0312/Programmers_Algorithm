import Foundation

func solution(_ n:Int) -> Int {
    var str = String(n, radix: 3)
    var answer = ""
    
    for i in str.reversed(){
        answer += String(i)
    }
    return Int(answer, radix: 3)!
}