//
//  proj9.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 28.10.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj9() -> Int {
  // a^2 + b^2 = c^2 && a + b + c = 1000 && a < b < c && a > 0 && b > 0 && c > 0 -->
  // a=200, b=375, c=425
  for a in 1...999 {
    for b in 1...999 {
      for c in 1...999 {
        if ((a*a + b*b == c*c) && (a + b + c == 1000)) {
          return a*b*c
        }
      }
    }
  }
  return 0
}