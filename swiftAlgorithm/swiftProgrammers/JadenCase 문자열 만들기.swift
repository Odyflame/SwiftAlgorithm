//
//  JadenCase 문자열 만들기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/01.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

// 다시 풀어봐야 함
// 스위프트에서 알파벳과 숫자 구분은 많은 예제가 없다.

//func solution(_ s:String) -> String {
//    var ans = ""
//    var index = 0
//
//    for i in s {
//        if i != " " {
//            if index == 0 {
//                ans += String(i).uppercased()
//            }else {
//                ans += String(i).lowercased()
//            }
//            index += 1
//        } else {
//            ans += " "
//            index = 0
//        }
//    }
//
//    return ans
//}

//func solution(_ s:String) -> String {
//    var result : String = ""
//    var first = true
//
//    for c in s {
//        var d = String(c)
//        switch d {
//        case "A"..."Z":
//            if first {
//                result += d
//                first = false
//            } else {
//                result += d.lowercased()
//            }
//        case "a"..."z":
//            if first {
//                result += d.uppercased()
//                first = false
//            } else {
//                result += d
//            }
//        case " ":
//            result += " "
//            first = true
//        default:
//            first = false
//            result += d
//        }
//    }
//
//    return result
//}
