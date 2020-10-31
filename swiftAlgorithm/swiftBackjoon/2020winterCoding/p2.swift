//
//  p2.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/31.
//  Copyright © 2020 odyflame. All rights reserved.
//
//
//import Foundation
//
//func solution(_ encrypted_text:String, _ key:String, _ rotation:Int) -> String {
//    
//    var encrypted_text1 = encrypted_text
//    
//    var answer = ""
//    var rotation = rotation
//    
//    if rotation > 0 {
//        let srr = encrypted_text1.index(encrypted_text1.startIndex, offsetBy: rotation)
//        var result = String(encrypted_text1[..<srr])
//        
//        answer = String(encrypted_text1[srr...]) + result
//        
//    } else {
//        let srr = encrypted_text1.index(encrypted_text1.startIndex, offsetBy: encrypted_text1.count + rotation)
//        var result = String(encrypted_text1[srr...])
//
//        answer = result + String(encrypted_text1[encrypted_text1.startIndex..<srr])
//    }
//    
//    var encrypted_text = Array(answer)
//    var key = Array(key)
//    var fians = ""
//    
//    for i in 0 ..< encrypted_text.count {
//        
//        var temp1 = Int(UnicodeScalar(String(encrypted_text[i]))!.value)
//        var temp2 =  Int(UnicodeScalar(String(key[i]))!.value) - 96
//
//        var temp = temp1 - temp2
//        
//        if temp < 97 {
//            temp = 122 - (97 - temp) + 1
//        }
//        
//        print(String(Character(UnicodeScalar(temp)!)))
//              
//        fians += String(Character(UnicodeScalar(temp)!))
//        
//    }
//    
//    return fians
//}
