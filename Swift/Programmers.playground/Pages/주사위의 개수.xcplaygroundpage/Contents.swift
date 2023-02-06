import Foundation

func solution1(_ box: [Int], _ n: Int) -> Int {
	// 제한 사항
	guard box.count == 3, 1...50 ~= n else { return 0 }
	
	// 문제 풀이
	var width = box[0]
	var length = box[1]
	var height = box[2]
	
	return (width / n) * (length / n) * (height / n)
}

func solution2(_ box: [Int], _ n: Int) -> Int {
	return Int(box[0] / n) * Int(box[1] / n) * Int(box[2] / n)
}


// Test Case 1
print(solution1([1, 1, 1], 1))

// Test Case 2
print(solution2([10, 8, 6], 3))
