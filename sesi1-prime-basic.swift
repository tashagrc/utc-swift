// Fungsi buat ngecek prima
// prima -> cuma habis dibagi diri sendiri dan 1

func isPrime(n: Int) -> Bool {
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
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
