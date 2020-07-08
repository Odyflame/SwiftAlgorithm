//
//  베스트앨범.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/08.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
//    var answer = [Int]()
//    
//    var genreSet = [String: Int]()
////    typealias genreAndPlaysAndSequence = [String: (Int, Int)]
////    var myGenres = genreAndPlaysAndSequence()
//    var mySTS = [myst]()
//    
//    struct myst: Hashable {
//        var genre: String
//        var plays: Int
//        var sequence: Int
//        
//        init(_ x: String, _ y: Int, _ z: Int) {
//            self.genre = x
//            self.plays = y
//            self.sequence = z
//        }
//    }
//    
//    for i in 0 ..< genres.count {
//        if let genre = genreSet[genres[i]] {
//            genreSet[genres[i]] = genre + plays[i]
//        } else {
//            genreSet[genres[i]] = plays[i]
//        }
//        mySTS.append(myst(genres[i], plays[i], i))
//    }
//    
//    for i in genreSet.sorted(by: { (a, b) -> Bool in a.1 > b.1 }) {
//        
//        var check = mySTS.filter { (a) -> Bool in
//            a.genre == i.key
//        }.sorted{ $0.plays > $1.plays }
//        
//        var cnt = 0
//        for j in 0..<check.count {
//            if cnt == 2 { break }
//            answer.append( check[j].sequence )
//            cnt += 1
//        }
//    }
//    
//    return answer
//}
