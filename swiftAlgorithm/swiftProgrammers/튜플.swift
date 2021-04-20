//
//  튜플.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/30.
//  Copyright © 2020 odyflame. All rights reserved.
//
//
//import Foundation

//func solution(_ s:String) -> [Int] {
//
//    var answer = [Int]()
//
//    var tupleArr = s.components(separatedBy: ["{", "}"]).filter {
//        if $0 != "" && $0 != "," {
//            return true
//        }
//        return false
//    }.map {
//        $0.split(separator: ",").map { Int($0)!}
//    }.sorted {
//        return $0.count < $1.count
//    }
//
//    for tuple in tupleArr {
//        for i in tuple {
//            if !answer.contains(i) {
//                answer.append(i)
//                break
//            }
//        }
//    }
//
//    return Array(answer)
//}
