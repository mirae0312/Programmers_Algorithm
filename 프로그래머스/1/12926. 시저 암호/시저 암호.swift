// 문제 : s를 n만큼 민 암호문을 만드는 함수
// 요점 : 알파벳 문자열에는 총 26개의 문자열만 존재하므로 index는 0~25까지 사용.
// 풀이 : 해당 문자를 n번만큼 이동시킨 index를 계산.
//      - index + n > 25 ? index + n - 26 : index + n
//        알파벳 문자열에는 총 26개의 문자열만 존재하므로 index는 0~25까지 사용해야함.
//        현재 index에서 +n을 한 값이 25보다 크다면 index 0부터 다시 셀 수 있도록 -26.
//        공백은 아무리밀어도 공백.
func solution(_ s:String, _ n:Int) -> String {
    var answer = ""
    // index를 이용해 n번만큼 밀어내기 위해, 알파벳 순서대로 String타입 배열생성
    let en = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    s.forEach { i in
        // 대문자인지 체크
        let upperCase = i.isUppercase
        
        // 배열에서 해당 문자가 몇번 째에 있는지 확인
        if let index = en.firstIndex(of: i.lowercased()) {
            // 해당 문자를 n번 만큼 이동 시킨 index 계산
            // 현재 index에서 +n을 한 값이 25보다 크다면 index 0부터 다시 셀 수 있도록 -26
            let nIndex = index + n > 25 ? index + n - 26 : index + n
            // 해당 문자가 대문자인경우 대문자 값으로 변환해서 저장
            answer += upperCase ? en[nIndex].uppercased() : en[nIndex]
        } else {
            // 공백 일 경우 변화없이 저장
            answer += " "
        }
    }
    return answer
}