import Foundation

func solution(_ message: String) -> Int {
	// message 길이 검증
	guard 1...50 ~= message.count else { return -1 }
	
	// message 검증 ( 이 검증에서 테스트 3번 오류 발생 )
	let allowedCharacters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!~ "
	let invalidCharacters = CharacterSet(charactersIn: allowedCharacters).inverted
	
	guard message.rangeOfCharacter(from: invalidCharacters) == nil else { return -1 }
	
	// 문제 풀이
	return (message.count * 2)
}
