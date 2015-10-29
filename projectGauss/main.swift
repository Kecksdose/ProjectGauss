//
//  main.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 06.06.14.
//  Copyright (c) 2014 Timon Schmelzer. All rights reserved.
//

import Foundation

let start = NSDate()
//print(proj1()) // 233168
//print(proj2()) // 4613732
//print(proj3()) // 6857
//print(proj4()) // 906609
//print(proj5()) // 232792560, cheated
//print(proj6()) // 25164150
//print(proj7()) // 104743
//print(proj8()) // 23514624000
//print(proj9()) // 31875000 (kind of cheated)
//print(proj10()) // 142913828922 (could need Array extension protocol, see myLib)
let mal:Int? = nil
assert(mal != nil, "ALARM!")

print(proj11())



let stop = NSDate()

let timeInterval: Double = stop.timeIntervalSinceDate(start)
print("Time for all projects: \(timeInterval) s")







