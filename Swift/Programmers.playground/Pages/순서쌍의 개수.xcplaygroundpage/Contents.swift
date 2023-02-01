import Foundation

func solution1(_ n: Int) -> Int {
	// 제한 사항
	guard 1...1000000 ~= n else { return 0 }
	
	// 문제 해결
	var dictionary : [Int: Int] = [:]
	
	for i in 1...n {
		if n % i == 0 {
			dictionary[i] = n
		}
	}
	
	return dictionary.count
}


func solution2(_ n: Int) -> Int {
	// 제한 사항
	guard 1...1000000 ~= n else { return 0 }
	
	// 문제 해결
	return (1...n).filter { n % $0 == 0 }.count
}


// Test Case 1
print(solution1(20))

// Test Case 2
print(solution2(100))
