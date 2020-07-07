//
//  오픈채팅방.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ record:[String]) -> [String] {
//    
//    var myDic = [String: String]()
//    var answer = [String]()
//    
//    for srr in record {
//        let order = srr.components(separatedBy: " ")
//        if order[0] == "Enter" {
//            myDic[order[1]] = order[2]
//        } else if order[0] == "Change" {
//            myDic[order[1]] = order[2]
//        }
//    }
//    
//    for srr in record {
//        let order = srr.components(separatedBy: " ")
//        if order[0] == "Enter" {
//            answer.append( "\(myDic[order[1]]!)님이 들어왔습니다." )
//        } else if order[0] == "Leave" {
//            answer.append( "\(myDic[order[1]]!)님이 나갔습니다." )
//        }
//    }
//    
//    return answer
//}
