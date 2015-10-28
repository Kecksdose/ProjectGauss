//
//  proj_1.swift
//  projectEuler
//
//  Created by Timon Schmelzer on 06.06.14.
//  Copyright (c) 2014 Timon Schmelzer. All rights reserved.
//

import Foundation


func isPrime(primeToTest:Int, primesArray: [Int] = []) -> Bool {
  if (primeToTest <= 1) {return false}
  else if (primeToTest <= 3) {return true}
  else if (primeToTest%2 == 0 || primeToTest%3 == 0) {return false}
  if (primesArray == []) {
    var cnt = 5
    while (cnt*cnt < primeToTest) {
      if (primeToTest%cnt == 0 || primeToTest%(cnt+2) == 0) {return false}
      cnt += 6
    }
  }
  else {
    for cnt in primesArray {
      if (cnt*cnt <= primeToTest) {
        if (primeToTest%cnt == 0) {return false}
      }
      else {break}
    }
  }
  return true
}


func primeNumbers(maxEntries:Int = Int.max, maxNum:Int = Int.max-1, onlyLast:Bool = false) -> [Int]{
  var primes: [Int] = []
  for cnt in 2...maxNum {
    if (primes.count < maxEntries) {
      if (isPrime(cnt, primesArray:primes)) {
        primes.append(cnt)
      }
    }
    else {return primes}
  }
  if (onlyLast) {return [primes.last!]}
  return primes
}

func primeFactorizer(var number:Int) -> [Int] {
  var primeFactors: [Int] = []
  while (!isPrime(number)) {
    if (number%2 == 0) {
      primeFactors.append(2)
      number /= 2
    }
    else if (number%3 == 0) {
      primeFactors.append(3)
      number /= 3
    }
    else {
      var cnt = 5
      while(true) {
        if (number%cnt == 0) {
          primeFactors.append(cnt)
          number /= cnt
          break
        }
        else if (number%(cnt+2) == 0) {
          primeFactors.append(cnt+2)
          number /= cnt+2
          break
        }
        cnt += 6
      }
    }
  }
  primeFactors.append(number)
  return primeFactors
}
