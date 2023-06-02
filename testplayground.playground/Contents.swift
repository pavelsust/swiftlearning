import UIKit




// Apple WebSite =  https://docs.swift.org/swift-book/documentation/the-swift-programming-language/functions


// Another Tutorial WebSite =


enum ApiResponse{
    case success, error, pending
}

func showResponse(){
    var response = ApiResponse.success
    
    switch response {
    case ApiResponse.error:
        print("Error")
    case ApiResponse.success:
        print("Success")
    case ApiResponse.pending:
        print("Pending")
    }
}

showResponse()


func returnMaxNumber(number1: Int , number2:Int) -> Int{
    if number1 > number2{
        return number1
    }
    else{
        return number2
    }
}

var result = returnMaxNumber(number1: 100, number2: 300)
print(result)


//func greet(person: String, alreadyGreeted: Bool) -> String {
//    if alreadyGreeted {
//        return greetAgain(person: person)
//    } else {
//        return greet(person: person)
//    }
//}

func greet(person: Bool) -> Bool{
    if(person){
        return true
    }else {
        return false
    }
}


print(greet(person: false))


class Person{
    var number1: Int
    var number2: Int
    
    init(number1: Int , number2:Int) {
        self.number1 = number1
        self.number2 = number2
    }
    

    func showNumbers(){
        print(number1)
    }
}

var person = Person(number1: 100, number2: 200)
print(person.showNumbers())



func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}




// Specifying Argument Labels


func someFunction(argument name: String){
    print(name)
}

print(someFunction(argument: "pavel"))



enum Beverage: CaseIterable{
    case coffee, tea, juice
}

let numberOfChoice = Beverage.allCases.count
print(numberOfChoice)



struct Resulation{
    var height = 0
    var width = 0
    
    func getTotal() -> Int{
        return height+width
    }
}

class VideoMode{
    var resulation = Resulation(height: 100 , width: 300)
    func showTotalValue(){
        print(resulation.getTotal())
    }
}

var videoMode = VideoMode()
print(videoMode.showTotalValue())


class User{
    var firstName:String
    var lastName:String
    var gender:String
    
    var count:Int?
    
    
    init(firstName:String , lastName:String , gender:String){
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
    }
    
    func showCount(){
        
    }
    func showUserInfo(){
        print(firstName)
    }
}


var user = User(firstName: "pavel", lastName: "robin", gender: "ammu")
print(user.showUserInfo())
print(user.showCount())



func greetMessage(){
    
    func displayName(){
        print("Pavel")
    }
    displayName()
}

print(greetMessage())


class TestFunctionOverloading{
    
    func display(name:String) -> String{
        return name
    }
    
    func display(name:String , number:Int) -> Int{
        return number
    }
}

var testFunction = TestFunctionOverloading()
print(testFunction.display(name: "pavel"))

print(testFunction.display(name: "robin", number: 100))




class PersonClass{
    var firstName:String , secondName:String
    
    init(firstName:String , secondName:String){
        self.firstName = firstName
        self.secondName = secondName
    }
    
    func showPersonName(){
        print(firstName+secondName)
    }
}


class SecondPersion : PersonClass {
    
    var personName:String
    
    init(firstName: String, secondName: String, personName:String) {
        // first initialize the new property
        self.personName = personName
        // overide the super property
        super.init(firstName: firstName, secondName: secondName)
        
    }
    
    // show full name
    func showFullName(){
        print(personName)
    }
}

var secondPersion = SecondPersion(firstName: "First", secondName: "Second", personName: "Person Name")
print(secondPersion.showFullName())
print(secondPersion.showPersonName())

