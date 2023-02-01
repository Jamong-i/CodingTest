import Foundation

func solution1(_ emergency: [Int]) -> [Int] {
	// 제한 사항
	guard 1...100 ~= emergency.count else { return [] }
	
	// 문제 풀이
	var emergencyDic: [Int: Int] = [:]
	var count: Int = 1
	var answer: [Int] = []
	
	for i in emergency.sorted(by: >) {
		emergencyDic[i] = count
		count += 1
	}
	
	for i in emergency {
		answer.append(emergencyDic[i]!)
	}
	
	return answer
}

func solution2(_ emergency: [Int]) -> [Int] {
	// 제한 사항
	guard 1...100 ~= emergency.count else { return [] }
	
	// 문제 풀이
	return { emergency.map { emergency.sorted(by: >).firstIndex(of: $0)! + 1}}()
}

// Test Case 1
print(solution1([3, 76, 24]))

// Test Case 2
print(solution2([1, 2, 3, 4, 5, 6, 7]))

// Test Case 3
print(solution2([30, 10, 23, 6, 100]))
