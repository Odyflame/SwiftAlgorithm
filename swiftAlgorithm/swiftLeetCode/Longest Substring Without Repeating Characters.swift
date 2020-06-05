//
//  Longest Substring Without Repeating Characters.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/04.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    
    var finalAnswer = 0
    let sArray = Array(s)
    
    if s.count == 0 {
        return 0
    } else if s.count == 1 {
        return 1
    }
    
    //brute force 시간낭비가 심해진다.
//    for i in 0 ..< s.count {
//        var checkUnique = Set<Character>()
//        var answer = 0
//
//        for j in i ..< s.count {
//            var checkCount = checkUnique.count
//            checkUnique.insert(sArray[j])
//            if checkUnique.count == checkCount {
//                break;
//            } else {
//                answer+=1
//            }
//        }
//
//        finalAnswer = finalAnswer < answer ? answer : finalAnswer
//    }
    var i = 0, j = 0
    var checkUnique = Set<Character>()
    
    //sliding window -> 역시 타임아웃 발생
//    while i < s.count && j < s.count {
//        if !checkUnique.contains(sArray[j]) {
//            checkUnique.insert(sArray[j])
//            j += 1
//            finalAnswer = max(finalAnswer, j - i)
//            //finalAnswer = finalAnswer > j - i ? finalAnswer : j - i
//        } else {
//            checkUnique.remove(sArray[i])
//            i += 1
//        }
//    }

    var startIndex = 0, charAndPos = [Character: Int]()
    // 아래는 답지, 최적화된 sliding window
    // 출처 : https://github.com/soapyigu/LeetCode-Swift/blob/master/String/LongestSubstringWithoutRepeatingCharacters.swift
    for (index, char) in sArray.enumerated() {
        if let pos = charAndPos[char] {
            startIndex = max(startIndex, pos)
        }
        
        //update to next valid position
        charAndPos[char] = index + 1
        finalAnswer = max(finalAnswer, index - startIndex + 1)
        
    }
    
    return finalAnswer
}

