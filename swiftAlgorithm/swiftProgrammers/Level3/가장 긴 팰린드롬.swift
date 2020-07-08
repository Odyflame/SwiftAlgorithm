//
//  가장 긴 팰린드롬.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/08.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ s:String) -> Int {
//    var answer = 1
//
//    func checkPalindrom(_ stratIndex: Int, _ endIndex: Int) -> Bool {
//        var sArray = Array(s)
//        var startIndex = stratIndex
//        var endIndex = endIndex
//
//        while startIndex < endIndex {
//            if sArray[startIndex] != sArray[endIndex] {
//                return false
//            }
//            startIndex += 1
//            endIndex -= 1
//        }
//        return true
//    }
//
//    if s.count <= 1 {
//        return answer
//    }
//    var sArray = Array(s)
//    for i in 0 ..< s.count {
//        for j in stride(from: s.count - 1, to: i, by: -1) {
//
//            var startIndex = i
//            var endIndex = j
//            var flag = true
//
//            while startIndex < endIndex {
//                if sArray[startIndex] != sArray[endIndex] {
//                    flag = false
//                    break
//                }
//                startIndex += 1
//                endIndex -= 1
//            }
//
//            if flag {
//                answer = max(answer, j - i + 1)
//                break
//            }
//
//        }
//    }
//
//    return answer
//}
