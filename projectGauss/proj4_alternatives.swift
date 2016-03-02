//
//  proj4_alternatives.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 01.03.16.
//  Copyright © 2016 Timon Schmelzer. All rights reserved.
//

import Foundation

// modulo solution
func is_palindrom(number:Int) -> Bool {
    if number < 10 {
        return true
    }
    var max = 1
    while(max < number / 10){
        max *= 10
    }
    let first = number / max
    let last = number % 10
    var new_number = (number % max) / 10
    if new_number < (max / 100) {
        if(new_number % 10 != 0) {
            return false
        } else {
            new_number /= 10
        }
    }
    return (first == last) && is_palindrom(new_number)
}

// string solution
func is_palindrom_string(number:Int) -> Bool {
    let num_string = String(number)
//    print(num_string)
    for i in 0...num_string.characters.count / 2 {
//        print(num_string[num_string.startIndex.advancedBy(i)], num_string[num_string.endIndex.advancedBy(-1 - i)])
        if(num_string[num_string.startIndex.advancedBy(i)] != num_string[num_string.endIndex.advancedBy(-1 - i)]) {
            return false
        }
    }
    return true
}

// nicos solution
func is_palindrom_by_nico(number:Int) -> Bool {
    var n = 0
    var i = 1
    while(i < number) {
        i*=10
        n++
    }
    let a = number % my_pow(10, exponent: n/2)
    var b = 0
    var j = 1
    while(j < n/2 + 1) {
        b += (a % my_pow(10, exponent: j) / my_pow(10, exponent: j - 1)) * my_pow(10, exponent: n/2 - j)
        j++
    }
    let c = number % (my_pow(10, exponent: (n / 2 + n % 2))) + b * my_pow(10, exponent: n / 2 + n % 2)
    return c == number
}

// array solution
func is_palindrom_by_array(var number: Int) -> Bool {
    var digits: [Int] = []
    while(number > 0) {
        digits.append(number % 10)
        number /= 10
    }
    for i in 0...digits.count / 2 - 1 {
        if !(digits[i] == digits[digits.count - i - 1]) {
            return false
        }
    }
    return true
}


// external functions
func my_pow(base: Int, exponent: Int) -> Int {
    if (exponent == 0) { return 1 }
    if (exponent == 1) { return base }
    return base * my_pow(base, exponent: exponent - 1)
}

func max_palindrom(low:Int, high:Int, plaindrom_finder:(Int)-> Bool) -> (Int, Int, Int) {
    var max = 0
    var max_i = 0
    var max_j = 0
    for i in low...high {
        for j in i...high {
            if (plaindrom_finder(i*j) && i*j > max) {
                max = i*j
                max_i = i
                max_j = j
            }
        }
    }
    return (max, max_i, max_j)
}

func time_test_proj4() {
    let max_pal_modulo = executionTimeInterval {
        let result = max_palindrom(100, high: 1000, plaindrom_finder: is_palindrom)
        print(result)
    }
    
    let max_pal_string = executionTimeInterval {
        let result = max_palindrom(100, high: 1000, plaindrom_finder: is_palindrom_string)
        print(result)
    }
    
    let max_pal_nico = executionTimeInterval {
        let result = max_palindrom(100, high: 1000, plaindrom_finder: is_palindrom_by_nico)
        print(result)
    }
    
    let max_pal_array = executionTimeInterval {
        let result = max_palindrom(100, high: 1000, plaindrom_finder: is_palindrom_by_array)
        print(result)
    }
    
    let max_pal_mine = executionTimeInterval {
        print(proj4())
    }
    
    
    print(String(format: "Time with modulo palindrom finder: %.2f ms", max_pal_modulo*1000))
    print(String(format: "Time with nicos palindrom finder: %.2f ms", max_pal_nico*1000))
    print(String(format: "Time with array palindrom finder: %.2f ms", max_pal_array*1000))
    print(String(format: "Time with string palindrom finder: %.2f ms", max_pal_string*1000))
    print(String(format: "Time with my palindrom finder: %.2f ms", max_pal_mine*1000))

}