//
//  파일명 정렬.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ files:[String]) -> [String] {
//    
//    var files = files
//    
//    var myFiles = [([String], Int)]()
//    var j = 0
//    
//    for file in files {
//        
//        var srr = Array(file)
//        
//        var Head = ""
//        var Number = ""
//        var Tail = ""
//        var h = true
//        var n = true
//        var t = true
//        var index = 0
//        
//        for i in srr {
//    
//            var c = String(i)
//            if !t {
//                break
//            }
//            
//            switch c {
//            case "A"..."Z" where h == true, "a"..."z" where h == true, " " where h == true, "-" where h == true, "." where h == true :
//                Head += c
//            case "0"..."9" where n == true:
//                h = false
//                if Number.count == 5 {
//                    n = false
//                    continue
//                }
//                if n {
//                    Number += c
//                }
//            default:
//                n = false
//                if index < file.count {
//                    Tail = String(srr[index..<file.count])
//                } else {
//                    Tail = ""
//                }
//                t = false
//                break
//            }
//            
//            index += 1
//        }
//        
//        myFiles.append(([Head, Number, Tail] , j))
//        j += 1
//    }
//    
//    
//    let user = myFiles.sorted { (a, b) -> Bool in
//        
//        if a.0[0].lowercased() == b.0[0].lowercased() {
//            
//            if Int(a.0[1]) == Int(b.0[1]) {
//                return a.1 < b.1
//            } else {
//                return Int(a.0[1])! < Int(b.0[1])!
//            }
//            
//        } else {
//            return a.0[0].lowercased() < b.0[0].lowercased()
//        }
//        
//    }
//    
//    return user.map { a -> String in
//        return a.0[0] + a.0[1] + a.0[2]
//    }
//    
//}
