//
//  proj15.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 29.02.16.
//  Copyright © 2016 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj15() -> Int {
    // calculate (40 over 20), which is 40!/(20! * 20!)
    let fak_1_to_20 = my_fak(1, max_number: 20)
    let fak_21_to_30 = my_fak(21, max_number: 30)
    let fak_31_to_40 = my_fak(31, max_number: 40)
    
    return Int(Double(fak_31_to_40)/Double(fak_1_to_20)*Double(fak_21_to_30))
}

func my_fak(min_number: Int, max_number: Int) -> Int {
    if max_number <= min_number {return max_number}
    else {return max_number * my_fak(min_number, max_number: max_number - 1)}
}