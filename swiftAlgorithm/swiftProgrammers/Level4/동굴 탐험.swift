//
//  동굴 탐험.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/26.
//  Copyright © 2021 odyflame. All rights reserved.
//
import Foundation

func solution(_ n:Int, _ path:[[Int]], _ order:[[Int]]) -> Bool {
    
    var tree = [[Int]](repeating: [Int](), count: n)
    var preOrder = [Int](repeating: 0, count: n)
    var visit = [Bool](repeating: false, count: n)
    var hanging = [Int](repeating: 0, count: n)
    
    for currentPath in path {
        tree[currentPath[0]].append(currentPath[1])
        tree[currentPath[1]].append(currentPath[0])
    }
    
    for currentOrder in order {
        preOrder[currentOrder[1]] = currentOrder[0]
    }
    
    func DFS(depth: Int) {
        
        if visit[depth] {
            return
        }
        
        if !visit[preOrder[depth]] {
            hanging[preOrder[depth]] = depth
            return
        }
        
        visit[depth] = true
        DFS(depth: hanging[depth])
        for currentTree in tree[depth] {
            DFS(depth: currentTree)
        }
    }

    if preOrder[0] > 0 {
        return false
    }
    
    visit[0] = true
    for currentTree in tree[0] {
        DFS(depth: currentTree)
    }
    
    var answer = true
    visit.forEach {
        answer = answer && $0
    }
    
    return answer
}
