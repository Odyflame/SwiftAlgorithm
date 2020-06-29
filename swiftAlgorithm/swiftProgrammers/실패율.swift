//
//  실패율.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/29.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

// 다시 해보는 것이 좋다
//func solution5(_ N:Int, _ stages:[Int]) -> [Int] {
//
//    var stageNonClear = [0]
//    var failRate: [Int: Double] = [:]
//
//    (1...N + 1).forEach { i in
//        stageNonClear.append(stages.filter{$0 == i}.count)
//    }
//
//    for i in 1...N {
//        let n = stageNonClear[i..<stageNonClear.endIndex].reduce(0, +)
//        if n == 0 {
//            failRate[i] = -1
//        } else {
//            failRate[i] = Double(stageNonClear[i]) / Double(stageNonClear[i..<stageNonClear.endIndex].reduce(0, +))
//        }
//    }
//
//    return failRate.keys.lazy.sorted { (a, b) -> Bool in
//        if failRate[a]! > failRate[b]! {
//            return true
//        } else if failRate[a]! == failRate[b]! {
//            return a < b
//        } else {
//            return false
//        }
//    }
//
//}


//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//
//    var answer = [Int]()
//    var stageNonClear: [Int] = [0]
//    var failRate: [Int: Double] = [:]
//
//    for i in 1...N {
//        stageNonClear.append( stages.filter { $0 == i }.count )
//    }
//
//    for i in 1...N {
//
//        let n = stageNonClear[i..<stageNonClear.endIndex].reduce(0, +)
//
//        if n == 0 {
//            failRate[i] = -1
//
//        } else {
//            failRate[i] = Double( stageNonClear[i] ) / Double ( stageNonClear[i..<stageNonClear.endIndex].reduce(0, +) )
//
//        }
//    }
//
//    return failRate.keys.sorted { (a, b) -> Bool in
//        if failRate[a]! > failRate[b]! {
//            return true
//        } else if failRate[a]! == failRate[b]! {
//            return a < b
//        } else {
//            return false
//        }
//    }
//
//}


//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//
//    var table: [Int:Int] = [:]
//
//    for stage in stages {
//        if let counter = table[stage] {
//            table[stage] = counter + 1
//        } else {
//            table[stage] = 1
//        }
//    }
//
//    var failureRate = [(Int, Double)]()
//    var tempCount = stages.count
//
//    for i in 1...N {
//        if let stageCount = table[i] {
//            let rate = Double(stageCount) / Double(tempCount)
//            tempCount -= stageCount
//            failureRate.append((i, rate))
//        } else {
//            failureRate.append((i, 0.0))
//        }
//    }
//
//    let result = failureRate.sorted(by: { $0.1 > $1.1 }).compactMap({$0.0})
//    return result
//}


//func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//
//    var value: [Int: Int] = [:]
//    for stage in stages {
//        if !value.isEmpty && value.keys.contains(stage) { value[stage]! += 1; continue }
//        value[stage] = 1
//    }
//
//    var result: [(stage: Int, value: Double)] = []
//
//    var success: Int = stages.count
//
//    for stage in 1...N {
//        if !value.keys.contains(stage) { result.append((stage, 0)); continue }
//        result.append((stage, Double(value[stage]!) / Double(success)))
//
//        success -= value[stage]!
//    }
//
//    result.sort { return $0.value == $1.value ? $0.stage < $1.stage : $0.value > $1.value }
//    return result.compactMap { $0.stage }
//
//}

//func solution5(_ N:Int, _ stages:[Int]) -> [Int] {
//
//    var value: [Int:Int] = [:]
//
//    for stage in stages {
//        if !value.isEmpty && !value.keys.contains(stage) {
//            value[stage]! += 1
//        } else {
//            value[stage]! = 1
//        }
//    }
//
//    var result = [(Int, Double)]()
//    var tempCount = stages.count
//
//    for i in 1...N {
//        if !value.keys.contains(i) {
//            result.append( (i, 0.0) )
//        } else {
//            result.append( (i, Double(value[i]!) / Double(tempCount)) )
//            tempCount -= value[i]!
//        }
//
//    }
//
//    return
//}
