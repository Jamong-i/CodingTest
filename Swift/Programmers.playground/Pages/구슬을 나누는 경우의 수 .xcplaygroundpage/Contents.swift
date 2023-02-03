import Foundation

// balls 과 share가 같을때 1설정안한 오류 해결
func solution(_ balls: Int, _ share: Int) -> Int {
	// 제한 사항
	guard 1...30 ~= balls, 1...30 ~= share, share <= balls else { return 0 }
	
	// 문제 풀이 (서로 다른 n개 중 m개를 뽑는 경우의 수 공식 : n!/ (n-m)! * m!
	
	var denominator: [UInt] = []
	var totalDenomiator: [UInt] = []
	var numerator: [UInt] = []
	var totalNumerator: [UInt] = []
	var mToDe: [UInt] = []
	var m: [UInt] = []
	
	// 볼과 공유갯수가 같을 때 1 반환
	if balls == share {
		return 1
	} else {
		
		// 분자 n! 배열로 저장
		for i in 1...balls {
			denominator.append(UInt(i))
		}
		
		// 분모 (n-m)! 배열로 저장
		for i in 1...(balls - share) {
			numerator.append(UInt(i))
		}
		
		// 분모 m! 배열로 저장
		for i in 1...share {
			m.append(UInt(i))
		}
		
		// 분자 n!에서 (n-m)!의 공통 원소 제거
		totalDenomiator = denominator.filter{!numerator.contains($0)}
		// 제거한 후 m!의 공통 원소 제거
		totalDenomiator = totalDenomiator.filter{!m.contains($0)}
		
		// 분모 m!에 분자 n!의 공통 원소 제거
		totalNumerator = m.filter{!denominator.contains($0)}
		// 분자 n!에 m!의 공통 원소 제거 후 (n-1)! 원소 제거
		mToDe = denominator.filter{!m.contains($0)}
		numerator = numerator.filter{!mToDe.contains($0)}
		
		// 분모 배열 더하기
		totalNumerator = totalNumerator + numerator
		
		// 분자 / 분모 계산하기
		return Int(totalDenomiator.reduce(1, *) / totalNumerator.reduce(1, *))
	}
}
// 오버 플로우 때문에 안됌
func solutionX(_ balls: Int, _ share: Int) -> Int {
	// 제한 사항
	guard 1...30 ~= balls, 1...30 ~= share, share <= balls else { return 0 }
	
	// 문제 풀이 (서로 다른 n개 중 m개를 뽑는 경우의 수 공식 : n!/ (n-m)! * m!
	
	var denominator: Int = 1
	var numerator: Int = 1
	var m: Int = 1
	
	for i in 1...balls {
		denominator = denominator * i
	}
	
	for i in 1...(balls - share) {
		numerator = numerator * i
	}
	
	for i in 1...share {
		m = m * i
	}
	
	return denominator / (numerator * m)
}


// Test Case 1
print(solution(30, 6))

// Test Case 2
print(solution(5, 3))
