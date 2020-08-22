//
//  Q2.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/04.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ arrayA:[Int], _ arrayB: [Int]) -> [Int] {
//
//    var a = [Int]()
//    var b = [Int]()
//
//    for i in arrayA {
//        if !a.contains(where: { $0 == i }) {
//            a.append(i)
//        }
//    }
//
//    for i in arrayB {
//        if !b.contains(where: { $0 == i }) {
//            b.append(i)
//        }
//    }
//
//    func sum(_ list1: [Int], _ list2: [Int] ) -> [Int] {
//        var list1 = list1
//
//        for i in list2 {
//            if !list1.contains(i) {
//                list1.append(i)
//            }
//        }
//
//        return list1
//    }
//
//    func delete(_ list1: [Int], _ list2: [Int] ) -> [Int] {
//        var list3 = [Int]()
//
//        list3 = list1.filter { !list2.contains($0) }
//
//        return list3
//    }
//
//    func union(_ list1: [Int], _ list2: [Int] ) -> [Int] {
//        var list3 = [Int]()
//
//        list3 = list1.filter { list2.contains($0) }
//
//        return list3
//    }
//
//    print(sum(a, b))
//    print(delete(a, b))
//    print(union(a, b))
//
//    return a
//}
