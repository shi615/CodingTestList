if let input = readLine() {
    let strings = input.split(separator: " ")
    var dictionary: [Int: String] = [:]
    
    if strings.count > 0 {
        for i in 0..<strings.count - 1 {
            let pair = strings[i].split(separator: ":")
            
            if pair.count == 2, let key = Int(pair[0]) {
                dictionary[key] = String(pair[1])
            }
        }
        
        let sortedDictionary = dictionary.sorted { $0.key < $1.key }
        let m = Int(strings[strings.count - 1]) ?? 0
        var result = ""
        
        for item in sortedDictionary {
            if m % item.key == 0 {
                result += item.value
            }
        }
        
        if result == "" {
            print(m)
        } else {
            print(result)
        }
    }
}
