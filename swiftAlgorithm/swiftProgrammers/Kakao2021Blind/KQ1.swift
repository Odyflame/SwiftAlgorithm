//
//  KQ1.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/12.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation


//func solution(_ new_id:String) -> String {
//
//    var new_id = new_id.lowercased()
//
//    var answer = ""
//
//    for i in new_id {
//        if String(i).isAlpha() || String(i).isNumber || String(i) == "." || String(i) == "_" || String(i) == "-" {
//            answer += String(i)
//        }
//    }
//
//    // 3
//
//    var temp = ""
//    while temp != answer {
//        temp = answer
//        answer = answer.replacingOccurrences(of: "..", with: ".")
//    }
//
//    //4
//    if !answer.isEmpty && String(answer.first!) == "." {
//        answer.removeFirst()
//    }
//    if !answer.isEmpty && String(answer.last!) == "." {
//        answer.removeLast()
//    }
//
//    //5
//    if answer.isEmpty {
//        answer += "a"
//    }
//
//    //6
//    if answer.count > 15 {
//        answer = String(answer.prefix(15))
//        if String(answer.last!) == "." {
//            answer.removeLast()
//        }
//    }
//
//    //7
//    if answer.count < 3 {
//        while answer.count < 3 {
//            answer += String(answer.last!)
//        }
//    }
//
//    return answer
//}
//
//extension String {
//    var isNumber: Bool {
//        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
//    }
//
//    func isAlpha() -> Bool {
//        return self.rangeOfCharacter(from: CharacterSet.alphanumerics.inverted) == nil && self != ""
//    }
//
//    func isAlpha(ignoreDiacritics: Bool = false) -> Bool {
//        if ignoreDiacritics {
//            return self.range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil && self != ""
//        }
//        else {
//            return self.isAlpha()
//        }
//    }
//
//}

//extension String {
//    func charAt(index: Int) -> String {
//        let finalIndex = self.index(self.startIndex, offsetBy: index)
//        return String(self[finalIndex])
//
//    }
//}
