//
//  키패드 누르기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ numbers:[Int], _ hand:String) -> String {
//
//    var leftHand = "00"
//    var rightHand = "20"
//
//    var answer = ""
//    var pos = ["1": "03", "2" : "13", "3" : "23", "4": "02", "5" : "12", "6" : "22","7": "01", "8" : "11", "9" : "21", "0" : "10"]
//
//    for i in numbers {
//
//        switch i {
//        case 1, 4, 7 :
//            answer += "L"
//            leftHand = pos[String(i)]!
//
//        case 3, 6, 9 :
//            answer += "R"
//            rightHand = pos[String(i)]!
//
//        case 2, 5, 8, 0 :
//            let posTemp = Array(pos[String(i)]!)
//            let leftTemp = Array(leftHand)
//            let rightTemp = Array(rightHand)
//
//            let posx = Int(String(posTemp[0]))!
//            let posy = Int(String(posTemp[1]))!
//            let leftx = Int(String(leftTemp[0]))!
//            let lefty = Int(String(leftTemp[1]))!
//            let rightx = Int(String(rightTemp[0]))!
//            let righty = Int(String(rightTemp[1]))!
//
//            let ll = Int(abs(posx - leftx)) + Int(abs(posy - lefty))
//            let rr = Int(abs(posx - rightx)) + Int(abs(posy - righty))
//
//            if ll == rr {
//                if hand == "right" {
//                    answer += "R"
//                    rightHand = pos[String(i)]!
//                } else {
//                    answer += "L"
//                    leftHand = pos[String(i)]!
//                }
//            }
//            else if  ll > rr {
//                answer += "R"
//                rightHand = pos[String(i)]!
//            } else {
//                answer += "L"
//                leftHand = pos[String(i)]!
//            }
//
//        default:
//            break
//        }
//
//    }
//
//    return answer
//}
