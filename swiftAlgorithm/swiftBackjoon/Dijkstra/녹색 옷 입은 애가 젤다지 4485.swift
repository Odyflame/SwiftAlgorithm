//
//  녹색 옷 입은 애가 젤다지 4485.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/30.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution4485() {
//    
//    let dx = [0,0,1,-1]
//    let dy = [1,-1,0,0]
//    var index = 1
//    
//    while true {
//        var n = Int(readLine()!)!
//        if n == 0 { break }
//        var arr = [[Int]]()
//        var dp = [[Int]](repeating: [Int](repeating: 99999999, count: n), count: n)
//        
//        for i in 0 ..< n {
//            var input = readLine()!.split(separator: " ").map { Int($0)! }
//            arr.append(input)
//        }
//        
//        dp[0][0] = arr[0][0]
//        
//        func checkRange(x: Int, y: Int) -> Bool {
//            return x >= 0 && y >= 0 && x < n && y < n
//        }
//        
//        func dijstra(x: Int, y: Int) {
//            if x == n - 1 && y == n - 1 {
//                return
//            }
//            
//            for i in 0 ..< 4 {
//                let tx = dx[i] + x
//                let ty = dy[i] + y
//                
//                if checkRange(x: tx, y: ty) && dp[tx][ty] > dp[x][y] + arr[tx][ty] {
//                    dp[tx][ty] = dp[x][y] + arr[tx][ty]
//                    dijstra(x: tx, y: ty)
//                }
//            }
//        }
//        
//        var idx = 0
//        var qu = [(Int, Int)]()
//        qu.append((0, 0))
//        
//        while idx < qu.count {
//            var top = qu[idx]
//            
//            for i in 0 ..< 4 {
//                let tx = dx[i] + top.0
//                let ty = dy[i] + top.1
//                
//                if checkRange(x: tx, y: ty) && dp[tx][ty] > dp[top.0][top.1] + arr[tx][ty] {
//                    dp[tx][ty] = dp[top.0][top.1] + arr[tx][ty]
//                    qu.append((tx, ty))
//                }
//            }
//            
//            idx += 1
//        }
//        
//        //dijstra(x: 0, y: 0)
//        
//        print("Problem \(index): \(dp[n-1][n-1])")
//        index += 1
//    }
//}
