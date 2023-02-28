import Foundation

// 틀린 풀이
func solution(_ array: [Int], _ n: Int) -> Int {
	// 제한 사항
	guard 1...100 ~= array.count else { return 0 }
	
	// 문제 풀이
	var arrayList: [Int] = array
	arrayList.append(n)
	
	var indexN = arrayList.sorted().firstIndex(of: n)!
	var firstN = arrayList[indexN - 1]
	var secondN = arrayList[indexN]
	
	return (n - firstN) < (secondN - n) ? firstN : (n - firstN) == (secondN - n) ? firstN : secondN
}

import Foundation

func solution2(_ array: [Int], _ n: Int) -> Int {
	// 제한 사항
	guard 1...100 ~= array.count else { return 0 }
	
	// 문제 풀이
	var arrayList: [Int] = array
	arrayList.append(n)
	arrayList.sort()

	var indexN = arrayList.sorted().firstIndex(of: n)!
	
	if array.count == indexN {
		return arrayList[indexN - 1]
	}
	else {
		var firstN = arrayList[indexN - 1]
		var secondN = arrayList[indexN + 1]
		return (n - firstN) < (secondN - n) ? firstN : (n - firstN) == (secondN - n) ? firstN : secondN
	}
}

func solution3(_ array:[Int], _ n:Int) -> Int {
	return array.min(by: { (abs($0 - n), $0) < (abs($1 - n), $1) })!
}

// Test Case 1
print(solution2([3, 10, 28], 20))

// Test Case 2
print(solution2([10, 11, 12], 13))
