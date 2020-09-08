//
//  큰 수 A+B.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/08.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution10757() -> String {
    var answer = ""
    var carry = 0
    var x = 1

    var arr = readLine()?.split(separator: " ").map { String($0) }
    var num1: String, num2: String
    
    num1 = arr![0]
    num2 = arr![1]

    var nums = [Character]()

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

    ans = addStr1(num: num1, num2: num2)
    
    return ans
}

