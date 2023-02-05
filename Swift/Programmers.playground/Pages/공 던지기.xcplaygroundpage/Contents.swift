import Foundation

func solution(_ numbers: [Int], _ k: Int) -> Int {
	// 제한 사항
	guard 3...99 ~= numbers.count, 1...999 ~= k else { return 0 }
	
	// 문제 풀이
	// k * 2 는 한사람을 건너 뛰기 때문에 -1은 던지는 사람을 찾기 위해 한다.
	// 배열은 0부터 시작하기 때문에 -1
	return numbers[(((k-1)*2)%numbers.count)]
}

// Test Case 1
print(solution([1, 2, 3, 4], 2))

// Test Case 2
print(solution([1, 2, 3, 4, 5, 6], 3))

// Test Case 3
print(solution([1, 2, 3], 3))
