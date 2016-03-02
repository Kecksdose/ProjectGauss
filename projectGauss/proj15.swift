//
//  proj15.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 29.02.16.
//  Copyright © 2016 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj15(printSteps:Bool = false, root:Int = 2, exponent:Int = 10) -> Int {
    var number = 1
    
    for _ in 1...exponent {
        number*=root
    }
    
    return calculate_cross_sum(number)
}

func calculate_cross_sum(var number: Int) -> Int {
    var cross_sum = 0
    while(number > 0) {
        cross_sum += number%10
        number/=10
    }
    return cross_sum
}