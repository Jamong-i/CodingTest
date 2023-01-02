import Foundation

func solution1(_ numbers: [Int]) -> [Int] {
    // 제한 사항
    guard 1...1000 ~= numbers.count else {
        return []
    }
    
    // 문제 풀이
    var answer: [Int] = []

    for i in numbers{
        answer.append(i * 2)
    }
    
    return answer
}


func solution2(_ numbers: [Int]) -> [Int] {
    // 제한 사항
    guard 1...1000 ~= numbers.count else {
        return []
    }
    
    // 문제 풀이
    var answer: [Int] = []
    answer = numbers.map({ $0 * 2})

    return answer
}


// Test Case 1
print(solution2([2, 4, 6, 8, 10]))


// Test Case 2
print(solution2([1, 2, 100, -99, 1, 2, 3]))
