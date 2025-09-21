// Number of divisor

func getNod(n: Int) -> Int {
    var count = 0
    var i = 1
    
    while(i * i < n) {
        // start loop
        if i * i == n {
            count += 1
        } else if n % i == 0 {
            count += 2 
        }
        // end loop
        i += 1
    }
    return count
}

func main() {
    let n: Int = Int(readLine() ?? "-1")!
    print(getNod(n: n))
}

main()
