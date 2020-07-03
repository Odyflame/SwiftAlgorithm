//
//  영어 끝말잇기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ n:Int, _ words:[String]) -> [Int] {
//    
//    var index = 1
//    var mySet = Set<String>()
//    var answer = [Int]()
//    var cnt = 1
//    
//    var temp1 = ""
//    
//    for i in words {
//        
//        if temp1 == "" {
//            temp1 = i
//        }
//        
//        if index == n + 1 {
//            index = 1
//        }
//        
//        if mySet.isEmpty {
//            mySet.insert(i)
//        } else {
//            if mySet.contains(i) || temp1.last != i.first {
//                answer.append(index)
//                answer.append(cnt % index )
//                break
//            } else {
//                mySet.insert(i)
//            }
//        }
//        
//        temp1 = i
//        
//        index += 1
//        cnt += 1
//    }
//    
//    if answer.isEmpty {
//        return [0, 0]
//    } else {
//        return answer
//    }
//}
