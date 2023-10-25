func solution(_ n:Int64) -> [Int] {
    return String(n).map{ Int(String($0))! }.reversed()
    // n값을 string으로 변환, map을 이용해 string요소들을 int로 변환 후 reversed
}