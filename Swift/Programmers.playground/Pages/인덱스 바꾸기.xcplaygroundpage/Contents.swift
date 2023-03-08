import Foundation

func solution1(_ my_string: String, _ num1: Int, _ num2: Int) -> String {
	// 제한 사항
	guard 2...99 ~= my_string.count, 0 <= num1, num2 < my_string.count, num1 != num2 else { return "" }
	
	// 문제 풀이
	var answer: [Character] = []
	
	for i in my_string {
		answer.append(i)
	}
	print(answer)
	
	var stringNum1 = answer[num1]
	var stringNum2 = answer[num2]
	print(stringNum2)
	
	answer.remove(at: num1)
	answer.remove(at: num2 - 1)

	answer.insert(stringNum2, at: num1)
	answer.insert(stringNum1, at: num2)

	return answer.map{String($0)}.joined()
}

func solution2(_ myString: String, _ num1: Int, _ num2: Int) -> String {
	var array = ArraySlice(myString)

	array.swapAt(num1, num2)
	return array.map { String($0) }.joined()
}

// Test Case 1
print(solution1("hello", 1, 2))

// Test Case 2
print(solution2("I love you", 3, 6))
