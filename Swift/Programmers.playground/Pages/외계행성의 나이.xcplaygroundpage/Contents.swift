import Foundation

func solution1(_ age: Int) -> String {
	// 제한 사항
	guard 0...1000 ~= age else { return "" }
	
	// 문제 설명
	let dic962: [String: String] = ["0": "a", "1": "b", "2": "c", "3": "d", "4": "e", "5": "f", "6": "g", "7": "h", "8": "i", "9": "j"]
	var answer: [String] = []
	for i in String(age) {
		answer.append(dic962[String(i)]!)
	}
	
	return answer.joined()
}

func solution2(_ age: Int) -> String {
	// 제한 사항
	guard 0...1000 ~= age else { return "" }
	
	// 문제 풀이
	let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
	
	return String(age).map{alphabet[Int(String($0))!]}.joined()
}

func solution3(_ age: Int) -> String {
	return String(age).reduce("") { $0 + String(UnicodeScalar(97 + Int(String($1))!)!)
	}
}

// Test Case 1
print(solution1(23))

// Test Case 2
print(solution2(51))

// Test Case 3
print(solution3(100))
