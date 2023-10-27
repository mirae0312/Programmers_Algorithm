func solution(_ arr:[Int]) -> [Int] {
    let min = arr.min()
    let answer = arr.filter{$0 != min}
    return answer.isEmpty ? [-1] : answer
}