//
//  압축.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ msg:String) -> [Int] {
//    var answer = [Int]()
//    var Dictionary: [String: Int] = [ "A" : 1, "B" : 2, "C" : 3, "D" : 4, "E" : 5, "F" : 6, "G" : 7, "H" : 8, "I" : 9, "J" : 10, "K" : 11, "L" : 12, "M" : 13, "N" : 14, "O" : 15, "P" : 16, "Q" : 17, "R" : 18, "S" : 19, "T" : 20, "U" : 21, "V" : 22, "W" : 23, "X" : 24, "Y" : 25, "Z" : 26]
//    
//    var srr = Array(msg)
//    
//    var number = 27
//    var temp = 0
//    
//    var i = 0
//    var check = true
//    
//    while i < srr.count && check {
//        
//        for j in i..<srr.count {
//            if let user = Dictionary[String(srr[i...j])]  {
//                // 값이 있을 경우 다시 해본다.
//                temp = user
//                if j == srr.count - 1 {
//                    answer.append(temp)
//                    check = false
//                    break
//                }
//            } else {
//                Dictionary[ String(srr[i...j]) ] = number
//                answer.append(temp)
//                number += 1
//                i += j - i - 1
//                break
//            }
//        }
//        
//        i += 1
//    }
//    
//    return answer
//}


//import Foundation
//
//func solution(_ msg:String) -> [Int] {
//
//    // 알파벳 리스트를 딕셔너리로 준비
//    let alphabetList: [String] = (0..<26).map({String(UnicodeScalar("A".unicodeScalars.first!.value + $0)!)})
//    var dict = [String : Int]()
//    for (i, char) in alphabetList.enumerated() {
//        dict[char] = i + 1
//    }
//
//    var answer = [Int]()
//    var searchWord = ""
//
//    for i in msg {
//        searchWord += String(i)
//
//        // 찾는 단어가 없으면
//        if dict[searchWord] == nil {
//            // 사전에 추가
//            dict[searchWord] = dict.count + 1
//            // 찾는 단어의 길이보다 한글자 작은 값의 인덱스를 반환값에 추가
//            answer.append(dict[String(searchWord.dropLast())]!)
//            // 다음 찾을 단어를 searchWord에서 찾지 못했던 맨 마지막 문자로 설정
//            searchWord = String(searchWord.popLast()!)
//        } else {
//            continue
//        }
//    }
//
//    // 맨 마지막에 남은 글자의 인덱스를 추가해줌
//    if !searchWord.isEmpty {
//        answer.append(dict[searchWord]!)
//    }
//
//    return answer
//}
