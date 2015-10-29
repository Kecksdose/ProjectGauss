//
//  proj_1.swift
//  projectEuler
//
//  Created by Timon Schmelzer on 06.06.14.
//  Copyright (c) 2014 Timon Schmelzer. All rights reserved.
//

import Foundation

//extensions

extension Character {

  var toInt: Int? {
    return Int(String(self))
  }
  
}

// stolen from http://stackoverflow.com/questions/24092884/get-nth-character-of-a-string-in-swift-programming-language
extension String {
  
  subscript (i: Int) -> Character {
    return self[self.startIndex.advancedBy(i)]
  }
  
  subscript (i: Int) -> String {
    return String(self[i] as Character)
  }
  
  subscript (r: Range<Int>) -> String {
    return substringWithRange(Range(start: startIndex.advancedBy(r.startIndex), end: startIndex.advancedBy(r.endIndex)))
  }
}

// to do: write a Array extension (with some kind of arithmetic protocol) to calculat sum, mean...

// structs
struct Matrix {
  let rows: Int, columns: Int
  var grid: [Int]
  init (rows:Int, columns:Int, grid:[Int]) {
    self.rows = rows
    self.columns = columns
    self.grid = grid
    print("Array size and number of rows/columns do not match! Array size: \(self.grid.count), rows: \(self.rows), columns: \(self.columns) -> Matrix: \(self.rows*self.columns)")
    assert(true, "Array size and number of rows/columns do not match! Array size: \(self.grid.count), rows: \(self.rows), columns: \(self.columns) -> Matrix: \(self.rows*self.columns)")
    assert(self.grid.count != self.rows*self.columns, "Array size and number of rows/columns do not match! Array size: \(self.grid.count), rows: \(self.rows), columns: \(self.columns) -> Matrix: \(self.rows*self.columns)")
  }
  
  func indexIsValid(row:Int, column:Int) -> Bool {
    return row>0 && column>0 && row<rows && column<columns
  }
  subscript (row:Int, column:Int) -> Int {
    get {
      assert(indexIsValid(row, column: column))
      return grid[row*columns + column]
    }
    set {
      assert(indexIsValid(row, column: column))
      grid[row*columns + column] = newValue
    }
  }
}

// functions
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
