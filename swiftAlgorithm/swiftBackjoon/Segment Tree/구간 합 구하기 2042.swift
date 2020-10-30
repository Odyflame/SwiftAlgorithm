//
//  구간 합 구하기 2042.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/29.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution2042(){
    
    var a = [Int]()
    var tree = [Int](repeating: 0, count: 10000001)
    
    func makeTree( a: inout [Int], tree: inout [Int], node: Int, start: Int, end: Int) -> Int {
        
        if start == end {
            tree[node] = a[start]
            return tree[node]
        } else {
            tree[node] = makeTree(a: &a, tree: &tree, node: node * 2, start: start, end: (start + end) / 2) + makeTree(a: &a, tree: &tree, node: node * 2 + 1, start: (start + end) / 2 + 1, end: end)
            return tree[node]
        }
        
    }
    
    func sum(tree: inout [Int], node: Int, start: Int, end: Int, left: Int, right: Int) -> Int {
        if left > end || right < start {
            return 0
        }
        if left <= start && end <= right {
            return tree[node]
        }
        return sum(tree: &tree, node: node*2, start: start, end: (start + end) / 2, left: left, right: right) + sum(tree: &tree, node: node*2 + 1, start: (start + end) / 2 + 1, end: end, left: left, right: right)
    }
    
    func update(tree: inout [Int], node: Int, start: Int, end: Int, index: Int, diff: Int) {
        if index < start || index > end { return }
        tree[node] = tree[node] + diff
        if start != end {
            update(tree: &tree, node: node * 2, start: start, end: (start + end) / 2, index: index, diff: diff)
            update(tree: &tree, node: node*2 + 1, start: (start + end) / 2 + 1, end: end, index: index, diff: diff)
        }
    }
    
    a = [1,2,3,4,5,6,7,8,9]
    makeTree(a: &a, tree: &tree, node: 1, start: 0, end: 8)
    print(1)
}
