//
//  proj2.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 22.10.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj2(maxNum: Int = 4_000_000) -> Int {
  var fiboArray = [0, 1]
  var (cnt, res) = (0, 0)
  while(true) {
    cnt++
    fiboArray.append(fiboArray[cnt-1] + fiboArray[cnt])
    if (fiboArray[cnt+1] > maxNum) {
      break
    }
  }
  for fibo in fiboArray {
    if fibo%2 == 0 {
      res += fibo
    }
  }
  return res
}
