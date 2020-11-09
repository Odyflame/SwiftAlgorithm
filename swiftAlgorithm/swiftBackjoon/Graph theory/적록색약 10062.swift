//
//  적록색약 10062.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/08.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution10026() {
//    
//    var N = Int(readLine()!)!
//    var arr = [[String.Element]]()
//    
//    for i in 0 ..< N {
//        var temp = readLine()!
//        var tempArr = Array(temp)
//        arr.append(tempArr)
//    }
//    
//    var brr = arr
//    
//    var visit = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)
//    var dx = [0,0,1,-1]
//    var dy = [1,-1,0,0]
//    
//    func Range(x: Int, y: Int) -> Bool {
//        return x >= 0 && y >= 0 && x < N && y < N
//    }
//    
//    func DFS(_ x: Int, _ y: Int, _ check: String) -> Int {
//        
//        var queue = [(Int, Int)]()
//        queue.append((x, y))
//        var cnt = 0
//        var answer = 1
//        if brr[x][y] == "G" {
//            brr[x][y] = "R"
//        }
//        while cnt < queue.count {
//            var temp = queue[cnt]
//            cnt += 1
//            
//            for i in 0 ..< 4 {
//                if Range(x: temp.0 + dx[i], y: temp.1 + dy[i]) && String(brr[ temp.0 + dx[i]][temp.1 + dy[i]]) == check && !visit[ temp.0 + dx[i]][temp.1 + dy[i]] {
//                    if check == "G" {
//                        brr[ temp.0 + dx[i]][temp.1 + dy[i]] = "R"
//                    }
//                    queue.append(( temp.0 + dx[i] , temp.1 + dy[i] ))
//                    visit[ temp.0 + dx[i]][temp.1 + dy[i]] = true
//                }
//            }
//        }
//        
//        return answer
//    }
//    
//    var ans = (0, 0)
//    for i in 0 ..< N {
//        for j in 0 ..< N {
//            if brr[i][j] == "R" && !visit[i][j]{
//                ans.0 += DFS(i, j, "R")
//            }
//            if brr[i][j] == "B" && !visit[i][j]{
//                ans.0 += DFS(i, j, "B")
//            }
//            if brr[i][j] == "G" && !visit[i][j]{
//                ans.0 += DFS(i, j, "G")
//            }
//        }
//    }
//    
//    visit = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)
//    for i in 0 ..< N {
//        for j in 0 ..< N {
//            if brr[i][j] == "R" && !visit[i][j]{
//                ans.1 += DFS(i, j, "R")
//            }
//            if brr[i][j] == "B" && !visit[i][j]{
//                ans.1 += DFS(i, j, "B")
//            }
//        }
//    }
//    
//    print("\(ans.0) \(ans.1)")
//}
