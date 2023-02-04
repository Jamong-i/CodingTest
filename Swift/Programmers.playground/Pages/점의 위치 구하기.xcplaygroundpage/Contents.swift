import Foundation

func solution1(_ dot: [Int]) -> Int {
	// 제한 사항
	guard 2 == dot.count else { return 0 }
	
	// 문제 풀이
	return dot[0] > 0 && dot[1] > 0 ? 1 : dot[0] < 0 && dot[1] > 0 ? 2 : dot[0] < 0 && dot[1] < 0 ? 3 : 4
}

func solution2(_ dot:[Int]) -> Int {
	return dot[0] > 0 ? (dot[1] > 0 ? 1 : 4) : (dot[1] > 0 ? 2 : 3)
}

func solution3(_ dot:[Int]) -> Int {
	switch (dot[0], dot[1]) {
	case (0..., 0...): return 1
	case (...0, 0...): return 2
	case (...0, ...0): return 3
	case (0..., ...0): return 4
	default: return 0
	}
}

// Test Case 1
print(solution1([2, 4]))

// Test Case 2
print(solution2([-7, 9]))
