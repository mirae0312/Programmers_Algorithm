func solution(_ n:Int, _ m:Int) -> [Int] {
    var max = 0
    var min = 0
    max = gcd(n, m)
    //l = 최소공배수 lcm(최소공배수) = 0아닌 자연수들의 곱 / 최대공약수(gcd)
    min = (n * m) / max
    
    return [max, min]
}


func gcd(_ a: Int, _ b: Int) -> Int {
    // 두 수를 비교해 _a / _b에 담기
    let _a = a > b ? a : b
    let _b = a < b ? a : b
    let r = _a % _b
    
    // g = 최대공약수(유클리드호제법) 
    // 큰수 / 작은수 = 나머지가 0이 될때까지 0이 아닌 나머지로 나눔.
    // 연산 종료 해당 식의 몫이 최대공약수
    if r != 0 {
        return gcd(r, _b)
    } else {
        return _b
    }
}

