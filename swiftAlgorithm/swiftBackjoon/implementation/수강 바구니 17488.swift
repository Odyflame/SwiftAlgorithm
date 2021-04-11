//
//  수강 바구니 17488.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/11.
//  Copyright © 2021 odyflame. All rights reserved.
//

// 실패
//import Foundation
//
//func solution17488() {
//    let NM = readLine()!.split(separator: " ").map { Int($0)! }
//    var arr = readLine()!.split(separator: " ").map { Int($0)! }
//
//    var dp = [Int](repeating: 0, count: arr.count)
//
//    var answer = [Int](repeating: 0, count: NM[1])
//
//    for k in 0 ..< 2 * NM[0] {
//        let temp = readLine()!.split(separator: " ").map { result -> Int in
//            var check = Int(result)!
//            if check == -1 {
//                return check
//            }
//            dp[check - 1] += 1
//            return check - 1
//        }
//
//        if k == NM[0] - 1 {
//            for i in 0 ..< NM[1] {
//                if arr[i] >= dp[i] && dp[i] != 0{
//                    answer[i] += dp[i]
//                }
//
//                arr[i] -= answer[i]
//            }
//        }
//    }
//
//    for i in 0 ..< NM[1] {
//        if arr[i] >= dp[i] {
//            answer[i] = dp[i]
//        }
//    }
//
//    for i in 0 ..< NM[0] {
//        var ans = ""
//
//        for j in 0 ..< arr.count {
//            if answer[j] > 0 {
//                ans += "\(j + 1) "
//                answer[j] -= 1
//            }
//        }
//
//        if ans == "" {
//            print("망했어요")
//        }else {
//            print(ans)
//        }
//    }
//}
