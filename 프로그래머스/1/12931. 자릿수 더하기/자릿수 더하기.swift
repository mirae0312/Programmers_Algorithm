import Foundation

func solution(_ n:Int) -> Int {
    var answer:Int = 
        String(n).map{Int(String($0))!}.reduce(0, +)
        // String으로 캐스팅 > String 요소값을 Int로 변환
        // Int로 변환하면 값의 존재를 모르기에 옵셔널 제거를 위해 ! 사용
        // reduce로 더하기
    return answer
}