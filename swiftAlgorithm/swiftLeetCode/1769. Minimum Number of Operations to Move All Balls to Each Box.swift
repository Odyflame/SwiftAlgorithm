//
//  1769. Minimum Number of Operations to Move All Balls to Each Box.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/07.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func minOperations(_ boxes: String) -> [Int] {
//    var answer = [Int]()
//
//    var intBoxes = [Int]()
//
//    for box in 0 ..< boxes.count {
//        if "1" == boxes.charAt(index: box) {
//            intBoxes.append(box)
//        }
//    }
//
//    for i in 0 ..< boxes.count {
//        var sum = 0
//        intBoxes.forEach {
//            sum += abs($0 - i)
//        }
//        answer.append(sum)
//    }
//
//    return answer
//}

//extension String {
//    func charAt(index: Int) -> String {
//        let finalIndex = self.index(self.startIndex, offsetBy: index)
//        return String(self[finalIndex])
//
//    }
//}
