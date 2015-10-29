//
//  proj10.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 29.10.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj10(printSteps:Bool = false, maxNum:Int = 2_000_000) -> Int {
  let primesArray: [Int] = primeNumbers(Int.max, maxNum: 2_000_000)
  let sum = primesArray.reduce(0, combine: +)
  return sum
}