import Foundation

// 더럽게 풀기..
func solution1(_ hp: Int) -> Int {
	// 제한 사항
	guard 0...1000 ~= hp else { return 0 }
	
	// 문제 풀이
	var count: Int = 0
	var reHp: Int = hp
	
	while reHp != 0 {
		if reHp >= 5 {
			reHp -= 5
			count += 1
		} else if reHp >= 3 {
			reHp -= 3
			count += 1
		} else {
			reHp -= 1
			count += 1
		}
	}
	
	return count
}

// for 문
func solution2(_ hp: Int) -> Int {
	// 제한 사항
	guard 0...1000 ~= hp else { return 0 }
	
	// 문제 풀이
	var hp = hp
	var result = 0
	for i in [5, 3, 1] {
		result += hp / i
		hp %= i
	}
	return result
}

// 깔끔
func solution3(_ hp: Int) -> Int { hp / 5 + hp % 5 / 3 + hp % 5 % 3 }

// Test Case 1
print(solution1(23))

// Test Case 2
print(solution2(24))

// Test Case 3
print(solution3(999))
