import Foundation

func solution1(_ my_string: String) -> [Int] {
	// 제한 사항
	guard 1...100 ~= my_string.count else { return [] }

	// 문제 풀이
	var answer = my_string.filter { $0.isNumber }
	return String(answer).map{ Int(String($0))! }.sorted()
}

func solution2(_ myString: String) -> [Int] {
	return try! NSRegularExpression(pattern: "[A-Z|a-z]").stringByReplacingMatches(in: myString, range: NSMakeRange(0, myString.count), withTemplate: "").map { Int(String($0)) ?? 0 }.sorted()
}


// Test Case 1
print(solution1("hi12392"))

// Test Case 2
print(solution2("p2o4i8gj2"))

// Test Case 3
print(solution2("ancde0"))
