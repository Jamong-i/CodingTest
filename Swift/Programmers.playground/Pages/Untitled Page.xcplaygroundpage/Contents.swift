func functionWithAssert(age: Int?) {
	
	assert(age != nil, "age == nil")
	
	assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다")
	print("당신의 나이는 \(age!)세입니다")
}
