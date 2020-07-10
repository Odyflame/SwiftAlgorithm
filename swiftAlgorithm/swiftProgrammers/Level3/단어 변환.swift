//
//  단어 변환.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    var ans = 999999
    
    func checkString (_ x: String, _ y: String) -> Bool {
        var x = Array(x)
        var y = Array(y)
        var check1 = 0
        
        for i in 0..<x.count {
            if x[i] != y[i] {
                check1 += 1
                if check1 == 2 {
                    return false
                    break
                }
            }
        }
        
        if check1 == 1 {
            return true
        }
        return false
    }
    
    func dfs(_ begin: String,_ sum: Int) -> Int {
        var answer = 0
        
        if begin == target {
            ans = ans > sum ? sum : ans
            return sum
        }
        
        for i in 0..<words.count {
            if !check[i] && checkString(begin, words[i]) {
                check[i] = true
                dfs(words[i], sum + 1)
                check[i] = false
            }
        }
        
        return answer
    }
    
    var check = [Bool](repeating: false, count: 51)
    
    dfs(begin, 0)
    
    return ans
}
