import Foundation

// 유클리드 호재법(최대공약수)
func gcd(_ num1: Int, _ num2: Int) -> Int {
	let mod: Int = num1 % num2
	return 0 == mod ? min(num1, num2) : gcd(num2, mod)
}

// 최소공배수 구하기
func lcm(_ num1: Int, _ num2: Int) -> Int {
	return num1 * num2 / gcd(num1, num2)
}
	
func solution1(_ n: Int) -> Int {
	// 제한 사항
	guard 1...100 ~= n else { return 0 }
	
	// 문제 풀이
	return lcm(n, 6) / 6
}

// 고차함수를 이용한 6의 최대공약수로 n을 나눈 값 리턴
func solution2(_ n: Int) -> Int {
	let div: [Int] = [6, 3, 2 ,1].filter {n % $0 == 0}
	return (n / div[0])
}

// Test Case 1
print(solution1(6))

// Test Case 2
print(solution1(10))

// Test Case 3
print(solution1(4))
