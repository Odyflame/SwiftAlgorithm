//import Foundation
//
//func solution(_ play_time:String, _ adv_time:String, _ logs:[String]) -> String {
//
//    var ad = [Int](repeating: 0, count: 360001)
//
//    let play_Time = play_time.split(separator: ":").map { String($0) }
//    let playTime = Int(play_Time[0])! * 60 * 60 + Int(play_Time[1])! * 60 + Int(play_Time[2])!
//    
//    let adv_Time = adv_time.split(separator: ":").map { String($0) }
//    let advTime = Int(adv_Time[0])! * 60 * 60 + Int(adv_Time[1])! * 60 + Int(adv_Time[2])!
//
//    for log in logs {
//        var Log = log.split(separator: "-").map { String($0) }
//        var startLog = Log[0].split(separator: ":").map { Int(String($0))! }
//        var endLog = Log[1].split(separator: ":").map { Int(String($0))! }
//
//        var start = startLog[0] * 60 * 60 + startLog[1] * 60 + startLog[2]
//        var end = endLog[0] * 60 * 60 + endLog[1] * 60 + endLog[2]
//
//        for i in start ..< end {
//            ad[i] += 1
//        }
//    }
//
//    var maxSum = 0
//    var idx = 0
//    var sum = 0
//    var index = 0
//    var qu = [Int]()
//
//    for i in 0 ..< advTime {
//        sum += ad[i]
//        qu.append(ad[i])
//    }
//    maxSum = sum
//
//    for i in advTime ..< playTime {
//        sum += ad[i]
//        qu.append(ad[i])
//        sum -= qu[index]
//        index += 1
//        if sum > maxSum {
//            idx = i - advTime + 1
//            maxSum = sum
//        }
//    }
//
//    func setToStr(value: Int) -> String {
//        var sec = value
//        var s = sec % 60
//        sec /= 60
//        var m = sec % 60
//        sec /= 60
//        var h = sec
//
//        var answer = ""
//
//        if h < 10 {
//            answer += "0\(h):"
//        } else {
//            answer += "\(h):"
//        }
//
//        if m < 10 {
//            answer += "0\(m):"
//        } else {
//            answer += "\(m):"
//        }
//
//        if s < 10 {
//            answer += "0\(s)"
//        } else {
//            answer += "\(s)"
//        }
//
//        return answer
//    }
//
//    var answer = setToStr(value: idx)
//    return answer
//}
