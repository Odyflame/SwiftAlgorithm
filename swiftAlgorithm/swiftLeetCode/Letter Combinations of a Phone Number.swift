//
//  Letter Combinations of a Phone Number.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//let digit_map: [Character: String] = ["2":"abc", "3":"def", "4":"ghi", "5":"jkl",
//                "6":"mno", "7":"pqrs", "8":"tuv", "9":"wxyz"]
//
//func letterCombinations(_ digits: String) -> [String] {
//    let digits = Array(digits)
//    var output = [String]()
//    dfs(0, digits, [String](), &output)
//    return output
//}
//
//private func dfs(_ currentIndex: Int, _ digits: [Character], _ path: [String], _ output: inout [String]) {
//    guard currentIndex < digits.count else {
//        if !path.isEmpty {
//            output.append(path.joined(separator: ""))
//        }
//        return
//    }
//    for letter in digit_map[digits[currentIndex]]! {
//        var newPath = path + [String(letter)]
//        dfs(currentIndex + 1, digits, newPath, &output)
//    }
//}
let dialNums = ["", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]

private func dfs17(depth : Int, sum: String, sArray: String, answer: inout [String]) {
    if depth == sArray.count {
        answer.append(sum)
        return
    }
    
    let digit = Array(sArray)
    let pos = Int(String(digit[depth]))!
    let counts = dialNums[pos]
    
    for i in 0 ..< Array(counts).count {
        dfs17(depth: depth + 1, sum: sum + String(Array(counts)[i]), sArray: sArray, answer: &answer)
    }
}

func letterCombinations(_ digits: String) -> [String] {
    
    if digits.contains("0") || digits.contains("1") || digits.isEmpty { return [] }
    var answer = [String]()
    
    dfs17(depth: 0, sum: "", sArray: digits, answer: &answer)
    
    return answer
}
