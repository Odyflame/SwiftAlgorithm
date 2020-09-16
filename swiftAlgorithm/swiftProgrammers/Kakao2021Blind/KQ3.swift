//
//  KQ3.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/12.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ info:[String], _ query:[String]) -> [Int] {
//    var answer = [Int]()
//    
//    var checkInfo = [(String, String, String, String, String)]()
//    
//    for i in info {
//        var temp = i.components(separatedBy: [" "])
//        
//        var tempTuple = (temp[0],temp[1],temp[2],temp[3],temp[4])
//        checkInfo.append(tempTuple)
//    }
//    
//    for i in query {
//        var temp = i.components(separatedBy: [" "]).filter { $0 != "and" }
//        var sum = 0
//        
//        for info in checkInfo {
//            if (temp[0] == "-" || temp[0] == info.0) && (temp[1] == "-" || temp[1] == info.1) && (temp[2] == "-" || temp[2] == info.2) && (temp[3] == "-" || temp[3] == info.3) && Int(temp[4])! <= Int(info.4)! {
//                sum += 1
//            }
//        }
//        
//        answer.append(sum)
//    }
//    
//    return answer
//}
