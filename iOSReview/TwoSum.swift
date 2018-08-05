//
//  TwoSum.swift
//  iOSReview
//
//  Created by songzhou on 2018/8/5.
//  Copyright © 2018年 songzhou. All rights reserved.
//

import Foundation


///  给出一个整型数组和一个目标值，判断数组中是否有两个数之和等于目标值
///
/// - Parameters:
///   - nums: 数组
///   - target: 目标值
/// - Returns: 数组中是否有两个元素加起来等于目标值
func twoSum(nums: [Int], _ target: Int) -> Bool {
    var set = Set<Int>()
    
    for num in nums {
        if set.contains(target - num) {
            return true
        }
        
        set.insert(num)
    }
    
    return false
}
