//
//  41. First Missing Positive.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/30.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func firstMissingPositive(_ nums: [Int]) -> Int {
//    var nums = nums.sorted()
//
//    var myMax = 0
//    var answer = 0
//
//    for i in nums {
//        if i > 0 {
//            if i > myMax {
//                if i - myMax > 1 {
//                    answer = myMax + 1
//                    break
//                }
//                myMax = i
//            } else if i == myMax {
//                continue
//            } else {
//                answer = myMax + 1
//                break
//            }
//        }
//    }
//    if answer == 0 {
//        if nums.last! > 0 {
//            answer = nums.last! + 1
//        } else {
//            answer = 1
//        }
//
//    }
//
//    return answer
    
//    if nums.count == 0 {
//        return 1
//    }
//
//    var dict: [Int:Int] = [:]
//    for num in nums {
//        dict[num] = 1
//    }
//
//    for i in 1 ... nums.count {
//        if let val = dict[i] {
//            continue
//        } else {
//            return i
//        }
//    }
//
//    return nums.count + 1
    
    var min = 1
    while nums.contains(min) {
        min += 1
    }
    return min
}
