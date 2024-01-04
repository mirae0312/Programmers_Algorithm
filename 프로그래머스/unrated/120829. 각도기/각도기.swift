import Foundation

func solution(_ angle:Int) -> Int {
    // if angle < 90 {
    //     return 1
    // } else if angle == 90 {
    //     return 2
    // } else if angle < 180 {
    //     return 3
    // } else {
    //     return 4
    // }
    // return 0;
    
    return angle < 90 ? 1 : angle == 90 ? 2 : angle < 180 ? 3 : angle == 180 ? 4 : 0
}