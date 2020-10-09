//
//  개똥벌레 3020.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/03.
//  Copyright © 2020 odyflame. All rights reserved.
//


// 이분탐색으로 하면 시간초과가 뜬다.
// 누적합으로 계산을 시도해야 할듯하다
//import Foundation
//
//func solution3020() {
//
//    var INF = 9999999
//    let NH = readLine()!.split(separator: " ").map { Int($0)! }
//    var upDp = [Int](repeating: 0, count: NH[0] / 2)
//    var downDp = [Int](repeating: 0, count: NH[0] / 2)
//
//    for i in 0 ..< NH[0] {
//        var temp = Int(readLine()!)!
//        if i % 2 == 0 {
//            downDp[i / 2] = temp
//        } else {
//            upDp[i / 2] = temp
//        }
//    }
//
//    upDp = upDp.sorted()
//    downDp = downDp.sorted()
//
//    var dp = [Int](repeating: 0, count: NH[1])
//
//    for i in 1 ... NH[1] {
//        var left = 0
//        var right = NH[0] / 2 - 1
//        var downCnt = 0
//
//        while left <= right {
//            var mid = (left + right) / 2
//            if downDp[mid] >= i {
//                downCnt = downDp.count - mid
//                right = mid - 1
//            }else {
//                left = mid + 1
//            }
//        }
//
//        left = 0
//        right = NH[0] / 2 - 1
//        var upCnt = 0
//
//        while left <= right {
//            var mid = (left + right) / 2
//            if upDp[mid] >= i {
//                upCnt = upDp.count - mid
//                right = mid - 1
//            }else {
//                left = mid + 1
//            }
//        }
//        dp[i - 1] = downCnt + upCnt
//    }
//
//    print( dp.min(), dp.filter( { $0 == dp.min() } ).count )
//}

//import Foundation
//
//func solution3020() {
//    
//    let NH = readLine()!.split(separator: " ").map { Int($0)! }
//
//    var upDp = [Int](repeating: 0, count: NH[1])
//    var downDp = [Int](repeating: 0, count: NH[1])
//
//    var upAns = [Int](repeating: 0, count: NH[1] + 1)
//    var downAns = [Int](repeating: 0, count: NH[1] + 1)
//
//    for i in 0 ..< NH[0] {
//        var temp = Int(readLine()!)!
//        if i % 2 == 0 {
//            downDp[temp - 1] += 1
//        } else {
//            upDp[temp - 1] += 1
//        }
//    }
//
//    for i in stride(from: NH[1] - 1, through: 0, by: -1) {
//        upAns[i] = upDp[i] + upAns[i + 1]
//        downAns[i] = downDp[i] + downAns[i + 1]
//    }
//
//    var finalAnswer = (9999999, 0)
//
//    for i in 0 ..< NH[1] {
//        let temp = upAns[i] + downAns[NH[1] - i - 1]
//
//        if finalAnswer.0 > temp {
//            finalAnswer = (temp, 1)
//        } else if finalAnswer.0 == temp {
//            finalAnswer = (temp, finalAnswer.1 + 1)
//        }
//    }
//
//    print("\(finalAnswer.0) \(finalAnswer.1)")
//
//}
