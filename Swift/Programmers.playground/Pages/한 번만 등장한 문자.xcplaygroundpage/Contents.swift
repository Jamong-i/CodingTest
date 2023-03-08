import Foundation

func solution(_ s: String) -> String {
	// 제한 사항
	guard 1...999 ~= s.count else { return "" }
	
	// 문제 풀이
	var countDict: [Character: Int] = [:]
	var answer: [Character] = []
	
	for i in s {
		countDict[i, default: 0] += 1
	}
	
	for (key, value) in countDict {
		if value == 1 {
			answer.append(key)
		}
	}
	return answer.map{ String($0) }.sorted().joined()
}

// 좀더 간단하게
func solution2(_ s: String) -> String {
	// 제한 사항
	guard 1...999 ~= s.count else { return "" }
	
	// 문제 풀이
	var countDict: [Character: Int] = [:]
	
	for i in s {
		countDict[i, default: 0] += 1
	}

	return countDict.filter { $0.value == 1 }.keys.sorted().reduce("") { $0 + String($1) }
}

// 고차함수
func solution3(_ s: String) -> String {
	return Dictionary(grouping: Array(s).map(String.init), by: { $0 }).filter { $0.value.count <= 1 }
		.map { $0.key }
		.sorted(by: <)
		.joined()
}
