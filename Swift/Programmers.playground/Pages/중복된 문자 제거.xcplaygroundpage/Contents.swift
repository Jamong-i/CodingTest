import Foundation

func solution1(_ my_string: String) -> String {
	// 제한 사항
	guard 1...110 ~= my_string.count else { return "" }
	
	// 문제 풀이
	var result = ""
	
	for i in my_string {
		if !result.contains(i) {
			result += String(i)
		}
	}
	
	return result
}

func solution2(_ my_string: String) -> String {
	// 제한 사항
	guard 1...110 ~= my_string.count else { return "" }
	
	// 문제 풀이
	var set = Set<Character>()
	
	return my_string.filter{ set.insert($0).inserted }
}


// TestCase 1
print(solution1("people"))

// TestCase 2
print(solution2("We are the world"))
