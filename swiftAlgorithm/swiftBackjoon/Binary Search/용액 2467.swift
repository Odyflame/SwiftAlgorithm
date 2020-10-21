//
//  용액 2467.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/21.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution2467() {
//
//    let N = Int(readLine()!)!
//    let arr = readLine()!.split(separator: " ").map { Int($0)! }
//
//    var left = 0
//    var right = N - 1
//    var mid = abs(arr[left] + arr[right])
//
//    var ans = (arr[left], arr[right])
//
//    while left < right {
//        var sum = arr[left] + arr[right]
//
//        if mid > abs(sum) {
//            mid = abs(sum)
//            ans = (arr[left], arr[right])
//        }
//
//        if sum < 0 {
//            left += 1
//        } else {
//            right -= 1
//        }
//    }
//
//    print("\(ans.0) \(ans.1)")
//}
