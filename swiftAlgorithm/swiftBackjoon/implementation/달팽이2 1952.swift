//
//  달팽이2 1952.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/30.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution1952() {
    var MN = readLine()!.split(separator: " ").map { Int($0)! }

    var answer = 0
    func DFS(m: Int, n: Int, sum: Int) -> Int {

        if n == 2 {
            return sum + 3
        } else if m == 2 {
            return sum + 2
        }  else if m == 1 {
            return sum
        } else if n == 1 {
            return sum + 1
        }

        return DFS(m: m - 2, n: n - 2, sum: sum + 4)
    }

    answer = DFS(m: MN[0], n: MN[1], sum: 0)
    print(answer)
}
