import Foundation

func solution(_ my_string:String) -> String {
	// 제한 사항
	guard 1...1000 ~= my_string.count else { return "" }
	
	// 문제 풀이
	var answer: String = ""
	for i in my_string {
		switch i {
		case "a":
			answer += "A"
		case "b":
			answer += "B"
		case "c":
			answer += "C"
		case "d":
			answer += "D"
		case "e":
			answer += "E"
		case "f":
			answer += "F"
		case "g":
			answer += "G"
		case "h":
			answer += "H"
		case "i":
			answer += "I"
		case "j":
			answer += "J"
		case "k":
			answer += "K"
		case "l":
			answer += "L"
		case "m":
			answer += "M"
		case "n":
			answer += "N"
		case "o":
			answer += "O"
		case "p":
			answer += "P"
		case "q":
			answer += "Q"
		case "r":
			answer += "R"
		case "s":
			answer += "S"
		case "t":
			answer += "T"
		case "u":
			answer += "U"
		case "v":
			answer += "V"
		case "w":
			answer += "W"
		case "x":
			answer += "X"
		case "y":
			answer += "Y"
		case "z":
			answer += "Z"
		case "A":
			answer += "a"
		case "B":
			answer += "b"
		case "C":
			answer += "c"
		case "D":
			answer += "d"
		case "E":
			answer += "e"
		case "F":
			answer += "f"
		case "G":
			answer += "g"
		case "H":
			answer += "h"
		case "I":
			answer += "i"
		case "J":
			answer += "j"
		case "K":
			answer += "k"
		case "L":
			answer += "l"
		case "M":
			answer += "m"
		case "N":
			answer += "n"
		case "O":
			answer += "o"
		case "P":
			answer += "p"
		case "Q":
			answer += "q"
		case "R":
			answer += "r"
		case "S":
			answer += "s"
		case "T":
			answer += "t"
		case "U":
			answer += "u"
		case "V":
			answer += "v"
		case "W":
			answer += "w"
		case "X":
			answer += "x"
		case "Y":
			answer += "y"
		case "Z":
			answer += "z"
		default:
			answer += String(i)
		}
	}
	
	return answer
}


func solution2(_ my_string: String) -> String {

	var result = ""
	for c in my_string {
		let s = String(c)
		let lo = s.lowercased()
		let up = s.uppercased()
		result += (s == lo) ? up : lo
	}
	return result

}

// Test Case 1
print(solution("cccCCC"))

// Test Case 2
print(solution("abCdEfghIJ"))

