import Foundation

// reversed() 함수 사용
func solution1(_ my_string: String) -> String {
	// 제한 사항
	guard 1...1000 ~= my_string.count else { return "" }
	
	// 문제 설명
	return String(my_string.reversed())
}

// for - inster 사용
func solution2(_ my_string: String) -> String {
	// 제한 사항
	guard 1...1000 ~= my_string.count else { return "" }
	
	// 문제 설명
	var answer = [String]()
	
	for char in my_string {
		answer.insert(String(char), at: 0)
	}
	
	return answer.joined()
}

// Test Case 1
print(solution1("jaron"))

// Test Case 2
print(solution2("bread"))
