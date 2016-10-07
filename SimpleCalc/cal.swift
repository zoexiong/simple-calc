//
//  cal.swift
//  SimpleCalc
//
//  Created by Just on 16/10/6.
//  Copyright © 2016年 Just. All rights reserved.
//

import Foundation

class Calculator{
    func Help() {
        Usage.printUsage()
    }
    func getResult(op:String, numbers:Array<Float>){
        var result:Float=0
        switch op {
        case "+":
            result=numbers[0]+numbers[1]
        case "-":
            result=numbers[0]-numbers[1]
        case "*":
            result=numbers[0]*numbers[1]
        case "/":
            result=numbers[0]/numbers[1]
        case "fact":
            if numbers.count != 1 {
                print("invalid input")
                break
            } else if numbers[0]<0 {
                print("invalid input")
                break
            }   else {
                var i=numbers[0]
                result=i
                while i != 2 {
                    result=result*(i-1)
                    i=i-1
                }
            }
        case "avg":
            var i=numbers.count-1
            result=0
            while i>=0 {
                result=result+numbers[i]
                i=i-1
            }
            result=result/Float(numbers.count)
        case "count":
            result=Float(numbers.count)
        default:
            print("invalid input")
            break
        }
        print(result)
    }
}

