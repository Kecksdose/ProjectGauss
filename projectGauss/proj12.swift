//
//  proj12.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 02.11.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj12(printSteps:Bool = false, numDivisors:Int = 500) -> Int {
  let maxTriangularNumberToProve: Int = Int.max-1
  var triangularNumber:Int = 0
  var numberWeAreLookingFor:Int = 0
  
  for cnt in 1...maxTriangularNumberToProve {
    triangularNumber += cnt
    let divisors:[Int] = getListOfDivisors(triangularNumber)
    if (divisors.count > numDivisors) {
      if (printSteps) {
        let divisorsSorted: [Int] = divisors.sort()
        print("The \(cnt). triangular number, which is \(triangularNumber), has \(divisors.count) divisors which are \(divisorsSorted)")
      }
      numberWeAreLookingFor = triangularNumber
      break
    }
  }
  return numberWeAreLookingFor
}