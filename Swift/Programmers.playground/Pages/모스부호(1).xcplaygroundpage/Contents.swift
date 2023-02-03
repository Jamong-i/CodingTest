import Foundation

private let morse: [String: String] = [
	".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f",
	"--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
	"--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
	"...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
	"-.--":"y","--..":"z"
]

func solution1(_ letter: String) -> String {
	// 제한 사항
	guard 1...1000 ~= letter.count else { return "" }
	
	// 문제 풀이

	let letCut = letter.split(separator: " ")
	var array: [String] = []
	
	for i in letCut {
		array.append(morse[String(i)]!)
	}
	
	return array.joined()
}

func solution2(_ letter: String) -> String { letter.components(separatedBy: " ").map { morse[$0] ?? "" }.joined() }


// Test Case 1
print(solution1(".... . .-.. .-.. ---"))

// Test Case 2
print(solution2(".--. -.-- - .... --- -."))
