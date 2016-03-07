//
//  proj16.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 29.02.16.
//  Copyright © 2016 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj16(base: Int = 2, exponent: Int = 1000) -> Int {
    var digits: [Int] = [base]
    for _ in 1...exponent - 1 {
        for (index, val) in digits.enumerate()  {
            digits[index] = val * base
        }
        digits = numbers_to_digits_array(digits)
    }
    return digits.reduce(0, combine: +)
}


func numbers_to_digits_array(var digits: [Int]) -> [Int] {
    let end_index = digits.endIndex
    
    // For 2nd...infth digit
    if digits.count >= 2 {
        for index in 0...digits.count - 2 {
            if (digits[end_index.advancedBy(-index - 1)] >= 10) {
                digits[end_index.advancedBy(-index - 2)] += digits[end_index.advancedBy(-index - 1)] / 10
                digits[end_index.advancedBy(-index - 1)] %= 10
            }
        }
    }
    
    // Insert digit if first number is > 10
    while (digits[digits.startIndex] >= 10) {
        digits.insert(digits[digits.startIndex] / 10, atIndex: 0)
        digits[digits.startIndex.advancedBy(1)] %= 10
    }
    return digits
}