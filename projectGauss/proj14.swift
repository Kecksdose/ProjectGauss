//
//  proj14.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 02.11.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj14(printSteps:Bool = false, max_number:Int = 1_000_000) -> Int {
    var max_sequence = 0
    var best_result = 0
    
    for i in 1...max_number {
        var steps = 0
        var cur_number = i
        while(cur_number > 1) {
            steps++
            cur_number = apply_collatz(cur_number)
        }
        if steps > max_sequence {
            max_sequence = steps
            best_result = i
            if printSteps{
                print("Max sequence lenght \(max_sequence) at number \(i)")
            }
        }
    }
    return best_result
}

func apply_collatz(number:Int) -> Int{
    return number % 2 == 0 ? number / 2 : 3 * number + 1
}



