//
//  DFS와BFS 1260.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/05/28.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

var dfsAnswer = ""
var bfsAnswer = ""
var dp1260 = [[Int]]()
var check1260 = [Int]()

func DFS1260(start: Int) -> Int {
    
    dfsAnswer += "\(start) "
    check1260[start] = 1
    
    for (index, num) in dp1260[start].sorted().enumerated() {
        if check1260[num] == 0 {
            check1260[num] = 1
            DFS1260(start: num)
        }
    }
    
    return 0
}

func BFS1260(start: Int) -> Int {

    bfsAnswer += "\(start) "
    
    var bfs:[Int] = []
    bfs.append(start)
    check1260[start] = 1
    while !bfs.isEmpty {
        var firstBFS = bfs.removeFirst()
        
        for (index, num) in dp1260[firstBFS].sorted().enumerated() {
            if check1260[num] == 0 {
                check1260[num] = 1
                bfsAnswer += "\(num) "
                bfs.append(num)
            }
        }
    }
    
    return 0
}

func solution1260() {

    //guard let input = readLine()?.split(separator: " ").map(String.init) else { return }
    //dfsVisited: Int = Array(repeating: false, count: n + 1)
    var arr = readLine()?.split(separator: " ").map { String($0) }
    
    var temp = [Int](repeating: 0, count: 0)
    dp1260 = [[Int]](repeating: temp, count: 1005)
    check1260 = [Int](repeating: 0, count: 1005)
    
    for i in 0 ..< Int(arr![1])! {
        var line = readLine()?.split(separator: " ").map { String($0) }
        
        dp1260[Int(line![0])!].append(Int(line![1])!)
        dp1260[Int(line![1])!].append(Int(line![0])!)
    }
    
    DFS1260(start: Int(arr![2])!)
    print(dfsAnswer)
    
    check1260 = [Int](repeating: 0, count: 1005)
    
    BFS1260(start: Int(arr![2])!)
    print(bfsAnswer)
}
