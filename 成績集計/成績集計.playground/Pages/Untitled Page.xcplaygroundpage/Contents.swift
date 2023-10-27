if let nString = readLine() {
    let nInt = Int(nString) ?? 0
    var result: String = ""

    for _ in 0..<nInt {
        if let aBLine = readLine() {
            let aBString = aBLine.split(separator: " ")

            if aBString.count == 2 {
                let (aInt, bInt) = (Int(aBString[0]) ?? 0, Int(aBString[1]) ?? 0)
                let conditionalA = bInt <= 60
                let conditionalB = aInt + bInt <= 100

                if conditionalA && conditionalB {
                    result = "fail"
                } else if conditionalA || conditionalB {
                    result = "reexamination"
                } else {
                    result = "pass"
                }

                print(result)
            }
        }
    }
}
