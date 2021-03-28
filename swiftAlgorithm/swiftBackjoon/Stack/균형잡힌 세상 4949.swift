////
////  균형잡힌 세상 4949.swift
////  swiftAlgorithm
////
////  Created by apple on 2021/03/28.
////  Copyright © 2021 odyflame. All rights reserved.
////
//
//import Foundation
//
//func solution4949() {
//    
//    let checkList = "([])"
//    
//    while true {
//        let temp = readLine()!
//        
//        if temp == "." {
//            break
//        }
//        
//        var str = temp.filter {
//            checkList.contains($0)
//        }
//        var stack = ""
//        for s in str {
//            if stack.isEmpty {
//                stack += String(s)
//            }else {
//                switch stack.last! {
//                case "(":
//                    switch String(s) {
//                    case ")":
//                        stack.removeLast()
//                    default:
//                        stack += String(s)
//                    }
//                case "[":
//                    switch String(s) {
//                    case "]":
//                        stack.removeLast()
//                    default:
//                        stack += String(s)
//                    }
//                default:
//                    stack += String(s)
//                }
//            }
//        }
//        
//        if stack == "" {
//            print("yes")
//        } else {
//            print("no")
//        }
//    }
//}
