// ハッシュマップ＆２ポインタ法
// 時間計算量 : O(n^2)
if let nk = readLine(), let a = readLine() {
    let nKString = nk.split(separator: " ")
    let aStrings = a.split(separator: " ").compactMap { Int($0) }
    
    if nKString.count == 2, let n = Int(nKString[0]), let k = Int(nKString[1]), aStrings.count == n {
        var resultCount = 0
        
        for i in 0..<n {
            for j in (i+1)..<n {
                let target = k - (aStrings[i] + aStrings[j])
                var freqDict: [Int: Int] = [:]
                for o in (j+1)..<n {
                    freqDict[aStrings[o], default: 0] += 1
                }
                if let freq = freqDict[target], freq > 0 {
                    resultCount += 1
                    freqDict[target]! -= 1
                }
            }
        }
        
        print(resultCount)
    }
}


// ブルートフォース
// 時間計算量 : O(n^3)
if let nk = readLine() {
    let nKString = nk.split(separator: " ")
    
    if nKString.count == 2 {
        let (n, k) = (Int(nKString[0]) ?? 0, Int(nKString[1]) ?? 0)
        
        if let a = readLine() {
            let aStrings = a.split(separator: " ")
            
            if aStrings.count == n {
                var resultCount = 0
                
                for i in 0..<n-2 {
                    for j in (i+1)..<(n-1) {
                        for o in (j+1)..<n {
                            let aiInt = Int(aStrings[i]) ?? 0
                            let ajInt = Int(aStrings[j]) ?? 0
                            let aoInt = Int(aStrings[o]) ?? 0
                            
                            if aiInt + ajInt + aoInt == k {
                                resultCount += 1
                            }
                        }
                    }
                }
                
                print(resultCount)
            }
        }
    }
}
