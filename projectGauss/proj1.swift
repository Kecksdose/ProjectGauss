//
//  proj1.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 22.10.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj1() -> Int{
  var cnt = 0
  for i in 1...999{
    if (i%3==0 || i%5==0){
      cnt+=i
    }
  }
  return cnt
}