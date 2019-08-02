import UIKit

var str = "Hello, playground"

func sayHi(name: String = "CSE 438") -> String {
    return "Hi " + name
}
let name = sayHi()


func refreshWebSite() -> (Int, String ) {
    // refresh
    return (200, "Success")
}
let (statusCode, message) = refreshWebSite()
//Name contains "Hi CSE 438"
