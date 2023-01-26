import Foundation

func solution1(_ slice:Int, _ n:Int) -> Int {
	// 제한 사항
	guard 2...10 ~= slice, 1...100 ~= n else { return 0 }
	
	// 문제 풀이
	if (n % slice != 0){
		return (n / slice + 1)
	}
	else {
		return (n / slice)
	}
}


func solution2(_ slice:Int, _ n:Int) -> Int {
	// 제한사항
	guard 2...10 ~= slice, 1...100 ~= n else { return 0}
	
	// 문제풀이
	return n / slice + (n % slice > 0 ? 1 : 0)
}


// Test Case 1
print(solution2(7, 10))

// Test Case 2
print(solution2(4, 12))
