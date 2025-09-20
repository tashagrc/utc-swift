func isPrime(n: Int) -> Bool {
    var i: Int = 2
    if n < 2 {
        return false
    }
    while(i * i <= n) {
        // loop body
        if n % i == 0 {
            return false
        }
        // end loop body
        i += 1
    }
    return true
}

func main() {
    let n: Int = Int(readLine() ?? "-1")!
    var count = 0
    for i in 0..<n {
        if isPrime(n: i) {
            print(i)
            count += 1
        }
    }
    print("the count of prime is: \(count)")
}

main()
