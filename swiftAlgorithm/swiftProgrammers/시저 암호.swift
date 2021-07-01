//
//  시저 암호.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ s:String, _ n:Int) -> String {
//
//    var answer = ""
//
//    var alphabet = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
//    var ALPHABET = Array("abcdefghijklmnopqrstuvwxyz")
//
//    for (index, value) in s.enumerated() {
//
//        if value.isLowercase {
//            if let index = ALPHABET.index(where: { $0 == value}) {
//                answer += String(ALPHABET[(index + n) % 26 ])
//            }
//        }  else if value.isUppercase {
//            if let index = alphabet.index(where : { $0 == value}) {
//                answer += String(alphabet[(index + n) % 26 ])
//            }
//        } else {
//            answer += " "
//        }
//    }
//
//    return answer
//}


//정진은
//func solution(_ s:String, _ n:Int) -> String {
//    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }
//
//    let arr = String(s.map {
//        guard let index = alphabets.firstIndex(of: Character($0.lowercased())) else { return $0 }
//        let letter = alphabets[(index + n) % 26 ]
//        return $0.isUppercase ? Character(letter.uppercased()) : letter
//    })
//
//    return arr
//
//}

//func solution(_ s:String, _ n:Int) -> String {
//    let LOWER = Array("abcdefghijklmnopqrstuvwxyz")
//    let UPPER = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
//
//    var result = ""
//
//    for c in s.utf8 {
//        switch c {
//        case 65...90:
//            result += String(UPPER[ (Int(c) + n - 65) % 26 ])
//            result.append(UPPER[ (Int(c) + n - 65) % 26 ])
//        case 97...122:
//            result += String(LOWER[ (Int(c) + n - 65) % 26 ])
//        default:
//            result += " "
//        }
//    }
//
//    return result;
//}


//func solution(_ s:String, _ n:Int) -> String {
//    
//    
//    let arr = s.utf8.map {
//        var code = Int($0)
//        switch code {
//            case 65 ... 90 :
//            code = (code + n - 65) % 26 + 65
//        case 97 ... 122 :
//            code = (code - 65 + n) % 26 + 97
//        default :
//            break
//        }
//        
//        return String(UnicodeScalar(code)!)
//    }.joined()
//    
//    // joined 시퀀스 순서의 요소를 연결하여 반환합니다.
//    
//    let Sarray = Array(s)
//
//    var tempo = [[1,2,3],[1,2,3],[1,2,3]]
//    tempo.joined()
//    
//    var array = ["1", "2", "3"]
//    array.joined()
//    
//    
//    return s.utf8.map {
//        var code = Int($0)
//        switch code {
//            case 65...90:
//                code = (code + n - 65) % 26 + 65
//            case 97...122:
//                code = (code + n - 97) % 26 + 97
//            default:
//                break
//        }
//        return String(UnicodeScalar(code)!)
//    }.joined()
//}
