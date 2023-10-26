func solution(_ a:Int, _ b:Int) -> Int64 {
    //return Int64(Array(a < b ? a...b : b...a).reduce(0, +)); 시간초과
    return Int64((min(a, b)...max(a, b)).reduce(0, +));
}