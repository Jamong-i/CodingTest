import Foundation

// if 문
func solution1(_ price:Int) -> Int {
	// 제한 사항
	guard 10...1000000 ~= price else { return 0 }
	
	// 문제 풀이
	if price >= 500000 {
		return Int(Double(price) * 0.8)
	} else if price >= 300000 {
		return Int(Double(price) * 0.9)
	} else if price >= 100000 {
		return Int(Double(price) * 0.95)
	} else {
		return price
	}
}

// switch-case 문
func solution2(_ price:Int) -> Int {
	// 제한 사항
	guard 10...1000000 ~= price else { return 0 }
	
	// 문제 풀이
	switch price {
	case 100000..<300000:
		return Int(Double(price) * 0.95)
	case 300000..<500000:
		return Int(Double(price) * 0.90)
	case 500000...:
		return Int(Double(price) * 0.80)
	default:
		return price
	}
}

// 삼항연산자 이용
func solution3(_ price:Int) -> Int {
	// 제한 사항
	guard 10...1000000 ~= price else { return 0 }
	
	// 문제 풀이
	return price >= 500000 ? Int(Double(price) * 0.8) : price >= 300000 ? Int(Double(price) * 0.9) : price >= 100000 ? Int(Double(price) * 0.95) : price
}

// Test Case 1
print(solution1(150000))

// Test Case 2
print(solution2(580000))
