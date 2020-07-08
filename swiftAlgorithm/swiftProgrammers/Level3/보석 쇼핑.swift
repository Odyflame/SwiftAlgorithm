//
//  보석 쇼핑.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation

//func solution(_ gems:[String]) -> [Int] {
//    
//    해당코드는 시간초과가 발생한다
//    var answer: (Int, Int) = (0, 99999999)
//    var sset = Set<String>()
//
//    gems.map { a -> String in
//        sset.insert(a)
//        return a
//    }
//
//    for i in 0 ..< gems.count {
//        var tempSet = Set<String>()
//
//        for j in i ..< gems.count {
//            tempSet.insert( gems[j] )
//            if tempSet.count == sset.count {
//
//                if answer.1 - answer.0 > j - i {
//                    answer = (i + 1, j + 1)
//                } else if answer.1 - answer.0 == j - i {
//                    answer = answer.0 < i + 1 ? answer : (i + 1, j + 1)
//                }
//
//                break
//            }
//        }
//
//    }
//
//    return [answer.0, answer.1]
//}

//투포인터를 사용했지만 나는 시간초과가 떴다, 사실 이 코드는 제대로 동작하지 않는다.
//func solution(_ gems:[String]) -> [Int] {
//    var answer = [Int]()
//    var mySet = Set(gems)
//
//    if gems.count <= 1 {
//        return [1, 1]
//    }
//
//    var myStartIndex = 0
//    var myEndIndex = gems.count - 1
//    answer = [myStartIndex + 1, myEndIndex + 1]
//
//    while myStartIndex < myEndIndex {
//
//        var jake = Set(Array(gems[myStartIndex + 1...myEndIndex]))
//        var tom = Set(Array(gems[myStartIndex...myEndIndex - 1]))
//
//        if mySet == tom {
//            myEndIndex -= 1
//        } else if mySet == jake {
//            myStartIndex += 1
//        } else {
//            answer = [myStartIndex + 1, myEndIndex + 1]
//            break
//        }
//    }
//
//    return answer
//}

import Foundation

func solution(_ gems:[String]) -> [Int] {
    var answer = [Int]()
    var mySet = Set(gems)
    
    if gems.count <= 1 {
        return [1, 1]
    }
    
    var myStartIndex = 0
    var myEndIndex = 0
    var myDic = [String: Int]()
    var minDist = 9999999
    
    while myStartIndex <= myEndIndex {
        
        if myDic.count >= mySet.count {
            
            myDic[gems[myStartIndex]]! -= 1
            if myDic[gems[myStartIndex]] == 0 {
                //myDic[gems[myStartIndex]] = nil
                myDic.removeValue(forKey: gems[myStartIndex])
            }
            myStartIndex += 1
        } else if myEndIndex == gems.count {
            break
        } else {
//            if myDic[gems[myEndIndex]] == nil {
//                myDic[gems[myEndIndex]] = 1
//            } else {
//                myDic[gems[myEndIndex]]! += 1
//            }
            if let gem = myDic[gems[myEndIndex]] {
                myDic[gems[myEndIndex]] = gem + 1
            } else {
                myDic[gems[myEndIndex]] = 1
            }
            myEndIndex += 1
        }
        
        if myDic.count == mySet.count {
            if myEndIndex - myStartIndex < minDist {
                minDist = myEndIndex - myStartIndex
                answer = [ myStartIndex + 1, myEndIndex]
            }
        }
    }
    
    return answer
}
