//
//  징검다리.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/01.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ distance:Int, _ rocks:[Int], _ n:Int) -> Int {
//    
//    var myRocks = rocks
//    myRocks.append(0)
//    myRocks = myRocks.sorted()
//    myRocks.append(distance)
//    
//    var left = 0, right = myRocks.count
//    var answer = 0
//    
//    while left <= right {
//        var mid = (left + right) / 2, removed = 0, prevIdx = 0
//        for i in myRocks.indices {
//            if myRocks[i] - prevIdx < mid { removed += 1}
//            else { prevIdx = myRocks[i] }
//        }
//        
//        if removed > n { right += mid - 1 }
//        else {
//            answer = max(answer, mid)
//            left = mid + 1
//        }
//    }
//    
//    return answer
//}
