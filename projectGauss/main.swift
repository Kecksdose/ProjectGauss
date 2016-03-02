//
//  main.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 06.06.14.
//  Copyright (c) 2014 Timon Schmelzer. All rights reserved.
//

import Foundation
import QuartzCore

func executionTimeInterval(block: () -> ()) -> CFTimeInterval {
    let start = CACurrentMediaTime()
    block()
    let end = CACurrentMediaTime()
    return end-start
}


//print(proj1()) // 233168
//print(proj2()) // 4613732
//print(proj3()) // 6857
//print(proj4()) // 906609
//print(proj5()) // 232792560, cheated
//print(proj6()) // 25164150
//print(proj7()) // 104743
//print(proj8()) // 23514624000
//print(proj9()) // 31875000
//print(proj10()) // 142913828922 (could need Array extension protocol, see myLib)
//print(proj11()) // 70600674
//print(proj12()) // 76576500
//print(proj13()) // 5537376230
//print(proj14()) // 837799 in 3.59s
//print(proj15(false, root: 2, exponent: 50))
//print(executionTimeInterval(max_palindrom(100, high: 1000, plaindrom_finder: is_palindrom)))

// for performance tests
time_test_proj4()

//let stop = NSDate()

//let timeInterval: Double = stop.timeIntervalSinceDate(start)
//print("Time for all projects: \(timeInterval) s")

