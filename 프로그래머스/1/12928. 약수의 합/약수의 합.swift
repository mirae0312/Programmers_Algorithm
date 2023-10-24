func solution(_ n:Int) -> Int { 
    return n != 0 ? (1...n).filter {n % $0 == 0}.reduce(0, +) : 0
    // n이 0아니라면 결과값 0이라면 0리턴
}