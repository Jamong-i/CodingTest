import Foundation

func solution1(_ num_list: [Int], _ n: Int) -> [[Int]] {
	// 제한 사항
	guard num_list.count % n == 0, 0...150 ~= num_list.count else { return [] }
	
	// 문제 풀이
	var list = num_list
	// 배열 지정 없이 하면 오버플로우...
	var answer = Array(repeating: Array(repeating: 0, count: n), count: num_list.count / n)
	
	while list.count != 0 {
		for i in 0...(list.count / n)-1 {
			for j in 0...n-1 {
				answer[i][j] = list[0]
				list.remove(at: 0)
			}
		}
	}
	
	return answer
}

// indices 학습 필요
func solution2(_ numList: [Int], _ n: Int) -> [[Int]] {
	var answer = Array(repeating: Array(repeating: 0, count: n), count: numList.count / n)
	var count = 0

	for i in answer.indices {
		for j in answer[i].indices {
			answer[i][j] = numList[count]
			count += 1
		}
	}
	return answer
}

// Test Case 1
print(solution1([1, 2, 3, 4, 5, 6, 7, 8], 2))

// Test Case 2
print(solution2([100, 95, 2, 4, 5, 6, 18, 33, 948], 3))
