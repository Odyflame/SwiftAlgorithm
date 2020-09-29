//
//  문자열 압축.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/01.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ s:String) -> Int {
//
//    var answer = s
//
//    var s = Array(s)
//
//    if s.count == 0 {
//        return 0
//    } else if s.count == 1{
//        return 1
//    }
//
//    for i in 1 ... s.count / 2 {
//
//        var index = 0
//        var carry = 1
//        var tempSum = ""
//        var sum = ""
//
//        var tempSrr = s
//
//        while index <= tempSrr.count - i {
//
//            var temp = String(tempSrr[index..<index+i])
//
//            if index+i+i > tempSrr.count - 1 {
//
//                if temp == String(tempSrr[index+i..<tempSrr.count]) {
//                    carry += 1
//                    sum += "\(carry)" + temp
//                    carry = 1
//                    break
//                }
//
//                if carry > 1 {
//                    sum += "\(carry)" + temp + String(tempSrr[index+i..<tempSrr.count])
//                    carry = 1
//                }else {
//                    sum += temp + String(tempSrr[index+i..<tempSrr.count])
//                    carry = 1
//                }
//                break
//            }
//
//            var temp2 = String(tempSrr[index+i..<index+i+i])
//
//            if temp == temp2 {
//                carry += 1
//                tempSum = temp
//                index += i
//                continue
//            } else {
//
//                if carry > 1 {
//                    sum += "\(carry)" + tempSum
//                    carry = 1
//                } else {
//                    sum += temp
//                }
//            }
//
//            index += i
//        }
//
//        if carry > 1 {
//            sum += "\(carry)" + tempSum
//        }
//
//        if answer.count > sum.count {
//            answer = sum
//        }
//    }
//
//    return answer.count
//}
