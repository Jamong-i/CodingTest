import Foundation

// 일반적인 if문
func solution(_ n:Int) -> Int {
	// 제한 사항
	guard 1...100 ~= n else { return 0 }
	
	// 문제 풀이
	if (n % 7 != 0){
		return (n / 7 + 1)
	}
	else {
		return (n / 7)
	}
}

// 삼항 연산자 사용
func solution2(_ n: Int) -> Int { n / 7 + (n % 7 > 0 ? 1 : 0) }


// 소수점 올림 ceil
func solution3(_ n:Int) -> Int {
	return Int(ceil(Double(n) / Double(7)))
}


// Test Case 1
print(solution(7))

// Test Case 2
print(solution(1))

// Test Case 3
print(solution(15))
