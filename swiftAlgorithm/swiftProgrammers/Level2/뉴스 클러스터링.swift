//
//  뉴스 클러스터링.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
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

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    
    var str1 = Array(str1.uppercased())
    var str2 = Array(str2.uppercased())
    
    var strSet1 = [String]()
    var strSet2 = [String]()
    
    for index in 0 ..< str1.count - 1 {
        
        let t1 = String(str1[index])
        let t2 = String(str1[index + 1])
        
        if t1.isAlpha() && t2.isAlpha() {
            var temp = t1 + t2
            strSet1.append(temp)
        }
    }
    
    for index in 0 ..< str2.count - 1 {
        
        let t1 = String(str2[index])
        let t2 = String(str2[index + 1])
        
        if t1.isAlpha() && t2.isAlpha() {
            var temp = t1 + t2
            strSet2.append(temp)
        }
    }
    
    var chaCount = 0
    var str1Count = strSet1.count
    var str2Count = strSet2.count
    if strSet1.count < strSet2.count {
        for str in strSet1 {
            if strSet2.contains(str) { // 이것이 공집합
                let index = strSet2.firstIndex(of: str)
                strSet2.remove(at: index!)
                chaCount += 1
            }
        }
    } else {
        for str in strSet2 {
            if strSet1.contains(str) { // 이것이 공집합
                let index = strSet1.firstIndex(of: str)
                strSet1.remove(at: index!)
                chaCount += 1
            }
        }
    }
    
    if strSet2.count + strSet1.count == chaCount {
        return 65536
    } else {
        var answer = Double( chaCount) / Double(str1Count + str2Count - chaCount )
        return Int(answer * 65536)
    }
}

extension String {
    func isAlpha() -> Bool {
        switch self {
        case "A"..."Z", "a"..."z":
            return true
        default:
            return false
        }
    }
}
