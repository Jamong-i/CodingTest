import Foundation

// for, if문을 사용
func solution1(_ num_list: [Int]) -> [Int] {
	// 제한 사항
	guard 1...100 ~= num_list.count else { return [] }
	
	// 문제 풀이
	var even: Int = 0
	var odd: Int = 0
	
	for i in num_list {
		if i % 2 == 0 {
			even += 1
		} else {
			odd += 1
		}
	}
	return [even, odd]
}

// 고차함수 Filter을 사용
func solution2(_ numList: [Int]) -> [Int] { [numList.filter { $0 % 2 == 0 }.count, numList.filter { $0 % 2 == 1 }.count] }


// Test Case 1
print(solution1([1, 2, 3, 4, 5]))

// Test Case 2
print(solution2([1, 3, 5, 7]))
