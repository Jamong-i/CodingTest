import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
	// 제한 사항
	guard 1...1000 ~= cipher.count, 1...cipher.count ~= code else { return "" }
	
	// 문제 풀이
	var answer: String = ""
	var count: Int = 1
	
	for i in cipher {
		if count % code == 0 {
			answer += String(i)
		}
		count += 1
	}
	return answer
}

func solution2(_ cipher:String, _ code:Int) -> String {
	var result = ""

	for i in stride(from: code-1, to: cipher.count, by: code) {
		result.append(cipher[cipher.index(cipher.startIndex, offsetBy: i)])
	}

	return result
}
