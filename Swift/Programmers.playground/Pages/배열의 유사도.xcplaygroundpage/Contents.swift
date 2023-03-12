import Foundation

func solution(_ s1: [String], _ s2: [String]) -> Int {
	// 제한 사항
	guard 1...100 ~= s1.count, 1...100 ~= s2.count else { return 0 }
	
	for element in s1 {
		guard 1...10 ~= element.count, element.rangeOfCharacter(from: CharacterSet.lowercaseLetters.inverted) == nil else { return 0 }
	}
	
	for element in s2 {
		guard 1...10 ~= element.count, element.rangeOfCharacter(from: CharacterSet.lowercaseLetters.inverted) == nil else { return 0 }
	}
	
	// 문제 풀이
	let answer: [String] = s1 + s2
	
	return (answer.count - Set(answer).count)
}


func solution(_ s1: [String], _ s2: [String]) -> Int { s1.map(s2.contains(_:)).filter { $0 }.count }
