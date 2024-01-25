import Foundation

// sizes [[60, 50], [30, 70], [60, 30], [80, 40]]
// 문제 : 모든 명함을 수납할 수 있는 지갑 만들기.
// 요점 : 가로, 세로 상관없이 두 변중 사이즈가 가장 큰 부분, 작은 부분을 구해 곱하면 리턴값이 도출됨.
// 풀이 : max, min 값을 구해 곱해 나오는 값.
func solution(_ sizes:[[Int]]) -> Int {
    var maxVal = 0
    var minVal = 0
    
    sizes.forEach { i in
        // 가장 큰 값을 계속 갱신
        maxVal = max(maxVal, i.max()!)
        // 가장 작은 수 중에 큰 값을 갱신
        minVal = max(minVal, i.min()!)
    }
    
    return maxVal * minVal
}
// forEach 루프 풀이
// 1.max()적용| 2.max,minVal에 최대 값 대입.
// [60, 50]  >  [60, 50]  >  maxVal=60 / minVal=50
// [30, 70]  >  [70, 30]  >  maxVal=70 / minVal=50
// [60, 30]  >  [60, 30]  >  maxVal=70 / minVal=50
// [80, 40]  >  [80, 40]  >  maxVal=80 / minVal=50