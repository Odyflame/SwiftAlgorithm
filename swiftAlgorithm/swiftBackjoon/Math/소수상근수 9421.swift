//
//  소수상근수 9421.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/05/03.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution9421() {
    
    var n = Int(readLine()!)!
    var dic = [Bool](repeating: false, count: n + 1)
    var visit = [Bool](repeating: false, count: n + 1)
    
    func calculate(n: Int) -> Bool {
        
        var calcuVisit = [Int: Bool]()
        var tempN = n
        
        while true {
            var ans = 0
            while tempN > 0 {
                var t = tempN % 10
                tempN = (tempN - t) / 10
                ans += t*t
            }
            
            if ans == 1 {
                return true
            }
            
            if calcuVisit[ans] == nil {
                calcuVisit[ans] = true
            } else {
                return false
            }
            
            tempN = ans
        }
        
        return true
    }
    
    for i in 2 ... n {
        if !visit[i] {
            var j = i*2
            while j <= n {
                visit[j] = true
                j += i
            }
        } // 소수 구하기
        
    }
    
    for i in 2 ... n {
        if !visit[i] && calculate(n: i) {
            print(i)
        }
    }
}
