//
//  proj6.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 22.10.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj6(printSteps:Bool = false, maxNum:Int = 100) -> Int {
  var sumSquares = 0
  var squaresSum = 0
  for cnt in 1...maxNum {
    sumSquares += cnt*cnt
    squaresSum += cnt
  }
  squaresSum *= squaresSum
  if (printSteps) {print("sum squares: \(sumSquares), sqares sum: \(squaresSum)")}
  return squaresSum - sumSquares
}
