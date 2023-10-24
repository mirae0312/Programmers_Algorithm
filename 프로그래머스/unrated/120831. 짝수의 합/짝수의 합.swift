import Foundation

func solution(_ n:Int) -> Int {
    var answer:Int = (1...n).filter {   /* 1부터 n까지 */
        ($0 % 2 == 0)}.reduce(0, +)     /* 짝수만 합 */
    
    return answer
}