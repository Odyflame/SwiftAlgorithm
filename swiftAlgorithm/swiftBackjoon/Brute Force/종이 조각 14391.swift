//
//  종이 조각 14391.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/13.
//  Copyright © 2021 odyflame. All rights reserved.
//

// 다시 풀어봐야 한다.
// 도대체 왜이리 어려운거야
import Foundation

func solution14391() {
    let NM = readLine()!.split(separator: " ").map { Int($0)! }

    var arr = [[Int]]()
    var visit = [Bool](repeating: false, count: NM[1] * NM[0])
    var answer = 0

    for _ in 0 ..< NM[0] {
        let temp = Array(readLine()!).map { Int(String($0))! }
        arr.append(temp)
    }

    func calculateSum() {

        var sum = 0
        for i in 0 ..< NM[0] {
            var temp = 0
            for j in 0 ..< NM[1] {
                if visit[i*NM[1] + j] {
                    temp *= 10
                    temp += arr[i][j]
                } else {
                    sum += temp
                    temp = 0
                }
            }
            sum += temp
        }

        for j in 0 ..< NM[1] {
            var temp = 0
            for i in 0 ..< NM[0] {
                if !visit[i*NM[1] + j] {
                    temp *= 10
                    temp += arr[i][j]
                } else {
                    sum += temp
                    temp = 0
                }
            }
            sum += temp
        }

        answer = max(answer, sum)
    }

    func DFS(index: Int)  {
        if index == NM[0] * NM[1] {
            calculateSum()
            return
        }

        visit[index] = true
        DFS(index: index + 1)

        visit[index] = false
        DFS(index: index + 1)
    }

    DFS(index: 0)
    print(answer)
}
