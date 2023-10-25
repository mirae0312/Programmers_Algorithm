import Foundation

func solution(_ n:Int) -> Int {
    return Array(1...n).filter{n % $0 == 1}.min()!
    // 1부터 n까지 배열을 만들고 n으로 나누어 1만 남는 제일 적은수
    // 빈 값일 수 있기때문에 ! 선언
}