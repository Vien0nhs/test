//
//  main.swift
//  Lab1
//
//  Created by vien on 10/12/24.
//

import Foundation

// Nguyễn Thanh Viễn 12201024 iOS Lab 1

var Numbers: [Int] = [1,2,3,4,5,6,7,8,9,10]

// a1.
FindMin(Numbers)
func FindMin(_ Array: [Int]) -> Int?{
    var Min_Value = Array[0]
    if(!Array.isEmpty){
        for number in Array {
            if(number < Min_Value){
                Min_Value = number
            }
        }
        return Min_Value
    }
    return nil
}
// a2.
FindMax(Numbers)
func FindMax(_ Array: [Int]) -> Int?{
    var Max_Value = Array[0]
    if(!Array.isEmpty){
        for number in Array {
            if(number > Max_Value){
                Max_Value = number
            }
        }
        return Max_Value

    }
    return nil
}
// a3.
SumArray(Numbers)
func SumArray(_ Array: [Int])-> Int?{
    var sum: Int = 0
    if(!Array.isEmpty){
        for num in Array{
            sum += num
        }
        return sum
    }
    return nil
}

// b1.
FindRandomNumber(Array: Numbers)
func FindRandomNumber(Array: [Int]) -> Int? {
    if(!Array.isEmpty){
        return Array.randomElement()
    }
    return nil
}
// b2.
FindRandomNumber(ArrayNumbers: Numbers)
func FindRandomNumber(ArrayNumbers Array: [Int]) -> Int? {
    if(!Array.isEmpty){
        return Array.randomElement()
    }
    return nil
}
// b3.
FindRandomNumber(Numbers)
func FindRandomNumber(_ Array: [Int]) -> Int? {
    if(!Array.isEmpty){
        return Array.randomElement()
    }
    return nil
}

//c.
var MyPets: [String: [String]] = ["Cat":["Tom"], "Mouse":["Jerry"], "Dog":["Spike"]]
print("Your recent dictionary: \(MyPets)")
AddPet(&MyPets)

// AddFunction
func AddPet(_ MyDictionaryPet: inout [String: [String]]){
    print("Nhập loại pet (Mouse, Cat, Dog,...) : ", terminator: "")
    if let type = readLine(), !type.isEmpty{
        print("Nhập tên pet: ", terminator: "")
        if let name = readLine(), !name.isEmpty{
            MyDictionaryPet[type]?.append(name)
        }else{
            print("Tên pet không hợp lệ")
        }
    }else{
        print("Loại pet không hợp lệ")
    }
}
print("Update your dictionary: \(MyPets)")

// Remove function
removePet(&MyPets)
func removePet(_ MydictionaryPet: inout [String: [String]]){
    print("Enter type of pet (Mouse, Cat, Dog,...) : ", terminator: "")
    if let type = readLine(), !type.isEmpty{
        MydictionaryPet.removeValue(forKey: type)
        print("Has removed by key: \(type)")
    }
}
print("Update your dictionary: \(MyPets)")

//Search function
SearchPet(&MyPets)
func SearchPet(_ MydictionaryPet: inout [String: [String]]) {
    print("Enter type of pet (Mouse, Cat, Dog,...) : ", terminator: "")
    if let type = readLine(), !type.isEmpty {
        if let pets = MydictionaryPet[type] { // gán mảng các value của key "type" cho biến pets
            print("The pets of type \(type) are: \(pets)")
        } else {
            print("No pets found of type \(type).")
        }
    }
}
