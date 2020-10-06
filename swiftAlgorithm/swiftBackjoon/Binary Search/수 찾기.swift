//
//  수 찾기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//그냥 하면 시간초과
//func solution1920() {
//
//    var N = Int(readLine()!)!
//    var A = readLine()!.split(separator: " ").map { Int($0)! }
//
//    var T = Int(readLine()!)!
//    var temp = readLine()!.split(separator: " ").map { Int($0)! }
//
//    for i in 0 ..< T {
//        if A.contains(temp[i]) {
//            print(1)
//        } else {
//            print(0)
//        }
//    }
//}

//이분탐색으로 풀어야한다
//func solution1920() {
//
//    var N = Int(readLine()!)!
//    var A = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
//
//    var T = Int(readLine()!)!
//    var temp = readLine()!.split(separator: " ").map { Int($0)! }
//
//    for i in 0 ..< T {
//        var left = 0
//        var right = A.count - 1
//        var flag = false
//
//        while left <= right {
//            var mid = (left + right) / 2
//
//            if A[mid] == temp[i] {
//                flag = true
//                break
//            }
//
//            if A[mid] > temp[i] {
//                right = mid - 1
//            } else {
//                left = mid + 1
//            }
//        }
//
//        if flag {
//            print(1)
//        } else {
//            print(0)
//        }
//
//    }
//}
