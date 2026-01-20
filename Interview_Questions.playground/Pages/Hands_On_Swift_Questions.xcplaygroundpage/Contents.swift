//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Questions on Swift Basics
/// Property Observers
/// What are Generics? Ask to write a Generic to understand the usage of Generics.
/// Ask about Struct and Class differences in terms of
///What are strong, weak, and unowned references, and when do you use each?
//


//Concurrency — GCD & Async/Await
///How do you perform work on a background thread and update the UI afterward?
///Explain how async/await improves readability compared to completion handlers.
//

/*-------------------------------------------------------------------------------------------------------*/

//Networking and Decoding
///How do you decode JSON into custom models using Codable?

////*Sample Rest API for fetching JSON Data*/
///https://jsonplaceholder.typicode.com/todos/1
///https://api.github.com/users/hadley/orgs
///
///Answer
struct Response: Codable { // or Decodable
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}

if let url = URL(string:"https://jsonplaceholder.typicode.com/todos/1") {
    URLSession.shared.dataTask(with: url) { data, response, error in
        if let data = data {
            do {
                let res = try JSONDecoder().decode(Response.self, from: data)
                print(res.title,res.completed)
            } catch let error {
                print(error)
            }
        }
    }.resume()
}
///
/*-------------------------------------------------------------------------------------------------------*/


//Unit Testing
//Explain dependency injection in testing.
