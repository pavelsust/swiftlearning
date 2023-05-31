import UIKit



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
