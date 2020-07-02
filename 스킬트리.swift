//
//  스킬트리.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ skill:String, _ skill_trees:[String]) -> Int {
//
//    var answer = 0
//    for tree in skill_trees {
//        var skill = skill
//        var skills = Array(tree)
//        var flag = true
//
//        for i in skills {
//            if skill.contains(i) && i == skill.first {
//                //스킬트리를 만족시키는것
//                skill.removeFirst()
//            } else if skill.contains(i) && i != skill.first {
//                //스킬트리를 만족시키지 못하는것
//                flag = false
//                break
//            } else {
//                //스킬트리 내에 없는것
//
//            }
//        }
//
//        if flag {
//           answer += 1
//        }
//
//    }
//
//    return answer
//}
