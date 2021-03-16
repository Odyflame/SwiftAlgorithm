//
//  신규 아이디 추천.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/03.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ new_id:String) -> String {
//
//    var alpha = "abcdefghijklnmoptqrsvwxyz"
//    var number = "0123456789"
//    var checker = "-_."
//    //1
//    var id = new_id.lowercased()
//
//    //2
//    id = id.filter({ al in
//        return alpha.contains(al) || number.contains(al) || checker.contains(al)
//    })
//
//    //3
//    var newid = ""
//    var iid = Array(id)
//
//    if !id.isEmpty {
//        repeat {
//            id = id.replacingOccurrences(of: "..", with: ".")
//        } while id.contains("..")
//    }


//
//    //4
//
//        if !id.isEmpty && id.first == "." {
//            id.removeFirst()
//        }
//        if !id.isEmpty && id.last == "." {
//            id.removeLast()
//        }
//
//
//    //5
//    if id == "" {
//        id = "a"
//    }
//
//    //6
//    if id.count >= 16 {
//        var tempString = ""
//
//        for char in id.enumerated() {
//            tempString += String(char.element)
//            if tempString.count == 15 {
//                break
//            }
//        }
//
//        if tempString.last == "." {
//            tempString.removeLast()
//        }
//
//        id = tempString
//    }
//
//    //7
//
//    if id.count <= 2 {
//        var inde = id.count
//        var iiid = id
//        for i in inde ..< 3 {
//            iiid.append(String(id.last!))
//        }
//        id = iiid
//    }
//
//    print(id)
//    return id
//}

func solution(_ new_id:String) -> String {
    var res = new_id.lowercased() //소분자 치환

    var removeStr: [String] = []
    for char in res.utf16 {
        if (char >= 97 && char <= 122) || (char >= 48 && char <= 57 ) || char == 45 || char == 95 || char == 46 {
            if let temp = UnicodeScalar(char) {
                removeStr.append(String(temp))
            }
        }
    }
    res = removeStr.joined()

    let arrStr = res.split{ $0 == "." }.map{ String($0) }
    var tempStr = ""
    for element in arrStr {
        tempStr += "." + element
    }
    res = tempStr

    if res.hasPrefix(".") { let _ = res.removeFirst() }
    if res.hasSuffix(".") { let _ = res.removeLast() }

    if res.count == 0 { res = "a" }

    if res.count > 15 {
        let index = res.index(res.startIndex, offsetBy: 15)
        res = String(res[..<index])
    }
    if res.hasSuffix(".") { let _ = res.removeLast() }

    if res.count <= 2 {
        let temp = String(res.last ?? " ")
        for _ in 0 ..< 3 {
            if res.count == 3 {
                break
            } else {
                res += temp
            }
        }
    }
    return res
}
