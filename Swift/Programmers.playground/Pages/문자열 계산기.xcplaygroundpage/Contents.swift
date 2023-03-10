import Foundation

// 테스트 케이스 7번 8번은 빼고 실패 도대체 왜? 테스트 케이스좀 알려줘라 프로그래머스야
func solution(_ my_string: String) -> Int {
	// 문자열 길이 검증
	guard 5...100 ~= my_string.count else { return -1 }

	// 시작과 끝 공백 검증
	guard let first = my_string.first, let last = my_string.last,
		first != " " && last != " " else { return -1 }

	// 0으로 시작하는 숫자 검증
	guard !my_string.hasPrefix("0") else { return -1 }

	// 문제 풀이
	let tokens = my_string.split(separator: " ")
	let operatorString = tokens[1]
	
	guard let operandOne = Int(tokens[0]), 1...20000 ~= operandOne else { return -1 }
	guard operatorString == "+" || operatorString == "-" else { return -1 }
	guard let operandTwo = Int(tokens[2]), 1...20000 ~= operandTwo else { return -1 }

	switch operatorString {
	case "+":
		let result = operandOne + operandTwo
		return -100000...100000 ~= result ? result : -1
	case "-":
		let result = operandOne - operandTwo
		return -100000...100000 ~= result ? result : -1
	default:
		return -1
	}
}

// 문제 알게 됌
/**
 수식을 계산하기 위해서는 우선 문자열로 된 수식을 연산할 수 있는 형태로 변환해야 합니다. 이를 위해 입력된 문자열을 공백을 기준으로 나눠서 숫자와 연산자를 분리한 후, 계산합니다.

 숫자와 연산자를 분리한 후, 계산을 하기 위해서는 연산자의 우선순위를 고려해야 합니다. 이 문제에서는 덧셈과 뺄셈만 있으므로, 먼저 나오는 연산자부터 차례로 계산하면 됩니다.

 예를 들어, "3 + 5 - 2"라는 수식이 있다면, 먼저 "3 + 5"를 계산하여 결과값 8을 얻은 후, 이 값에서 "- 2"를 계산하여 최종 결과값 6을 얻게 됩니다.

 따라서 이 문제를 해결하기 위해서는 다음과 같은 단계를 거칩니다.

 문자열을 공백을 기준으로 나눠서 숫자와 연산자를 분리합니다.
 연산자의 우선순위를 고려하여 계산합니다.
 최종 결과값을 반환합니다.
 코드는 다음과 같습니다.

 */
import Foundation

func solution2(_ my_string:String) -> Int {
	var tokens = my_string.split(separator: " ").map { String($0) }
	var result = 0
	var i = 0
	var op = "+"
	while i < tokens.count {
		let token = tokens[i]
		if token == "+" || token == "-" {
			op = token
		} else {
			let num = Int(token)!
			if op == "+" {
				result += num
			} else {
				result -= num
			}
		}
		i += 1
	}
	return result
}
print(solution2("20000 - 2000 + 303 + 321 - 123"))  // 7


