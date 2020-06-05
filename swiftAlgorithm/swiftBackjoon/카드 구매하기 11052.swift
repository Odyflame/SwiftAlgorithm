//
//  카드 구매하기 11052.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/05.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//var arr11052: [Int] = []

//재귀로 하면 시간초과
//func solution11052()->Int {
//    guard let N = Int(readLine()!) else {
//        return 0
//    }
//
//    let arr = readLine()!.split(separator: " ").map { Int($0)! }
//
//    arr11052 = arr
//
//    return dfs11052(start: 0, N: N, sum: 0)
//}
//
//func dfs11052(start: Int, N: Int, sum: Int) -> Int{
//    var ans = 0
//
//    if start == N {
//      return sum
//    }
//
//    for i in 1...N {
//        if i + start <= N {
//            ans = max(dfs11052(start: i+start, N: N, sum: sum + arr11052[i - 1]), ans)
//        }
//    }
//
//    return ans
//}

func solution11052()->Int {
    guard let N = Int(readLine()!) else {
        return 0
    }
    
    var arr = readLine()!.split(separator: " ").map { Int($0)! }
    arr.insert(0, at: 0)
    
    var dp = [Int](repeating: 0, count: 1005)
    for i in 1...N {
        for j in 1...i {
            dp[i] = max(dp[i - j] + arr[j], dp[i] )
        }
    }
    
    return dp[N]
}
