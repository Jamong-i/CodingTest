import Foundation

func solution(_ order:Int) -> Int {
	// 제한 사항
	guard 1...1000000 ~= order else { return 0 }
	
	// 문제 풀이
	var arrayList: [Character] = []
	var count: Int = 0
	
	for i in String(order) {
		arrayList.append(i)
	}
	
	for i in arrayList{
		if i.wholeNumberValue! % 3 == 0 && i.wholeNumberValue! != 0 {
			count += 1
		}
	}
	
	return count
}

func solution2(_ order:Int) -> Int {
	return String(order).filter { "369".contains($0) }.count
}


// Test Case 1
print(solution2(3632))
