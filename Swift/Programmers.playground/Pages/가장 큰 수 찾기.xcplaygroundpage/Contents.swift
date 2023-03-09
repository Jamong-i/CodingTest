import Foundation

func solution(_ array:[Int]) -> [Int] {
	// array의 길이 검증
	guard 1...100 ~= array.count else { return [] }
	
	// array의 원소 검증
	guard Set(array).count == array.count else { return [] }
	
	for element in array {
		guard 0...1000 ~= element else { return [] }
	}
	
	// 문제 풀이
	var answer: [Int] = []
	
	answer.append(array.sorted().last!)
	answer.append(array.firstIndex(of: answer[0])!)
	
	return answer
}

func solution2(_ array: [Int]) -> [Int] { [array.max() ?? 0, array.firstIndex(of: array.max() ?? 0) ?? 0] }

print(solution([1, 8, 3]))
