//
//  괄호 변환.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/01.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation

//func solution(_ p:String) -> String {
//
//    var answer = ""
//
//    func sol2(srr: String) -> Bool {
//        var srr = Array(srr)
//        var stack = ""
//
//        for i in srr {
//            if i == "(" {
//                stack.append("(")
//            } else {
//
//                if stack.isEmpty {
//                    stack.append(i)
//                } else {
//                    var temp = stack.removeLast()
//                    if temp == "(" { // i가 ")"인데 temp 가 "("이면 stack pop
//
//                    } else {
//                        stack.append(temp)
//                        stack.append(i)
//                    }
//                }
//            }
//        }
//
//        return stack.count == 0 ? true : false
//    }
//
//    func sol1(srr: String) -> String {
//
//        var p = srr
//
//        if p == "" {
//            return ""
//        }
//
//        var u = ""
//        var v = ""
//        var startIndex = 0
//        var endIndex = 0
//
//        for i in p {
//            if startIndex == endIndex && endIndex > 0 {
//                break
//            } else if i == ")" {
//                startIndex += 1
//            } else if i == "(" {
//                endIndex += 1
//            }
//        }
//
//        var srr2 = Array(p)
//
//        u = String(srr2[0 ..< startIndex + endIndex])
//        v = String(srr2[startIndex + endIndex ..< srr2.endIndex])
//
//        if sol2(srr: u) {
//            // u + sol1(v)
//            return u + sol1(srr: v)
//        } else {
//            var w = ""
//            w = "(" + sol1(srr: v) + ")"
//            u.removeFirst()
//            u.removeLast()
//
//            for i in u {
//                if i == "(" {
//                    w += ")"
//                } else {
//                    w += "("
//                }
//            }
//
//            return w
//        }
//    }
//
//    if sol2(srr: p) {
//        return p
//    } else {
//        answer = sol1(srr: p)
//    }
//
//    return answer
//}
