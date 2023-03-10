func calculate(_ expression: String) -> Int {
	// 공백을 제거하고 숫자와 연산자를 배열로 분리합니다.
	let tokens = expression.replacingOccurrences(of: " ", with: "").components(separatedBy: ["+", "-"])
	let operators = expression.filter({ $0 == "+" || $0 == "-" }).map({ String($0) })
	
	// 첫 번째 숫자 검증
	guard let first = Int(tokens[0]), 1...20000 ~= first else { return -1 }
	var result = first
	
	// 연산자 우선순위에 따라 순차적으로 계산합니다.
	var currentIndex = 0
	for op in ["+", "-"] {
		while let nextIndex = operators[currentIndex...].firstIndex(of: op) {
			let endIndex = nextIndex + currentIndex
			let operand = Int(tokens[endIndex])!
			switch op {
			case "+":
				result += operand
			case "-":
				result -= operand
			default:
				break
			}
			currentIndex = endIndex + 1
		}
	}
	
	return result
}
