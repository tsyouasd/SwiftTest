//
//  TestViewController.swift
//  SwiftTest
//
//  Created by JordanCZ on 16/5/6.
//  Copyright © 2016年 JordanCZ. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.grayColor()
        test()
    }
    
    func test(){
//        let reverData = ReverseGenerator(array: [4,5,6,7,3,12,54])
//        reverData.counter = 10
//        print(reverData.next())
        let  arr = [0,1,2,3,4,5,6]
        for i in ReverseSequence(array: arr){
            guard  i >= 0 else{
                break
            }
            print("index \(i) is \(arr[i]) \n")
        }
    }
    
    func swapMe<T>(inout a: T, inout  b: T) {
         (a,b) = (b,a)
    }
    
    
}

class ReverseGenerator: GeneratorType {
    typealias  Element = Int
    
    var counter: Element
    init<T>(array: [T]){
        self.counter = array.count - 1
    }
    
    init(start: Int){
        self.counter = start
    }
    
    func next() -> Element? {
        guard   self.counter  >= 0  else {
            //变量不符合条件判断时，执行以下语句
            return nil
        }
        
        self.counter -= 1
        return self.counter
    }
}

struct ReverseSequence<T>:SequenceType {
    var array:[T]
    init (array: [T]){
        self.array = array
    }
    
    typealias  Generator = ReverseGenerator
    func  generate() -> Generator {
         return ReverseGenerator(array: array)
    }
}
