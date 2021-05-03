//
//  동굴 탐험.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/26.
//  Copyright © 2021 odyflame. All rights reserved.
//
import Foundation

// https://velog.io/@jacob0122/%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-%EB%8F%99%EA%B5%B4-%ED%83%90%ED%97%98 코드 참조
// DFS 버전
//func solution(_ n:Int, _ path:[[Int]], _ order:[[Int]]) -> Bool {
//
//    var tree = [[Int]](repeating: [Int](), count: n)
//    var preOrder = [Int](repeating: 0, count: n)
//    var visit = [Bool](repeating: false, count: n)
//    var hanging = [Int](repeating: 0, count: n)
//
//    for currentPath in path {
//        tree[currentPath[0]].append(currentPath[1])
//        tree[currentPath[1]].append(currentPath[0])
//    }
//
//    for currentOrder in order {
//        preOrder[currentOrder[1]] = currentOrder[0]
//    }
//
//    func DFS(depth: Int) {
//
//        if visit[depth] {
//            return
//        }
//
//        if !visit[preOrder[depth]] {
//            hanging[preOrder[depth]] = depth
//            return
//        }
//
//        visit[depth] = true
//        DFS(depth: hanging[depth])
//        for currentTree in tree[depth] {
//            DFS(depth: currentTree)
//        }
//    }
//
//    if preOrder[0] > 0 {
//        return false
//    }
//
//    visit[0] = true
//    for currentTree in tree[0] {
//        DFS(depth: currentTree)
//    }
//
//    var answer = true
//    visit.forEach {
//        answer = answer && $0
//    }
//
//    return answer
//}

//// BFS
//func solution(_ n:Int, _ path:[[Int]], _ order:[[Int]]) -> Bool {
//    var answer = true
//    var tree = [[Int]](repeating: [Int](), count: n)
//    var visit = [Bool](repeating: false, count: n)
//    var preOrder = [Int](repeating: 0, count: n)
//    var hang = [Int](repeating: 0, count: n)
//
//    for currentPath in path {
//        tree[currentPath[0]].append(currentPath[1])
//        tree[currentPath[1]].append(currentPath[0])
//    }
//
//    for currentOrder in order {
//        preOrder[currentOrder[1]] = currentOrder[0]
//    }
//
//    var qu = [Int]()
//    qu.append(0)
//
//    if preOrder[0] > 0 {
//        return false
//    }
//
//    var index = 0
//
//    while index < qu.count {
//        var top = qu[index]
//        index += 1
//
//        if visit[top] {
//            continue
//        }
//
//        visit[top] = true
//
//        if !visit[preOrder[top]] {
//            hang[preOrder[top]] = top
//            continue
//        }
//
//        qu.append(hang[top])
//        for currentTree in tree[top] {
//            qu.append(currentTree)
//        }
//
//    }
//
//    visit.forEach {
//        answer = answer && $0
//    }
//
//    return answer
//}
