func solution(_ num:Int) -> Int {
    var n = num // let > var
    var cnt = 0
    
    while n != 1 { // 1이 아니라면
        n = (n % 2 == 0) ? n / 2 : n * 3 + 1
        // 짝수라면 2를 나누고 아니라면 곱하기 3 + 1
        cnt += 1
        // 1씩 카운트
        
        if(cnt > 500){ // 카운트가 500회이상
            return -1
        }
    }
    return cnt
}