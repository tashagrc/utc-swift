// Fungsi buat ngecek prima
// prima -> cuma habis dibagi diri sendiri dan 1
// O(log n)
// cuma bakal jalanin sampe root(n) aja

func isPrime(n: Int) -> Bool {
    let i: Int = 2
    while(i * i < n) {
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
    var n: Int = Int(readLine() ?? "-1")!
    if(isPrime(n: n)) {
        print("yes")
    } else {
        print("no")
    }
}

main()
