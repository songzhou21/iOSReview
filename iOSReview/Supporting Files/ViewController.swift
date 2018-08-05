//
//  ViewController.swift
//  iOSReview
//
//  Created by songzhou on 2018/8/5.
//  Copyright © 2018年 songzhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        algorithmTest()
    }

    func algorithmTest() -> Void {
        assert(twoSum(nums: [1, 2, 3], 5))
        
        print(reverseWords(s: "the sky is blue")!)
    }
    
}

