//
//  main.swift
//  SimpleCalc
//
//  Created by Just on 16/10/6.
//  Copyright © 2016年 Just. All rights reserved.
//

import Foundation

let calculator = Calculator()
calculator.Help()

var get=true
var i=(-1)
var response=""
var op=""
var numbers=[Float]()
let operators=["+","-","*","/"]
let functions=["fact","count","avg"]
let types=["Int","Float","Double"]
while get{
    response=readLine(strippingNewline: true)!
    i=i-1
    if operators.contains(response) {
        i=1
        op=response
    } else if functions.contains(response){
        i=0
        op=response
    } else if types.contains(String(describing: type(of:i))){
        numbers.append(Float(response)!)
    }
    else{
        print("invalid input")
        break
    }
    if i==0 {
        get=false}
}
calculator.getResult(op: op,numbers: numbers)
