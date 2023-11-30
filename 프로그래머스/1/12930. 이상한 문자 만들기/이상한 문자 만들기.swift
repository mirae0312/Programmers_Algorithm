func solution(_ s:String) -> String {
    var answer = ""
    var count = 0
    
    for i in s {
        // 공백인 경우
        if i == " " {
            // 카운트 리셋
            count = -1
            answer += String(i)
        } else if count % 2 == 0 {
            answer += i.uppercased()
        } else {
            answer += i.lowercased()
        }
        count += 1
    }
    return answer
}