//
//  proj3.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 22.10.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj3(printSteps:Bool = false, number:Int = 600851475143) -> Int {
  let primeFactors = primeFactorizer(number)
  if (printSteps) {print("Prime factors:\(primeFactors)")}
  return primeFactors.maxElement()!
}