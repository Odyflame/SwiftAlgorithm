//
//  단어 뒤집기2 17413.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/31.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution17413() {
//    var inPut = readLine()!
//    
//    var stack = ""
//    var stackInStr = ""
//    var stackOutStr = ""
//    var answer = ""
//
//    for subInPut in inPut {
//        let str = String(subInPut)
//
//        if str == "<" {
//            if !stackOutStr.isEmpty {
//                var temp = stackOutStr.split(separator: " ")
//                    .map { String($0).reversed() }
//                    .map { String($0)}.reduce("") { (a, b) -> String in
//                        return a + b + " "
//                }
//                temp.removeLast()
//                answer += temp
//                stackOutStr = ""
//            }
//
//            stack = "<"
//            answer += "<"
//        } else if str == ">" {
//            answer += stackInStr
//            answer += ">"
//            stack = ""
//            stackInStr = ""
//        } else {
//            if stack == "" {
//                stackOutStr += str
//            } else {
//                stackInStr += str
//            }
//        }
//
//    }
//
//    func plusSpace(a: String, b: String) -> String {
//        return a + b + " "
//    }
//
//    if !stackOutStr.isEmpty {
//        var temp = stackOutStr.split(separator: " ")
//            .map { String($0).reversed() }
//            .map { String($0)}.reduce("") { (a, b) -> String in
//            return a + b + " "
//        }
//        temp.removeLast()
//        answer += temp
//    }
//
//    print(answer)
//}
