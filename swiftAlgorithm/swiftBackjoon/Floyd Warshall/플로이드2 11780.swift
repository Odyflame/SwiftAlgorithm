//
//  플로이드2 11780.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/30.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//extension String {
//    static let zero = Character("0").asciiValue!
//    func parse() -> [Int] {
//        var answer: [Int] = []
//        var temp = 0
//
//        for c in self {
//            if c == " " {
//                answer.append(temp)
//                temp = 0
//                continue
//            }
//
//            temp *= 10
//            temp += Int(c.asciiValue! - Self.zero)
//        }
//
//        answer.append(temp)
//        return answer
//    }
//}
//
//func solution11780() {
//    var INF = 9999999
//    let N = Int(readLine()!)!
//    let M = Int(readLine()!)!
//
//    var dp = [[Int]](repeating: [Int](repeating: INF, count: N + 1), count: N + 1)
//
//    var andDP = [[[Int]]](repeating: [[Int]](repeating: [Int](), count: N + 1) , count: N + 1)
//
//    for i in 0 ..< M {
//        var temp = readLine()!.parse()
//
//        dp[temp[0]][temp[1]] = min(dp[temp[0]][temp[1]], temp[2])
//        andDP[temp[0]][temp[1]] = [temp[0], temp[1]]
//    }
//
//    for k in 1 ... N {
//        for i in 1 ... N {
//            for j in 1 ... N {
//
//                if i == j {
//                    continue
//                }
//
//                if dp[i][j] > dp[i][k] + dp[k][j] {
//                    dp[i][j] = dp[i][k] + dp[k][j]
//
//                    if andDP[i][k].isEmpty && andDP[k][j].isEmpty {
//                        andDP[i][j] = [i, j]
//                    } else if andDP[i][k].isEmpty {
//                        andDP[i][j] = [i] + andDP[k][j]
//                    } else if andDP[k][j].isEmpty {
//                        andDP[i][j] = andDP[i][k] + [j]
//                    } else {
//                        var temp = andDP[i][k].last
//                        andDP[i][k].removeLast()
//                        andDP[i][j] = andDP[i][k] + andDP[k][j]
//                        andDP[i][k] = andDP[i][k] + [temp!]
//                    }
//
//
//                }
//            }
//        }
//    }
//
//    for i in 0 ..< N {
//        var answer = ""
//        for j in 0 ..< N {
//            if i == j {
//                answer = answer + "0 "
//            } else {
//                answer = answer + "\(dp[i + 1][j + 1]) "
//            }
//        }
//        print(answer)
//    }
//
//    for i in 1 ... N {
//        for j in 1 ... N {
//            var answer = ""
//            for k in andDP[i][j] {
//                answer = answer + "\(k) "
//            }
//            if answer == "" {
//                print("0")
//            }else {
//                print("\(andDP[i][j].count) " + answer)
//            }
//        }
//
//    }
//}
