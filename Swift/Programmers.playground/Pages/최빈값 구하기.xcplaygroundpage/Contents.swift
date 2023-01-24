import Foundation

// 고차함수를 쓰지 않은 함수
func solution1(_ array:[Int]) -> Int {
	// 제한 사항
	guard 1...99 ~= array.count else { return array[0] }
	
	// 문제 풀이
	var dictionary = [Int: Int]()
	var keyNum = 0
	var count = 0
	
	for i in array {
		if dictionary.contains { $0.key == i } {
			dictionary[i]! += 1
		} else {
			dictionary[i] = 1
		}
	}
	
	print(dictionary)
	for (i, j) in dictionary {
		if j == dictionary.values.max() {
			count += 1
			keyNum = i
		}
	}
	print(count)
	return count == 1 ? keyNum : -1
}

// 고차함수를 사용한 함수
func solution2(_ array:[Int]) -> Int {
	// 제한 사항
	guard 1...99 ~= array.count else { return array[0] }
	
	// 문제풀이
	let dictionary =  Dictionary(grouping: array) { $0 }.sorted { $0.value.count > $1.value.count }
	return dictionary.count > 1 && dictionary[0].value.count == dictionary[1].value.count ? -1 : dictionary[0].key
}
