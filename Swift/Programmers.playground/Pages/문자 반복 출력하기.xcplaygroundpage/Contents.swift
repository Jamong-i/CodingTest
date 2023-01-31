import Foundation

func solution1(_ my_string: String, _ n: Int) -> String {
	// 제한 사항
	guard 2...5 ~= my_string.count, 2...10 ~= n else { return "" }
	
	// 문제 풀이
	var result: String = ""
	
	for i in my_string {
		result.append(String(repeating: i, count: n))
	}
	
	return result
}

func solution2(_ my_string: String, _ n: Int) -> String {
	// 제한 사항
	guard 2...5 ~= my_string.count, 2...10 ~= n else { return "" }
	
	return my_string.map( { String(repeating: $0, count: n) }).joined()
}

// Test Case 1
print(solution1("hello", 3))

// Test Case 2
print(solution2("hello", 5))
