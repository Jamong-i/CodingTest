import Foundation

func solution(_ numbers: String) -> Int64 {
	// 제한사항
	guard 1...50 ~= numbers.count else { return 0 }
	
	// 문제 풀이
	var num: String = numbers
	var englishToNum: [String: String] = ["zero": "0", "one": "1", "two": "2", "three": "3", "four": "4", "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"]
	
	for i in englishToNum {
		num = num.replacingOccurrences(of: i.key, with: i.value)
	}
	
	return Int64(num)!
}
