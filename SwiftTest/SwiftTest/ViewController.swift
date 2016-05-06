//
//  ViewController.swift
//  SwiftTest
//
//  Created by JordanCZ on 16/2/3.
//  Copyright © 2016年 JordanCZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        checkup(["id" : "123456"])
//        checkup(["examNumber":"32312312"])
//        checkup(["id":"12334","examNumber":"432423"])
//        callMe();
        let  button:UIButton = UIButton(type:.Custom)
        button.frame = CGRectMake(100, 100, 100, 100)
        button.backgroundColor = UIColor.orangeColor()
        button.setTitle("按钮", forState: UIControlState.Normal)
        button.addTarget(self, action:#selector(buttonAction(_:)) , forControlEvents: .TouchUpInside)
        self.view.addSubview(button);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func buttonAction(obj:AnyObject){
        let testVC = TestViewController()
        self.presentViewController(testVC, animated: true, completion: nil)
//        let  addToFour = addTwoNumbers(5)
//        let  result = addToFour(num:10)
//        print(addToFour)
//        print(result)
        
    }
    
    func addTwoNumbers(a:Int)(num: Int) -> Int {
        return a + num
    }
    
    func callMe(){
//        let widthLabel:Float = 4;
//        print(widthLabel)
//        
//        var  shopingList = ["apple","water","tulips","blue paint"]
//        shopingList[1] = "bottle of water"
//        
//        var occupations = [
//            "App":"captioin",
//            "Kaylee":"Mechanic",
//        ]
//        occupations["Jayne"] = "Public  Relations"
//        
//        print(shopingList)
//        print(occupations)
        
//        let optionalString :String? = "Hello"
//        print(optionalString == nil)
//        
//        let optionName:String? = nil //:String? = "Chenzhong"
//        var greeting = "Hello"
//        if let name = optionName{
//            greeting = "Hellow,\(name)"
//        }
//        print("HI \(greeting ?? optionalString)")
        
//        let vegetable = "red pepper"
//        
//        switch vegetable{
//            case  "apps":
//                print("Add some raisins and make ants on a log.")
//            case  let x where x.hasSuffix("pepper"):
//                print("has suffix \(x)?")
//                fallthrough
//            case "red pepper":
//                print("That would make a good tea sandwich")
//            case "test":
//                print("Is It a spicy")
//            default:
//                print("EveryThing tastes good in soup.")
//            
//        }
        
        let interestingNumbers = [
            "Price":[1,2,4,5,6,7],
            "Food":[3,2,4,4,6,5],
            "Square":[1,4,5,15,45],
        ]
        var largest = 0
        for (_,numbers) in interestingNumbers{
            for i in numbers{
                if i > largest{
                    largest = i
                }
            }
        }
        print("Max Value :\(largest)")
        
        let numbers = [20,14,13,33,12,40]
        print(hasAnyMatches(numbers, condition: lessThanTen))
    }
    
    func  hasAnyMatches(list:[Int],condition: Int -> Bool) -> Bool{
        for item in list{
            if condition(item){
                return true
            }
        }
        
        return false
    }
    
    func  lessThanTen(number: Int) -> Bool{
        return number < 10
    }
    
    func callMeWithParam(obj:AnyObject){
        
    }
    let  someMethod = Selector("callMe");
    let  anotherMethod = Selector("callMeWithParam:");
    
    
    func  methodTest(number: Int)->Int{
        return number + 1;
    }
    func  checkup(person : [String:String!]){
        guard let id = person["id"] else {
            print("没有身份证，不能进入考场")
            return
        }
        
        guard let examNumber = person["examNumber"]  else{
            print("没有准考证，不能进入考场!")
            return
        }
        print("您的身份证号为:\(id),准考证号为:\(examNumber),请进入考场!")
        var i = 0
        repeat{
            i++
            print("repeat \(i)")
        }while i < 10
        
        var errorCodeString: String?
        errorCodeString = "404"
        print(errorCodeString)
        
        //if errorCodeString != nil {
        //    let theError = errorCodeString!
        //    print(theError)
        //}
        if let theError = errorCodeString {
            print(theError)
        }
        
        if let theError = errorCodeString {
            if let errorCodeInteger = Int(theError) {
                print("\(theError): \(errorCodeInteger)");
            }
        }
        
        if let theError = errorCodeString, errorCodeInteger = Int(theError) {
            print("\(theError): \(errorCodeInteger)");
        }
        
        if let theError = errorCodeString, errorCodeInteger = Int(theError)
            where errorCodeInteger == 404
        {
            print("\(theError): \(errorCodeInteger)");
        }
    }
    
 
    
}

//class  Square:NamedShape{
//    
//}


