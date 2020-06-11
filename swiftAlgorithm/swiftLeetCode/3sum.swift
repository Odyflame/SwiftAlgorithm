//
//  3sum.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/11.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//n^3 시간초과가 생긴다.
//func threeSum(_ nums: [Int]) -> [[Int]] {
//
//    if nums.count < 3 {
//        return []
//    }
//
//    var items = Set<[Int]>()
//    for k in 0 ..< nums.count {
//        for i in 1 ..< nums.count {
//            for j in i + 1 ..< nums.count {
//                if i != k && j != k && nums[i] + nums[j] == -nums[k] {
//                    items.insert([ nums[k], nums[i], nums[j]].sorted())
//                }
//            }
//        }
//    }
//
//    var answer:[[Int]] = Array(items)
//
//    return answer
//}

//
func threeSum(_ nums: [Int]) -> [[Int]] {
    
    let sortedNums = nums.sorted()
    var answer = [[Int]]()
    
    if nums.count < 3 { // 3개보다 작을 경우에는 할 수 있는 조합이 없다.
        return []
    }
    
    for i in 0 ..< sortedNums.count - 2 {
        
        let first = sortedNums[i]
        if i > 0, sortedNums[i-1] == first {
            // iterating through the same number, already handled
            continue
        }
        
        // we know the first number, iteratin up from the beginning, down from the end
        // to find all cases of second + third == -first
        var lowerIndex = i + 1
        var upperIndex = sortedNums.count - 1
        
        // iterate lower bound up to change the value of second
        // increses the sum
        func nextLower() {
            let current = sortedNums[lowerIndex]
            repeat {
                lowerIndex += 1
            } while lowerIndex < upperIndex && sortedNums[lowerIndex] == current
        }
        
        func nextUpper() {
            let current = sortedNums[upperIndex]
            repeat {
                upperIndex -= 1
            } while lowerIndex < upperIndex && sortedNums[upperIndex] == current
        }
        
        while lowerIndex < upperIndex {
            var total = sortedNums[i] + sortedNums[lowerIndex] + sortedNums[upperIndex]
            
            if total < 0 {
                nextLower()
            } else if total > 0 {
                nextUpper()
            } else {
                answer.append([ sortedNums[i] , sortedNums[lowerIndex] , sortedNums[upperIndex] ] )
                nextLower()
                nextUpper()
            }
        }
        
    }
    
    return answer
}
