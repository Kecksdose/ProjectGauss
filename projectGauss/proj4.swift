//
//  proj4.swift
//  projectGauss
//
//  Created by Timon Schmelzer on 22.10.15.
//  Copyright © 2015 Timon Schmelzer. All rights reserved.
//

import Foundation

func proj4(printSteps:Bool = false, lowerLimit:Int = 100, upperLimit:Int = 999) -> Int {
  var palindromNumber = 0
  var palindromNumberNew = 0
  var i_value = 0
  var j_value = 0
  for i in lowerLimit...upperLimit{
    for j in i...upperLimit{
      let stringNumber:String = String(i*j)
      var digitNumber = 0
      while digitNumber < stringNumber.characters.count/2{
        let indexBegan = stringNumber.startIndex.advancedBy(digitNumber)
        let indexEnd = stringNumber.endIndex.advancedBy(-1 - digitNumber)
        if stringNumber[indexBegan] == stringNumber[indexEnd]{
          digitNumber++
        }
        else {break}
      }
      if digitNumber >= stringNumber.characters.count/2{
        palindromNumberNew = i*j
      }
      if palindromNumberNew > palindromNumber{
        palindromNumber = palindromNumberNew
        i_value = i
        j_value = j
        if (printSteps) {print("Palindrom was found! \(i_value) times \(j_value) gives \(palindromNumber)")}
      }
    }
  }
  if (printSteps) {print("The largest Palindrom found was \(palindromNumber). (\(i_value) x \(j_value))")}
  return palindromNumber
}
