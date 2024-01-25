import Foundation

func solution(_ t: String, _ p: String) -> Int {
    var str = [String]()
    let arr = t.map { String($0) }

    // 한계까지 모든 경우의 수를 확인.
    // p와 같은 길이의 모든 부분 문자열 검사를 위해
    // 마지막 인덱스 설정을 t.count - p.count로 해줌.
    // 예제) 0부터 4, 5번 루프.
    // t : 7개 / p : 3개 라면
    // t안에서 빠짐없이 3개씩 잘라서 루프해서 검사를 해주어야함.
    // 빠짐없이 3개씩 자른다면? 마지막에 자르는 개수도 3개.
    // -p.count를 해준다면? 시작하는 머릿수만 남을것.
    // 하여 t.count - p.count 라는 루프 공식이 나옴.
    for i in 0..<(t.count - p.count + 1) {
        // 미리만들어둔 string배열에 i + p.count만큼 루프해서 join해줌.
        str.append(arr[i..<i + p.count].joined())
    }

    // append가 된 str를 filter로 p보다 작거나 큰수의 카운트를 리턴
    return str.filter { $0 <= p }.count
}
