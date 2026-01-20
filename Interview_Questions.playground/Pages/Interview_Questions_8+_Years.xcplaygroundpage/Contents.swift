//Advanced Swift Questions:- (Above 8 years)

//Example of Coordinator Pattern - https://twitter.com/v_pradeilles/status/1564214524386869248

//Explain Dependency Injection with an example

//Can you describe a circular reference in Swift? How can you solve it?
//A circular reference happens when two instances hold a strong reference to each other, causing a memory leak because neither of the two instances will ever be deallocated. The reason is that you cannot deallocate an instance as long as there's a strong reference to it, but each instance keeps the other alive because of its strong reference.
//You'd solve the problem by breaking the strong circular reference by replacing one of the strong references with a weak or an unowned reference.

//How to Parse the data using Codable Protocol with Custom data types?

//Parsing fields in Codable structs that can be of any JSON type

//Decode and Flatten JSON with Dynamic Keys Using Decodable

//Network Requests and REST APIs in iOS with Swift (Protocol-Oriented Approach)

//How to Set Up and Test an Auto-Renewable Subscription for an iOS App

//Encoding and Decoding Custom Types
