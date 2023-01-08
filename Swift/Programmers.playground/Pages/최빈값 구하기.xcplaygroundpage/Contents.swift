import Foundation

func solution(_ array:[Int]) -> Int {
	// 제한 사항
	guard 1...100 ~= array.count else { return array[0] }
	
	// 문제 풀이
	var dic: [Int: Int] = [:]
	
	for i in array {
		let count = dic[i] ?? 0
		dic[i] = count + 1
	}
	let answerDic = dic.sorted(by: {$0.1 > $1.1})
	
	return answerDic[0].value == answerDic[1].value ? -1 : answerDic[0].key
}
