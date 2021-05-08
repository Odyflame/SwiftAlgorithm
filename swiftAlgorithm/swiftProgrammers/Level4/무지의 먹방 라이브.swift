//
//  무지의 먹방 라이브.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/05/07.
//  Copyright © 2021 odyflame. All rights reserved.
//
//
//import Foundation
//
//func solution(_ food_times:[Int], _ k:Int64) -> Int {
//
//    var foodTime = [(Int, Int)]()
//    for i in 0 ..< food_times.count {
//        foodTime.append((food_times[i], i))
//    }
//
//    foodTime = foodTime.sorted {
//        $0.0 < $1.0
//    }
//
//    var preTime = 0
//    var currentN = foodTime.count
//    var k = Int(k)
//    
//    for i in 0 ..< foodTime.count {
//
//        var diff = (foodTime[i].0 - preTime) * currentN
//        if diff <= k {
//            k -= diff
//            preTime = foodTime[i].0
//        } else {
//            k %= currentN
//            foodTime = foodTime[i...].sorted {
//                $0.1 < $1.1
//            }
//            return foodTime[k].1
//        }
//        
//        currentN -= 1
//    }
//
//    return -1
//}
