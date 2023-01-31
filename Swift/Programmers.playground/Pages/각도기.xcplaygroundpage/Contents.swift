import Foundation

func solution1(_ angle: Int) -> Int {
	// 제한 사항
	guard 1...180 ~= angle else { return 0 }
	
	// 문제 풀이
	return 1...89 ~= angle ? 1 : 90 == angle ? 2 : 91...179 ~= angle ? 3 : 4
}

func solution2(_ angle: Int) -> Int {
	// 제한 사항
	guard 1...180 ~= angle else { return 0 }
	
	// 문제 풀이
	switch angle {
	case 0..<90:
		return 1
	case  90:
		return 2
	case 90..<180:
		return 3
	default:
		return 4
	}
}



// Test Case 1
print(solution1(70))

// Test Case 2
print(solution2(91))

// Test Case 3
print(solution2(180))
