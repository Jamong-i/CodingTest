import Foundation

func solution(_ n: Int) -> String {
	// 제한 사항
	guard 1...10 ~= n else { return "1부터 10까지 수를 입력하세요."}
	
	// 문제 풀이
	var result: [String] = []
		
	for i in 1...n {
		result.append(String(repeating: "*", count: i))
	}
	return result.joined(separator: "\n")
}

let n = readLine()!.components(separatedBy: " ").map({ Int($0) })

print(solution(n[0]!))
