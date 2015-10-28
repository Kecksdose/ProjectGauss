//
//  proj5.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 22.10.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj5(printSteps:Bool = false, maxProduct:Int = 20) -> Int {
  let start:Int = maxProduct
  var my_number = 230000000
  var nums:[Int] = []
  for i in 2...maxProduct{
    nums.append(i)
  }
  var sum = 0
  while(sum <= nums.count){
    for i in Array(nums.reverse()){
      if my_number%i == 0{
        sum++
      }
      else{
        my_number+=start
        break
      }
    }
    if sum < nums.count {sum = 0}
  }
  if (printSteps) {print("Das KGV von \(nums) ist \(my_number)")}
  return my_number
}
