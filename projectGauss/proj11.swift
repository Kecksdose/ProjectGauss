//
//  proj11.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 29.10.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj11(printSteps:Bool = false) -> Int {
  let numberArray:[Int] = [1,2,3,4,5]
  let rows = 2, columns = 2
  var numberMatrix:Matrix = Matrix(rows: rows, columns: columns, grid: numberArray)
  for row in 0..<rows {
    for column in 0..<columns {
      print(numberMatrix[row,column])
    }
  }
  
  
  
  return 0
}