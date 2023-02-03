import Foundation

func solution1(_ rsp: String) -> String {
	// 제한 사항
	guard 1...100 ~= rsp.count else { return "" }
	
	// 문제 풀이
	var answer: [String] = []
	
	var cutRsp = rsp.unicodeScalars.map(String.init)
	
	for i in cutRsp {
		answer.append(i == "2" ? "0" : i == "0" ? "5" : "2")
	}
	
	return answer.joined()
}

// 나는 바보인가보다... map만 쓰면 되는데...
func solution2(_ rsp: String) -> String {
	// 제한 사항
	guard 1...100 ~= rsp.count else { return "" }
	
	// 문제 풀이
	return rsp.map{$0 == "2" ? "0" : $0 == "0" ? "5" : "2"}.joined()
}

// Test Case 1
print(solution1("2"))

// Test Case 2
print(solution2("205"))
