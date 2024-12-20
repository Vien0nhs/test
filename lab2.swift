//
//  main.swift
//  Lab2
//
//  Created by vien on 11/12/24.
//
// Nguyễn Thanh Viễn 12201024 iOS Lab 2
import Foundation

class cauA{
    
    var items: [Int] = []
    init(items: [Int]) {
        self.items = items
    }
    func add(_ items1: [Int]){
        items.append(contentsOf: items1)
    }
    func FindMin(_ items2: [Int]) -> Int?{
        var Min = items2[0]
        if !items2.isEmpty{
            for num in items2{
                if num < Min{
                    Min = num
                }
            }
        }
        return Min
    }
    func FindMax(_ items3: [Int]) -> Int?{
        var Max = items3[0]
        if !items3.isEmpty{
            for num in items3{
                if num > Max{
                    Max = num
                }
            }
        }
        return Max
    }
    func sum(_ items4: [Int])->Int? {
        var sum: Int = 0
        if !items4.isEmpty{
            for num in items4{
                sum += num
            }
            return sum
        }
        return nil
    }
    func getall()-> [Int]?{
        return items
    }
    func FindRandomNumber(_ Array: [Int]) -> Int? {
        if(!Array.isEmpty){
            return Array.randomElement()
        }
        return nil
    }
    func FindRandomNumber(ArrayNumbers Array: [Int]) -> Int? {
        if(!Array.isEmpty){
            return Array.randomElement()
        }
        return nil
    }
    func FindRandomNumber(Array: [Int]) -> Int? {
        if(!Array.isEmpty){
            return Array.randomElement()
        }
        return nil
    }
}
var nums: [Int] = [0,1,2,3,4,5,6,7,8,9,10]
var MyClass = cauA(items: nums)
MyClass.add(nums)
var array: [Int]? = MyClass.getall()
var Min: Int? = MyClass.FindMin(array!)
var Max: Int? = MyClass.FindMax(array!)
var sum: Int? = MyClass.sum(array!)
// a1
print("Tim thay min: \(String(describing: Min))")
// a2
print("Tim thay max: \(String(describing: Max))")
// a3
print("Sum: \(String(describing: sum))")
// b1
var ran: Int? = MyClass.FindRandomNumber(Array: array!)
print(ran as Any)
// b2
ran = MyClass.FindRandomNumber(array!)
print(ran as Any)
// b3
ran = MyClass.FindRandomNumber(ArrayNumbers: array!)
print(ran as Any)

class MyDictionary{
    var EnToVn: [String:String] = [:]
    init(EnToVn: [String : String]) {
        self.EnToVn = EnToVn
    }
    func AddaItem(key:String, value:String)->[String:String]{
        let dic: [String:String] = [key:value]
        EnToVn[key] = dic[key]
        print("Your new dictionary: \(dic)")
        return EnToVn
    }
    func SearchItem(findKey:String)->[String:String]{
        for(key,value) in EnToVn{
            if(!findKey.isEmpty){
                if(findKey == key){
                    return [key:value]
                }
            }
        }
        return ["Not found":""]
    }
    func SearchDelItem(findKey:String)->[String:String]{
        for(key,value) in EnToVn{
            if(!findKey.isEmpty){
                if(findKey == key){
                    EnToVn.removeValue(forKey: key)
                    return EnToVn
                }
            }
        }
        return ["Not found":""]
    }
    func getall()-> [String:String]{
        return EnToVn
    }
}
var myd = MyDictionary(EnToVn: [
    "Table":"Cái bàn",
    "The Cat":"Con mèo",
    "The dog":"Con chó",
    "The bitch":"Con chó cái"
])
var newd:[String:String] = myd.AddaItem(key: "The bird", value: "Con chim")
var getall = myd.getall()
print(getall)
var search: [String:String] = myd.SearchItem(findKey: "The Cat")
print("Search result: \(search)")
var searchDel: [String:String] = myd.SearchDelItem(findKey: "The Cat")
print("Delete result: \(searchDel)")
