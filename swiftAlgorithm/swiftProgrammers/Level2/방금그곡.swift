//
//  방금그곡.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/11.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ m:String, _ musicinfos:[String]) -> String {
    
    var convertm = m
    convertm = convertm.replacingOccurrences(of: "A#", with: "H")
    .replacingOccurrences(of: "C#", with: "I")
    .replacingOccurrences(of: "D#", with: "J")
    .replacingOccurrences(of: "F#", with: "K")
    .replacingOccurrences(of: "G#", with: "L")
    
    var matchSong = ""
    
    // 실제 플레이 된 사웅ㄴ드와 타이틀로 매치시킨 사전 준비
    var dict = [String: String]()
    
    // dict 작성
    for info in musicinfos {
        let str = info.components(separatedBy: ",")
        var (start, end, title, sound) = (str[0], str[1], str[2], str[3])
        
        // 시간 변환
        let (starthh, startmm) = (start.components(separatedBy: ":")[0], start.components(separatedBy: ":")[1])
        let (endhh, endmm) = (end.components(separatedBy: ":")[0], end.components(separatedBy: ":")[1])
        
        let time = (Int(endhh)! - Int(starthh)!) * 60 + (Int(endmm)! - Int(startmm)!)
        
        // 재생한 사운드 작성
        sound = sound.replacingOccurrences(of: "A#", with: "H")
                   .replacingOccurrences(of: "C#", with: "I")
                   .replacingOccurrences(of: "D#", with: "J")
                   .replacingOccurrences(of: "F#", with: "K")
                   .replacingOccurrences(of: "G#", with: "L")
        
        //처음부터 끝까지 반복 + 남은거 붙이기
        let playedSound = String(repeating: sound, count: time / sound.count) + sound[sound.startIndex ..< sound.index(sound.startIndex, offsetBy: time % sound.count)]
        
        // dict 작성
        dict[playedSound] = title
    }
    
    for song in dict.keys {
        //비교하고 싶은 음이 사전에 있으면
        if song.contains(convertm) {
            // 재생된 시간이 같을 경우 먼저 입력된 음악 제목을 반환
            if matchSong == "" {
                matchSong = song
            } else {
                // 조건이 일치하는 음악이 여러 개일 때에는 라디오에서 재생된 시간이 제일 긴 음악 제목을 반환
                if matchSong.count < song.count {
                    matchSong = song
                }
            }
        }
    }
    
    if matchSong == "" { return "(None)" }
    return dict[matchSong]!
}
