//
//  정수삼각형 1932.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/05/27.
//  Copyright © 2020 odyflame. All rights reserved.
//

func solution1932() {
    
    let testCase = Int(readLine()!)!
    
    var temp = [Int](repeating: 0, count: 503)
    
    var dp = [[Int]](repeating: temp, count: 503)
    var ans = [[Int]](repeating: temp, count: 503)
    
    for i in 0 ..< testCase {
        let arr2 = readLine()
        let N = arr2!.components(separatedBy: " ")
        
        for j in 0 ..< N.count {
            dp[i][j] = Int(N[j])!
        }
    }
    
    ans[0][0] = (dp[0][0])

    for i in 1 ..< testCase {
        for j in 0 ... i {
            if j == 0 {
                ans[i][j] = ans[i-1][j] + dp[i][j]
            } else if j == i {
                ans[i][j] = ans[i][j] > ans[i-1][j-1] + dp[i][j] ? ans[i][j] : ans[i-1][j-1] + dp[i][j]
            } else {
                ans[i][j] = ans[i][j] > ans[i-1][j-1] + dp[i][j] ? ans[i][j] : ans[i-1][j-1] + dp[i][j]
                ans[i][j] = ans[i][j] > ans[i-1][j] + dp[i][j] ? ans[i][j] : ans[i-1][j] + dp[i][j]
            }
        }
    }
    
    
    var answer = 0
    
    for i in 0..<testCase {
        answer = answer > ans[testCase-1][i] ? answer :  ans[testCase-1][i]
    }
    
    print(answer)
}
