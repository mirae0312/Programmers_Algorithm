import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    // for문 풀이
//     var answer = 0;
//     for i in left ... right {
//         var count = 0;
//         for j in 1 ... i {
//             if(i % j == 0){ // i의 약수 카운트
//                 count += 1
//             }
//         }
        
//         if count % 2 == 0 {
//             answer += i
//         } else {
//             answer -= i
//         }
//     }
//     return answer
    
    // 고차함수 풀이
    return (left...right).map {
        i in (1...i).filter {
            i % $0 == 0
        }.count % 2 == 0 ? i : -i 
    }.reduce(0, +)
}