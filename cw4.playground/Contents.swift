import UIKit

var name = "hatem"
var birthdayYear = 2007
var currentyear = 2022
var age :Int
age = currentyear - birthdayYear
print("Hello my name is \(name) and my age is \(age)")



if age >= 14 && age <= 18
{
    print("يمكنك التسجيل في الكويت تبرمج")
}
else
{
    print("لا يمكنك التسجيل في الكويت تبرمج")
}
var textname = "8"
var number = 4
var doublenumb : Double
doublenumb = (Double(textname) ?? 0) + (Double(number) )
