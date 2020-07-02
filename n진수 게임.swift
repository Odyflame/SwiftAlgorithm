//
//  n진수 게임.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
//
//    var answer = "0"
//    var finalAnswer = ""
//
//    for i in 1...100000 {
//
//        var temp = i
//        var tempAnswer = ""
//        if n < 11 {
//            while temp > 0 {
//                tempAnswer = String ( temp % n ) + tempAnswer
//                temp /= n
//            }
//        } else {
//
//            while temp > 0 {
//
//                if temp % n >= 10 {
//                    switch temp % n  {
//                    case 10:
//                        tempAnswer = "A" + tempAnswer
//                    case 11:
//                        tempAnswer = "B" + tempAnswer
//                    case 12:
//                        tempAnswer = "C" + tempAnswer
//                    case 13:
//                        tempAnswer = "D" + tempAnswer
//                    case 14:
//                        tempAnswer = "E" + tempAnswer
//                    case 15:
//                        tempAnswer = "F" + tempAnswer
//                    default:
//                        break
//                    }
//                } else {
//                    tempAnswer = String ( temp % n ) + tempAnswer
//                }
//                temp /= n
//            }
//
//        }
//
//        answer += tempAnswer
//    }
//
//    var srr = Array(answer)
//
//    var i = p - 1
//    while finalAnswer.count < t {
//        finalAnswer += String(srr[i])
//        i += m
//    }
//
//    return finalAnswer
//}
