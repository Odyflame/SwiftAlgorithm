//
//  CQ2.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution2(_ n: Int, _ customers: [String]) -> Int {
//
//    func calculateDate(cus: Customer) -> Customer {
//
//        var cus = cus
//
//        if cus.startTime[1] + cus.duringTime > 60 {
//
//            cus.startTime[1] = cus.startTime[1] + cus.duringTime - 60
//            cus.startTime[0] += 1
//
//            if cus.startTime[0] + 1 == 24 {
//
//                cus.startTime[0] = 0
//                cus.date[1] = cus.date[1] + 1
//
//                if cus.date[0] == 11 || cus.date[0] == 9 || cus.date[0] == 6 || cus.date[0] == 4 {
//
//                    if cus.date[1] == 32 {
//                        cus.date[0] += 1
//                    }
//
//                } else if cus.date[0] == 2 {
//                    if cus.date[1] == 29 {
//                        cus.date[0] += 1
//                    }
//                } else {
//                    if cus.date[1] == 30 {
//                        cus.date[0] += 1
//                        if cus.date[0] == 13 {
//                            cus.date[0] = 1
//                        }
//                    }
//                }
//
//            }
//
//        } else {
//            cus.startTime[1] = cus.startTime[1] + cus.duringTime
//        }
//
//        return cus
//    }
//
//    struct Customer {
//        var date = [Int]()
//        var startTime = [Int]()
//        var duringTime = 0
//    }
//
//    var newCuscomers = [Customer]()
//    for customer in customers {
//        var temp = customer.components(separatedBy: [" "])
//        var temp1 = temp[0].components(separatedBy: ["/"]).map { Int($0)! }
//        var temp2 = temp[1].components(separatedBy: [":"]).map { Int($0)! }
//
//        var cus = Customer(date: temp1, startTime: temp2, duringTime: Int(temp[2])!)
//        newCuscomers.append(cus)
//    }
//
//    var N = [Customer]()
//    var answer = [(Int, Int)](repeating: (0, 0), count: n)
//    var point = 0
//
//    while !newCuscomers.isEmpty {
//
//        if point == n {
//            point = 0
//        }
//        var cus = newCuscomers.removeFirst()
//
//        if N.count < n {
//            cus = calculateDate(cus: cus)
//            N.append(cus)
//            if answer[point] == (0,0) {
//                answer[point] = (point, 1)
//            } else {
//                answer[point] = (point, answer[point].1  + 1)
//            }
//        } else {
//
//        }
//
//
//        point += 1
//
//    }
//    return answer
//}

//func solution(_ k: Int, _ score: [Int]) -> Int {
//    var answer = [Int: Int]()
//
//    var scores = [Int: Set<Int>]()
//
//    for i in 0 ..< score.count - 1 {
//        if scores[score[i] - score[i + 1]] == nil {
//            var temp = Set<Int>()
//            temp.insert(i)
//            temp.insert(i + 1)
//            scores[score[i] - score[i + 1]] = temp
//        } else {
//            scores[score[i] - score[i + 1]]?.insert(i)
//            scores[score[i] - score[i + 1]]?.insert(i + 1)
// 
//        }
//    }
//
//    var ans = scores.filter {
//        $0.value.count >= k + 1
//    }
//    
//    var finalAns = Set<Int>()
//    
//    for next in ans {
//        let temp = Array(next.value)
//        for i in temp {
//            finalAns.insert(i)
//        }
//    }
//    
//    return score.count - finalAns.count
//}

//func solution(_ depar: String, _ hub: String, _ dest: String, roads:[[String]]) -> Int {
//
//    var myRoads = [String: [String]]()
//
//    for next in roads {
//        if myRoads[next[0]] == nil {
//            myRoads[next[0]] = [next[1]]
//        } else {
//            myRoads[next[0]]?.append(next[1])
//        }
//    }
//
//    var deparAnswer = 0
//    var hubAnswer = 0
//
//    var queue = [String]()
//    queue.append(depar)
//
//    while !queue.isEmpty {
//        var temp = queue.removeFirst()
//
//        if temp == hub {
//            deparAnswer = (deparAnswer + 1) % 10007
//            continue
//        }
//
//        if let road = myRoads[temp] {
//            for next in road {
//                queue.append(next)
//            }
//        }
//
//    }
//
//    if deparAnswer == 0 {
//        return 0
//    }
//
//    queue = [String]()
//    queue.append(hub)
//
//    while !queue.isEmpty {
//        var temp = queue.removeFirst()
//
//        if temp == dest {
//            hubAnswer = (hubAnswer + 1) % 10007
//            continue
//        }
//
//        if let road = myRoads[temp] {
//            for next in road {
//                queue.append(next)
//            }
//        }
//
//    }
//
//    if hubAnswer == 0 {
//        return 0
//    }
//
//    return deparAnswer * hubAnswer
//}
