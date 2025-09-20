// Number of divisor

func getNod(n: Int) -> Int {
    var count = 0
    for i in 1..<n {
        if n % i == 0 {
            count += 1
        }
    }
    return count
}

func main() {
    let n: Int = Int(readLine() ?? "-1")!
    print(getNod(n: n))
}

main()
