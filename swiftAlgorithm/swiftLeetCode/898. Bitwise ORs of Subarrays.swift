//
//  898. Bitwise ORs of Subarrays.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/05/03.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func subarrayBitwiseORs(_ arr: [Int]) -> Int {
//    var res = Set<Int>(), last = Set<Int>(), cur = Set<Int>()
//    for i in arr {
//        cur = Set<Int>([i])
//        for j in last {
//            cur.insert(i|j)
//        }
//        last = cur
//        print(cur)
//        res.formUnion(cur)
//        print(res)
//        print(" ")
//    }
//    return res.count
//}
