import Foundation

func solution(_ n:Int64) -> Int64 {
    let i = Int64(sqrt(Double(n))) //sqrt() 제곱근을 구해주는 함수
    return i * i == n ? (i + 1) * (i + 1) : -1
}