import Foundation

// 에라토스테네스의 체 (소수 찾고 제거)
func solution1(_ n: Int) -> Int {
	// 제한 사항
	guard 1...100 ~= n else { return 0 }
	
	// 문제 풀이
	if n == 1 {
		return 0
	}
	
	var numArray = Array(repeating: 0, count: n + 1)
	var primeCount = 0
	
	for i in 2...n {
		numArray[i] = i
	}

	for i in 2...n {
		if numArray[i] == 0 {
			continue
		}
		// 전진한다(i+i 부터 n까지 i만큼의 보폭으로)
		for j in stride(from: i+i, through: n, by: i) {
			numArray[j] = 0;
		}
	}

	for i in 2...n {
		if numArray[i] != 0 {
			primeCount += 1
		}
	}
	
	// 1도 제외해야 하기 때문에 -1
	return n - primeCount - 1
}

func solution2(_ n:Int) -> Int {
	var count = 0
	var result = 0
	for i in 1...n {
		for j in 1...i {
			if i % j == 0 {
				count += 1
			}
		}
		if count >= 3 {
			result += 1
		}
		count = 0
	}
	return result
}

func solution3(_ n: Int) -> Int { (1...n).filter { i in (1...i).filter { i % $0 == 0 }.count > 2 }.count }


// Test Case 1
print(solution1(10))

// Test Case 2
print(solution2(15))
