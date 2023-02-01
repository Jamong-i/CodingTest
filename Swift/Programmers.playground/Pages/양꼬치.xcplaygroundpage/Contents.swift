import Foundation

func solution(_ n: Int, _ k: Int) -> Int {
	// 제한 사항
	guard 1...999 ~= n, n/10...999 ~= k else { return 0 }
	
	// 문제 풀이
	return  (n * 12000) + (k * 2000) - (n / 10 * 2000)
}

// Test Case 1
print(solution(10, 3))

// Test Case 2
print(solution(64, 6))
