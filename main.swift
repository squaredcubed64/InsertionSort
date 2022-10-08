var strings: [String] = []

while let line = readLine() {
    strings.append(line)
}

for i in 0 ..< strings.count {
    let cur = strings[i]
    var comp = cur
    var j = i - 1
    
    if j != -1 {
        comp = strings[j]
    }
    
    while comp > cur {
        strings[j] = cur
        strings[j + 1] = comp
        j -= 1
        
        if j != -1 {
            comp = strings[j]
        } else {
            break
        }
    }
}   

for str in strings {
    print(str)
}
