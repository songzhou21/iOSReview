//
//  StringReverse.swift
//  iOSReview
//
//  Created by songzhou on 2018/8/5.
//  Copyright © 2018年 songzhou. All rights reserved.
//

import Foundation

/// reverse string
///
/// - Parameters:
///   - chars: string
///   - start: start index
///   - end: end index
fileprivate func _reverse(_ chars: inout [Character], _ start: Int, _ end: Int) {
    var start = start, end = end
    
    while start < end {
        _swap(&chars, start, end)
        start += 1
        end -= 1
    }
}

fileprivate func _swap(_ chars: inout [Character], _ p: Int, _ q: Int) {
    (chars[p], chars[q]) = (chars[q], chars[p])
}

func reverseWords(s: String?) -> String? {
    guard let s = s else {
        return nil
    }
    
    var chars = Array(s), start = 0
    _reverse(&chars, 0, chars.count - 1)
    
    for i in 0 ..< chars.count {
        if i == chars.count - 1 || chars[i + 1] == " " {
            _reverse(&chars, start, i)
            start = i + 2
        }
    }
    
    return String(chars)
}

func StringTest() -> Void {
    let s = "Hello"
    
    var chars = Array(s), start = 0
    print(chars)
    _reverse(&chars, start, chars.count - 1)
    print(chars)
    
//    _reverse(&s, 0, s.)
}
