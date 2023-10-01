import Foundation




// 1

print("task 1:")

func factorialCalc(num: Int) -> Int {
    if num == 0 {
        return 1
    } else {
        var total: Int = 1
        for i in 1...num {
            total *= i
        }
        print(total)
        return total
    }
}

factorialCalc(num: 3)
print()


// 2


print("task 2:")
func fibonacci(num: Int) -> [Int] {
    var fibonacciArr: [Int] = []

    var firstNum: Int = 0
    var secondNum: Int = 1
    var thirdNum: Int = 0


    for _ in 0...(num - 1) {

        fibonacciArr.append(firstNum)

        thirdNum = firstNum + secondNum
        firstNum = secondNum
        secondNum = thirdNum

    }
    print(fibonacciArr)
    return fibonacciArr
}

fibonacci(num: 20)
print()


// 3


print("task 3:")

func palindrome(word: String) -> Bool {

    var reversedStr = ""

    for char in word {
        reversedStr.insert(char, at: reversedStr.startIndex)
    }

    if reversedStr == word{
        print("\(word) is a palindrome")
        return true
    }else {
        print("\(word) is not a palindrome")
        return false
    }

}

palindrome(word: "laaaaaal")
print()


// 4


print("task 4:")

func squaredFunc(numArr: inout [Int]) -> [Int] {

    for i in 0..<numArr.count {
        numArr[i] *= numArr[i]
    }
    print(numArr)
    return numArr
}

var passedArr: [Int] = [10,15,20]

squaredFunc(numArr: &passedArr)
print()


// 5


print("task 5:")
func strCounter(sentence: String) -> [String: Int] {
    var strCounts: [String: Int] = [:]

    let words = sentence.split(separator: " ")

    for word in words {
        let lowercasedWord = word.lowercased()

        if let count = strCounts[lowercasedWord] {
                strCounts[lowercasedWord] = count + 1
        } else {
                strCounts[lowercasedWord] = 1
        }
    }

    print(strCounts)
    return strCounts

}


let inputSentence = "Plz Its been almost 5 hours and I cant shut my eyes plz eyes"
strCounter(sentence: inputSentence)
print()


//6


print("task 6:")

let numToBinary: (Int) -> String = { toBinary in
    var result = ""
    var binary = toBinary


    while binary > 0 {
        let digit = binary % 2
        result = String(digit) + result
        binary /= 2
    }

    if result.isEmpty {
        result = "0"
    }

    print(result)
    return result
}


numToBinary(10)
print()


// 7


print("task 7:")

let delOddNums: ([Int]) -> [Int] = { nums in

    let evenNums = nums.filter { number in
        number % 2 == 0
    }
    print(evenNums)
    return evenNums
}

var dirtyArr: [Int] = [10,15,20,7,5,8]

delOddNums(dirtyArr)
print()


// 8


print("task 8:")

let toMapArray: ([Int]) -> [Int] = { nums in

    let evenNums = nums.map { num in
        num * 10
    }
    print(evenNums)
    return evenNums
}

var toMultiply: [Int] = [1,13,11,7]

toMapArray(toMultiply)
print()


// 9


print("task 9:")

func calculateSumAsync(nums: [Int], completion: @escaping (Int) -> Void) {
    DispatchQueue.global().asyncAfter(deadline: .now() + 3) {
        let sum = nums.reduce(0, +)
        DispatchQueue.main.async {
            completion(sum)
        }
    }
}


let numbers2 = [15,1,2,5]

calculateSumAsync(nums: numbers2) { sum in
    print(sum)
}

print("wait 3 seconds")
print()


// 10


print("task 10:")
func oddNumFilter(strArr: [String]) -> [Int]{
    
    var oddNums: [Int] = []
    
    oddNums = strArr.compactMap { str in Int(str) }
    
    let finalOddNums = oddNums.filter { num in num % 2 == 1 }
    
    print(finalOddNums)
    return finalOddNums
}


let randomArr: [String] = ["help","1","Hungry","3","15","😤","10",]

oddNumFilter(strArr: randomArr)


