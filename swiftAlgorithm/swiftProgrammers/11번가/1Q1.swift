//
//  1Q1.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/29.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

//public func solution(_ S : inout String) -> Int {
//    if S == "aa" {
//        return 0
//    }
//    else if S == "a" {
//        return 1
//    }
//    else if S.contains("aaa") {
//        return -1
//    }
//
//    var pos = 0
//    var stack = ""
//    var answer = ""
//    var count = 0
//    var S = S
//
//    while !S.isEmpty {
//        var temp = S.removeFirst()
//
//        if String(temp) == "a" {
//
//            stack = stack + "a"
//            answer = answer + "a"
//
//        } else {
//            if stack == "a" {
//                count += 1
//                answer = answer + "a"
//                stack = ""
//            } else if stack == "aa" {
//                stack = ""
//            } else {
//                count += 2
//                answer = answer + "aa"
//            }
//            answer = answer + String(temp)
//        }
//
//    }
//
//
//    if answer.hasPrefix("aa") {
//
//    } else if answer.hasPrefix("a") {
//        answer = "a" + answer
//        count += 1
//    } else {
//        count += 2
//    }
//
//    if answer.hasSuffix("aa") {
//
//    } else if answer.hasSuffix("a") {
//        answer = answer + "a"
//        count += 1
//    } else {
//        answer = answer + "aa"
//        count += 2
//    }
//
//    return count
//}

//public func solution(_ A : inout [Int]) -> Int {
//    var dp = [Int](repeating: 0, count: A.count + 1)
//
//    var trash = [Int]()
//
//    for i in 0..<A.count {
//        if dp[A[i]] == 0 {
//            dp[A[i]] = i + 1
//        } else {
//            trash.append(A[i])
//        }
//    }
//
//    var trashDP = [Int]()
//
//    for i in 1..<dp.count {
//        if dp[i] == 0 {
//            trashDP.append(i)
//        }
//    }
//
//    trash = trash.sorted()
//    trashDP = trashDP.sorted()
//
//    var answer = 0
//
//    for i in 0 ..< trashDP.count {
//        answer += abs(trashDP[i] - trash[i])
//    }
//
//    return answer
//}

//public func solution(_ S : inout [String]) -> [Int] {
//
//    var check = false
//    var answer = [Int]()
//
//    for i in 0..<S.count - 1 {
//        for j in i + 1..<S.count {
//
//            var temp1 = Array(S[i])
//            var temp2 = Array(S[j])
//            for k in 0..<temp1.count {
//                if temp1[k] == temp2[k] {
//                    answer = [i,j,k]
//                    check = true
//                    break
//                }
//            }
//
//            if check {
//                break
//            }
//        }
//
//        if check {
//            break
//        }
//    }
//
//    return answer
//}
