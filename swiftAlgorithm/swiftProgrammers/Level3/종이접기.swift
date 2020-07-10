//
//  종이접기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/08.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ n:Int) -> [Int] {
//    
////    1 0
////    2 0 0 1
////    3 0 0 1 0 0 1 1
////    4 0 0 1 0 0 1 1 0 0 0 1 1 0 1 1
//    
//    var answer = [Int]()
//    var ans1 = [1]
//    var ans2 = [Int]()
//    
//    answer.append(0)
//    
//    for i in 1..<n {
//        var temp = answer
//        temp.append(0)
//        var temp2 = [Int]()
//        for j in answer {
//            var k = j == 1 ? 0 : 1
//            temp2.append(k)
//        }
//        answer = temp + temp2.reversed()
//    }
//    
//    return answer
//}
