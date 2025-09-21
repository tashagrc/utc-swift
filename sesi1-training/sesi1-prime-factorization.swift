func primeFactorization(x: Int) {
    var i = 2
    var x = x
    while(i * i <= x) {
        // start loop
        print(i)
        x /= i
        // end loop
        i += 1
    }
    // sisanya
    if x != 1 {
        print(x)
    }
}

func main() {
    let n: Int = Int(readLine() ?? "-1")!
    primeFactorization(x: n)
}

main()