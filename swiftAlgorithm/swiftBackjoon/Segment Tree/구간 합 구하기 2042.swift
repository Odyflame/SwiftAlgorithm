//
//  구간 합 구하기 2042.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/29.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution2042(){

    func makeTree( a: inout [Int], tree: inout [Int : Int], node: Int, start: Int, end: Int) -> Int {

        if start == end {
            tree[node] = a[start]
        } else {
            tree[node] = makeTree(a: &a, tree: &tree, node: node * 2, start: start, end: (start + end) / 2) + makeTree(a: &a, tree: &tree, node: node * 2 + 1, start: (start + end) / 2 + 1, end: end)
        }
        return tree[node]!
    }

    func sum(tree: inout [Int : Int], node: Int, start: Int, end: Int, left: Int, right: Int) -> Int {
        if left > end || right < start {
            return 0
        }
        if left <= start && end <= right {
            return tree[node]!
        }
        return sum(tree: &tree, node: node*2, start: start, end: (start + end) / 2, left: left, right: right) + sum(tree: &tree, node: node*2 + 1, start: (start + end) / 2 + 1, end: end, left: left, right: right)
    }

    func update(tree: inout [Int : Int], node: Int, start: Int, end: Int, index: Int, diff: Int) {
        if index < start || index > end { return }
        tree[node]! += diff
        if start != end {
            update(tree: &tree, node: node * 2, start: start, end: (start + end) / 2, index: index, diff: diff)
            update(tree: &tree, node: node * 2 + 1, start: (start + end) / 2 + 1, end: end, index: index, diff: diff)
        }
    }

    var NMK = readLine()!.components(separatedBy: " ").map { Int($0)! }
    var arr = [Int]()
    var tree = [Int : Int]()

    for i in 0..<NMK[0] {
        var temp = Int(readLine()!)!
        arr.append(temp)
    }

    makeTree(a: &arr, tree: &tree, node: 1, start: 0, end: NMK[0] - 1)

    for i in 0 ..< NMK[1] + NMK[2] {
        var temp = readLine()!.components(separatedBy: " ").map { Int($0)! }

        if temp[0] == 1 {
            temp[1] -= 1
            var diff = temp[2] - arr[temp[1]]
            arr[temp[1]] = temp[2]
            update(tree: &tree, node: 1, start: 0, end: NMK[0] - 1, index: temp[1], diff: diff)
        } else {
            print(sum(tree: &tree, node: 1, start: 0, end: NMK[0] - 1, left: temp[1] - 1, right: temp[2] - 1))
        }
    }

}
