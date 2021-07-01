//
//  확장 게임 16920.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/04.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution16920() {
//    
//    let NMP = readLine()!.split(separator: " ").map { Int($0)! }
//    let S = readLine()!.split(separator: " ").map { Int($0)! }
//    var visit = [[Bool]](repeating: [Bool](repeating: false, count: NMP[1]), count: NMP[0])
//    var rand = [[String]]()
//    
//    var srr = [String]()
//    let dx = [0,0,1,-1]
//    let dy = [1,-1,0,0]
//    
//    var answer = [Int](repeating: 0, count: NMP[2] + 1)
//    
//    struct Point {
//        var x = 0
//        var y = 0
//        
//        var value = 0
//    }
//    
//    var qu = [Point]()
//    for i in 0 ..< NMP[0] {
//        
//        let input = readLine()!.map { String($0) }
//        for j in 0 ..< input.count {
//            if input[j] != "." && input[j] != "#" {
//                visit[i][j] = true
//                answer[Int(input[j])!] += 1
//                qu.append(Point(x: i, y: j, value: Int(input[j])! ))
//            }
//        }
//        rand.append(input)
//    }
//
//    func checkRange(x: Int, y: Int) -> Bool {
//        return x >= 0 && y >= 0 && x < NMP[0] && y < NMP[1] && rand[x][y] != "#"
//    }
//    
//    func DFS(depth: Int, x: Int, y: Int, index: Int)  {
//        
//        if depth == S[index - 1] {
//            return
//        }
//        
//        for i in 0 ..< 4 {
//            let tx = dx[i] + x
//            let ty = dy[i] + y
//            
//            if checkRange(x: tx, y: ty) && rand[tx][ty] == "." && !visit[tx][ty] {
//                visit[tx][ty] = true
//                rand[tx][ty] = "\(index)"
//                answer[index] += 1
//                qu.append(Point(x: tx, y: ty, value: index))
//                DFS(depth: depth + 1, x: tx, y: ty, index: index)
//            }
//        }
//    }
//    
//    var index = 0
//    while index < qu.count {
//        let top = qu[index]
//        
//        DFS(depth: 0, x: top.x, y: top.y, index: top.value)
//        index += 1
//    }
//    
//    var ans = ""
//    for i in 1 ..< answer.count {
//        ans += "\(answer[i]) "
//    }
//    
//    print(ans)
//}
