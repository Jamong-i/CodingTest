import Foundation

func solution1(_ my_string: String) -> String {
	// 제한 사항
	guard 1...1000 ~= my_string.count else { return "" }
	
	// 문제 풀이
	return my_string.components(separatedBy: ["a", "e", "i", "o", "u"]).joined()
}

func solution2(_ my_string: String) -> String {
	return my_string.filter{!["a", "e", "i", "o", "u"].contains($0)}
}


// Test Case 1
print(solution1("bus"))

// Test Case 2
print(solution2("nice to meet you"))
