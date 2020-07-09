//
//  입국심사.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//func solution(_ n:Int, _ times:[Int]) -> Int64 {
//    
//    var left: Int64 = 1
//    var right: Int64 = Int64(times.sorted(by: < ).last! * n)
//    var answer: Int64 = right
//    
//    while left <= right {
//        var mid: Int64 = (left + right) / 2
//        var tempSum: Int64 = 0
//        
//        for time in times {
//            tempSum += mid / Int64(time)
//        }
//        
//        if tempSum < n {
//            left = mid + 1
//        } else {
//            if answer >= mid {
//                answer = mid
//            }
//            right = mid - 1
//        }
//    }
//    
//    return answer
//}
