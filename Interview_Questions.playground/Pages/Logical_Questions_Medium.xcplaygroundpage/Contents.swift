//: [Previous](@previous)

import Foundation

//Check if Two Strings Are Anagrams
// Input: "listen" and "silent"
// Output: true
func areAnagrams(_ a: String, _ b: String) -> Bool { return false}

//Find the Most Frequent Element in an Array
// Input: [2, 3, 2, 5, 3, 2]
// Output: 2
func mostFrequentElement(){ }


/*---------------------------------------------------------------------------------------------------------------*/

/*Write a function that returns an index which contains an unpaired no from a given Array.
 
 Ex;- [9,3,9,4,5,3,4], Answer is 4
 
*/

func getIndexOfUnpairedNo(array:Array<Int>) -> Int{
    
    var unPairedNumber:Int = 0
    
    for index in 0...array.count-1 {
        
        let currentNumber = array[index]
        
        print("CurrentNumber is \(currentNumber)")
        
        var temporaryArray = array
        
        temporaryArray.remove(at: index)
        print("Temporary Array is \(temporaryArray)")
        
        for _ in 0...temporaryArray.count-1 {
            
            if temporaryArray.contains(currentNumber){
                break
            }else{
                unPairedNumber = currentNumber
                return unPairedNumber
            }
        }
    }
    
    return unPairedNumber
}

let unpairedNumber = getIndexOfUnpairedNo(array: [3,0,9,4,7,1,7,3,4])

print("UnpairedNumber is \(unpairedNumber)")

/*---------------------------------------------------------------------------------------------------------------*/

///Given an array of integers, return indices of the two numbers such that they add up to a specific target.

///You may assume that each input would have exactly one solution, and you may not use the same element twice.

/*
Example:

Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
 
 */

func getIndexesFromArray(numberArray:[Int], sumOfNumbers:Int) -> [Int]{
    
    var outputArray = [] as [Int]
    
    outerLoop: for index in 0...numberArray.count-1 {
        
        let currentNumer = numberArray[index]
        
        for nextIndex in 0...numberArray.count-1 {
            
            if nextIndex == index {
                continue
            }
            
            let subsequentNumber = numberArray[nextIndex]
            
            if currentNumer+subsequentNumber == sumOfNumbers{
                outputArray.append(index)
                outputArray.append(nextIndex)
                break outerLoop
            }
        }
    }
    
    return outputArray
}

let arrayWithIndices = getIndexesFromArray(numberArray: [2,1,1,3], sumOfNumbers: 4)
