//
//  주식 11501.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/15.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

// dfs로 풀었더니 테케는 맞지만 4%에서 시간초과가 난다.
// 역시 dp나 다른걸 써서 풀었어야했다.

func solution11501() {
    let N = Int(readLine()!)!
    for i in 0..<N {
        var answer = 0
        var maxJuga = 0
        let n = Int(readLine()!)!
        let jusik = readLine()!.split(separator: " ").map{ Int($0)! }
        
        // dp 로 계산해야할것같다.
        // dp는 그날 가지고 있는 주식과 그 이익의 튜플이다.
        
        for index in (0..<n).reversed() {
        //for index in stride(from: n-1, to: -1, by: -1) {
            if maxJuga < jusik[index] {
                maxJuga = jusik[index]
            } else {
                answer += maxJuga - jusik[index]
            }
        }
        
//        var dp = [(Int, Int)](repeating: (0, 0), count: n)
//
//        dp[0] = (jusik[0], -jusik[0])
//
//        for index in 0..<n - 1 {
//
//        }
//
//        dp = [(Int, Int)](repeating: (0, 0), count: n)
//        dp[0] = (0, 0)
//
//        for index in 0 ..< n-1 {
//
//        }
        
//        func dfs(index: Int, sum: Int, num: Int) { // index, 이익, 가지고 있는 주식 개수
//            if index == n {
//                answer = max(answer, sum)
//                return
//            }
//
//            dfs(index: index + 1, sum: sum - jusik[index], num: num + 1) // 주식 하나를 산다
//            //dfs(index: index + 1, sum: sum, num: num)// 아무것도 안한다.
//            // 원하는 만큼 가지고 있는 주식을 판다.
//            for i in 0...num {
//                dfs(index: index + 1, sum: sum + jusik[index] * i, num: num - i)
//            }
//        }
//
//        dfs(index: 0, sum: 0, num: 0)
        print(answer)
    }
}
