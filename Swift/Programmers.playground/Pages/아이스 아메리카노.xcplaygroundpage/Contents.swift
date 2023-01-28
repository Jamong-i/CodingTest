import Foundation

// while문 사용
func solution1(_ money:Int) -> [Int] {
	// 제한 사항
	guard 0...10000000 ~= money else { return [] }
	
	// 문제 풀이
	var count: Int = 0
	var cash: Int = money
	
	while(cash >= 5500) {
		cash = cash - 5500
		count += 1
	}
	
	return [count, cash]
}

// 간단하게 만들기
func solution2(_ money: Int) -> [Int] { [money / 5500, money % 5500] }

// Test Case 1
print(solution1(5500))

// Test Case 2
print(solution2(15000))
