//
//  가르침 1062.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/30.
//  Copyright © 2021 odyflame. All rights reserved.
//

// 시간초과 코드 백준에서 swift로 아무도 못품, 로직은 다른 정답코드와 똑같은것같다.
import Foundation

func solution1062() {
    let NK = readLine()!.split(separator: " ").map { Int($0)! }

    var anta = Set(["a", "t", "n", "i", "c"])
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    var dp = [String: Int]()
    var strings = [String]()

    for _ in 0 ..< NK[0] {
        var srr = readLine()!

        var tempRange = srr.index(srr.startIndex, offsetBy: 4) ... srr.index(srr.endIndex, offsetBy: -5)
        var temp = String(srr[tempRange])

        strings.append(temp)
    }

    if NK[1] < 5 {
        print(0)
    } else if NK[1] == 26 {
        print(NK[0])
    } else {
        var answer = 0

        dp["a"] = 1
        dp["t"] = 1
        dp["i"] = 1
        dp["n"] = 1
        dp["c"] = 1

        func dfs(depth: Int, array: [String: Int]) {
            if depth == NK[1] {

                var sum = 0
                for str in strings {
                    var flag = true

                    for i in str {
                        if array[String(i)] == nil {
                            flag = false
                            break
                        }
                    }

                    if flag {
                        sum += 1
                    }
                }

                answer = max(answer, sum)
                return
            }

            var array = array
            for alpha in alphabet {

                if array[String(alpha)] == nil {
                    array[String(alpha)] = 1
                    dfs(depth: depth + 1, array: array)
                    array[String(alpha)] = nil
                }
            }
        }

        dfs(depth: 5, array: dp)

        print(answer)
    }
}

//extension String {
//    func charAt(index: Int) -> String {
//        let finalIndex = self.index(self.startIndex, offsetBy: index)
//        return String(self[finalIndex])
//
//    }
//}
