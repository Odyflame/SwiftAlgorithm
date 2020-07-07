//
//  뉴스 클러스터링.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ str1:String, _ str2:String) -> Int {
//
//    var str1 = str1.uppercased()
//    var str2 = str2.uppercased()
//
//    var mystr1 = [String]()
//    var mystr2 = [String]()
//
//    func getDividedString(_ str: String) -> [String] {
//        var answer = [String]()
//
//        if !str.isEmpty {
//            let st = str.startIndex
//            for i in 0..<str.count - 1 {
//
//                let startIndex = str.index(str.startIndex, offsetBy: i)
//                let endIndex = str.index(after: startIndex)
//                let word = String(str[startIndex...endIndex])
//
//                if String(str[startIndex]).isAlpha() && String(str[endIndex]).isAlpha() {
//                    answer.append(word)
//                }
//            }
//        }
//        return answer
//    }
//
//    func getJakad(_ list1: [String], _ list2: [String]) -> Int {
//
//        var list1 = list1
//        var list2 = list2
//        var list3 = list2
//
//        if list1.isEmpty && list2.isEmpty {
//            return 65536
//        }
//
//        var answer = 0
//
//        for i in list1 {
//            var flag = true
//            if list3.contains(i) {
//                let index = list3.firstIndex(of: i)
//                list3.remove(at: index!)
//                answer += 1
//            }
//        }
//
//        return Int( 65536.0 * Double(answer) / Double(list1.count + list2.count - answer) )
//    }
//
//    mystr1 = getDividedString(str1)
//    mystr2 = getDividedString(str2)
//
//    return getJakad(mystr1, mystr2)
//}
//
//extension String {
//    func isAlpha() -> Bool {
//        switch self {
//        case "a"..."z":
//            return true
//        case "A"..."Z":
//            return true
//        default:
//            return false
//        }
//    }
//}
