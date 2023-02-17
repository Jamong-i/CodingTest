import Foundation

func solution(_ strlist: [String]) -> [Int] {
	// 제한 사항
	guard 1...100 ~= strlist.count else { return [] }
	
	// 문제 풀이
	var answer: [Int] = [Int](repeating: 0, count: strlist.count)
	
	for i in 0...strlist.count-1  {
		answer[i] = strlist[i].count
	}
	return answer
}

func solution2(_ strlist: [String]) -> [Int] {
	// 제한 사항
	guard 1...100 ~= strlist.count else { return [] }
	
	// 문제 풀이
	var result: [Int] = []
	for str in strlist {
		result.append(str.count)
	}
	return result
}


// Test Case 1
print(solution(["We", "are", "the", "world!"]))

// Test Case 2
print(solution(["I", "Love", "Programmers."]))
