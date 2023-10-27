func solution(_ s:String) -> String {
    let cnt = s.count/2
    let arr = Array(s)
    return s.count % 2 == 0 ? String(arr[cnt-1...cnt]) : String(arr[cnt])
    /*return s.count % 2 == 0 ? String(Array(s)[(s.count) / 2 - 1...s.count / 2]) / : String(Array(s)[s.count / 2]) //런타임에러 */
}