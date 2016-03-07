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

let start = NSDate()

//print(proj1()) // 233168 in 0.4ms
//print(proj2()) // 4613732 in 0.4ms
//print(proj3()) // 6857 in 0.4ms
//print(proj4()) // 906609 in 1.97s (see time_test_proj4())
//print(proj5()) // 232792560 in 2.2s
//print(proj6()) // 25164150 in 0.4ms
//print(proj7()) // 104743 in 10ms
//print(proj8()) // 23514624000 in 0.95s
//print(proj9()) // 31875000 in 0.14s
//print(proj10()) // 142913828922 in 0.42s
//print(proj11()) // 70600674 in 0.4ms
//print(proj12()) // 76576500 in 0.56s
//print(proj13()) // 5537376230 in 0.18s
//print(proj14()) // 837799 in 0.42s
//print(proj15())
//print(proj16()) // 1366 in 2ms
//print(proj17(false)) // 21124 in 8ms
print(proj18())


// for performance tests
//time_test_proj4()

let stop = NSDate()

let timeInterval: Double = stop.timeIntervalSinceDate(start)
print("Time for all projects: \(timeInterval) s")

