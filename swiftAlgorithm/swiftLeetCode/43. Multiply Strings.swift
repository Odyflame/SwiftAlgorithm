//
//  43. Multiply Strings.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func multiply(_ num1: String, _ num2: String) -> String {
    var answer = ""
    var carry = 0
    var x = 1
    
    if num1 == "0" || num2 == "0" {
        return "0"
    }
    
    var nums = [Character]()
    var num2 = Array(num2)
    
    var tempStr:[String] = []
    
    var ans = ""
    var ans2 = ""
    
    func multiStr(num: String, num2: String ) -> String {
        
        var answer = ""
        var carry = 0
        
        var num = Array(num)
        var temp = 0
        for i in stride(from: num.count - 1, to: -1, by: -1) {
            temp = Int(String(num[i]))! * Int(num2)!
            
            temp += carry
            carry = temp / 10
            answer = String(temp % 10) + answer
            
        }
        if carry > 0 {
            answer = "\(carry)" + answer
        }
        
        return answer
    }
    
    func addStr1(num: String, num2: String) -> String {
        var answer = ""
        
        var index = 0
        var carry = 0
        
        var count = num.count > num2.count ? num.count : num2.count
        var num = Array(num)
        var num2 = Array(num2)
        
        for i in 0 ..< count {

            var one1 = num.count > i ? Int(String(num[num.count - i - 1])) : 0
            var two2 = num2.count > i ? Int(String(num2[num2.count - i - 1])) : 0

            let calc = one1! + two2! + carry
            answer = String(calc % 10) + answer
            carry = (calc - (calc % 10)) / 10
        }

        if carry > 0 {
            answer = "\(carry)" + answer
        }
        
        return answer
    }
    
    for i in 0 ..< num2.count {
        if i == 0 {
            ans = multiStr(num: num1, num2: String(num2[num2.count - i - 1]))
        }
        else {
            var zero = ""
            for j in 0..<i {
                zero += "0"
            }
            ans = addStr1(num: ans , num2: multiStr(num: num1, num2: String(num2[num2.count - i - 1])) + zero )
        }
    }
    
    return ans
}

//func multiply(_ num1: String, _ num2: String) -> String {
//    if num1 == "0" || num2 == "0" { return "0" }
//    
//    var n1 = Array(num1.reversed())
//    var n2 = Array(num2.reversed())
//    var allProducts: [[Int]] = []
//    for (i, c1) in n1.enumerated() {
//        var digits: [Int] = []
//        var carry = 0
//        for _ in 0..<i { digits.append(0) }
//        for (j, c2) in n2.enumerated() {
//            let val1 = c1.asciiValue! - Character("0").asciiValue!
//            let val2 = c2.asciiValue! - Character("0").asciiValue!
//            let prod = Int(val1) * Int(val2) + carry
//            let digit = prod % 10
//            carry = prod / 10
//            digits.append(digit)
//        }
//        if carry > 0 { digits.append(carry) }
//        allProducts.append(digits)
//    }
//    
//    var result = ""
//    var maxDigits = 0
//    allProducts.forEach { maxDigits = max(maxDigits, $0.count) }
//    var carry = 0
//    for i in 0..<maxDigits {
//        var sum = 0
//        for prodArr in allProducts {
//            if i < prodArr.count {
//                sum += prodArr[i]
//            }
//        }
//        sum += carry
//        let digit = sum % 10
//        carry = sum / 10
//        result.append("\(digit)")
//    }
//    
//    if carry > 0 {
//        result.append("\(carry)")
//    }
//    
//    let finalResult = result.reversed()
//    return String(finalResult)
//}
//
//extension String {
//    func charAt(index: Int) -> String {
//        let finalIndex = self.index(self.startIndex, offsetBy: index)
//        return String(self[finalIndex])
//        
//    }
//}
//
//func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//    for i in nums {
//        
//    }
//    return nums.filter({ $0 != val }).count
//}
