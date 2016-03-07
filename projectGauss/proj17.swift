//
//  proj17.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 04.03.16.
//  Copyright © 2016 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj17(printSteps:Bool = false) -> Int {

    let one_to_nine = [1: "one", 2: "two", 3: "three", 4: "four", 5: "five",
        6: "six", 7: "seven", 8: "eight", 9: "nine"]
    let eleven_to_nineteen = [11: "eleven", 12: "twelve", 13: "thirteen", 14: "fourteen", 15: "fifteen",
        16: "sixteen", 17: "seventeen", 18: "eighteen", 19: "nineteen"]
    let teen_to_ninty = [10: "ten", 20: "twenty", 30: "thirty", 40: "forty", 50: "fifty",
        60: "sixty", 70: "seventy", 80: "eighty", 90: "ninety"]
    let hundred = "hundred"
    let and = "and"
    
    var complete_nums = [Int: String]()
    
    // 1 - 9
    for (key_x, value_x) in one_to_nine {
        complete_nums[key_x] = value_x
    }
    
    // 11 - 99
    for (key_xx, value_xx) in teen_to_ninty {
        complete_nums[key_xx] = value_xx
        for (key_x, value_x) in one_to_nine {
            complete_nums[key_x + key_xx] = value_xx + value_x
        }
    }
    
    // 101 - 999
    for (key_xxx, value_xxx) in one_to_nine {
        complete_nums[key_xxx*100] = value_xxx + hundred
        for (key_x, value_x) in one_to_nine {
            complete_nums[key_xxx*100 + key_x] = value_xxx + hundred + and + value_x
        }
        for (key_xx, value_xx) in teen_to_ninty {
            complete_nums[key_xxx*100 + key_xx] = value_xxx + hundred + and + value_xx
            for (key_x, value_x) in one_to_nine {
                complete_nums[key_xxx*100 + key_xx + key_x] = value_xxx + hundred + and + value_xx + value_x
            }
        }
    }
    
    // replace X11-X19
    for (key, _) in complete_nums {
        if (key%100 >= 11) && key%100 <= 19 {
            let hundered_number = key/100
            let prefix = hundered_number > 0 ? one_to_nine[hundered_number]! + hundred + and : ""
            complete_nums[key] = prefix + eleven_to_nineteen[key%100]!
        }
    }
    
    // add 1000
    complete_nums[1000] = "onethousand"
    
    // print all numbers if print_steps is true
    if printSteps == true {
        for i in 1...complete_nums.count {
            print("\(i): \(complete_nums[i]!)")
        }
    }
    
    // count characters
    var characters = 0
    for (_, value) in complete_nums {
        characters += value.characters.count
    }
    
    return characters
}
