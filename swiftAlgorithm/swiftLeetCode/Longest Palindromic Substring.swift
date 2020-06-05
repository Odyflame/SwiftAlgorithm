//
//  Longest Palindromic Substring.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/05.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func longestPalindrome(_ s: String) -> String {
    
    var answer: String = ""
    let sArray = Array(s)
    
    guard s.count > 1 else {
        return s
    }
    
    var endIndex = 0, startIndex = 0
    
    for (index, num) in s.enumerated() {
        //팰린드롬을 찾는 것을 생각해봐야한다
        //홀수인경우
        let value1 = searchPalindrome(left: index, right: index, s: sArray)
        let value2 = searchPalindrome(left: index, right: index + 1, s: sArray)
        
        let value3 = max(value1, value2)
        
        if value3 > endIndex - startIndex {
            startIndex = index - (value3 - 1) / 2
            endIndex = index + value3 / 2
        }
    }
    
    var s = sArray[startIndex...endIndex]
    
    var tt = String(s)
    
    return tt
}

func searchPalindrome(left: Int, right: Int, s: Array<Character>) -> Int {
    
    var left = left, right = right
    
    while left >= 0 && right < s.count && s[left] == s[right] {
        left -= 1
        right += 1
    }
    
    return right - left - 1
}
