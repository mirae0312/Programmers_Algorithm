import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int {
    // for문 풀이
    // var answer:Int64 = Int64(money)   
    // for i in 1...count {
    //     answer -= Int64(i * price)
    // } 
    // return answer >= 0 ? 0 : -answer
    
    // 고차함수 풀이
    // 구해야하는값 (1 * price) + (2 * price) + ... (n * price) 이므로 price * (1 + 2 + ... + n)
    // 등차수열의 합 공식 price * ((conut + 1) * count / 2)
    // max함수를 사용해서 money를 뺀 금액과 0중 더 큰 금액을 리턴.
    return max(price * ((count + 1) * count / 2) - money, 0)
}