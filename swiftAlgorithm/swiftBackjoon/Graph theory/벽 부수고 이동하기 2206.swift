//
//  벽 부수고 이동하기 2206.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/24.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation


func solution2206() {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    var arr = [[Int]]()
    
    let dx = [0,0,-1,1]
    let dy = [1,-1,0,0]
    
    for i in 0 ..< nm[0] {
        var input = Array(readLine()!)
        var temp = [Int]()
        for j in input {
            temp.append(Int(String(j))!)
        }
        arr.append(temp)
    }
    struct Point {
        var x: Int
        var y: Int
        var isUsePower: Int
    }
    
    var qu = [Point]()
    qu.append(Point(x: 0, y: 0, isUsePower: 1))
    var index = 0
    var visit = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: 0, count: 2), count: 1001), count: 1001)
    visit[0][0][1] = 1
    
    func checkRange(x: Int, y: Int) -> Bool {
        return x >= 0 && y >= 0 && x < nm[0] && y < nm[1]
    }
    
    var answer = -1
    while index < qu.count {
        var top = qu[index]
        
        if top.x == nm[0] - 1 && top.y == nm[1] - 1 {
            answer = visit[top.x][top.y][top.isUsePower]
            break
        }
        for i in 0 ..< 4 {
            var tx = dx[i] + top.x
            var ty = dy[i] + top.y
            
            if checkRange(x: tx, y: ty) {
                if arr[tx][ty] == 1 && top.isUsePower > 0 {
                    visit[tx][ty][top.isUsePower - 1] = visit[top.x][top.y][top.isUsePower] + 1
                    qu.append(Point(x: tx, y: ty, isUsePower: top.isUsePower - 1))
                }
                if arr[tx][ty] == 0 && visit[tx][ty][top.isUsePower] == 0 {
                    visit[tx][ty][top.isUsePower] = visit[top.x][top.y][top.isUsePower] + 1
                    qu.append(Point(x: tx, y: ty, isUsePower: top.isUsePower))
                }
            }
        }
        
        index += 1
    }
    
    print(answer)
}

