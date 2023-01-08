import Foundation

func solution(_ denum1: Int, _ num1: Int, _ denum2: Int, _ num2: Int) -> [Int] {
    // 제한 사항
	guard (1...999 ~= denum1), (1...999 ~= num1), (1...999 ~= denum2), (1...999 ~= num2) else
	{ return [-1] }
    
    // 문제 풀이
    var denum = (denum1 * num2) + (denum2 * num1)
    var num = (num1 * num2)
    
    
    // 최대공약수(Greatest Common Factor)
    var denumGcf = denum
    var numGcf = num
    
    // 유클리드 호제법
    while(numGcf != 0) {
        var mod = denumGcf % numGcf
        denumGcf = numGcf
        numGcf = mod
    }
    
    // 최대 공약수 및 약분
    let gcf = denumGcf
    denum = denum / gcf
    num = num / gcf
    
    return [denum, num]
}

// Test Case 1
print(solution(1, 2, 3, 4))

// Test Case 2
print(solution(9, 2, 1, 3))
