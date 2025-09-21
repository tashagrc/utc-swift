let max = 3000
// ini outputnya nyari angka prime apa aja yang kalo dikali membentuk 1 angka
// untuk generate prima
var primeFactor = Array(repeating: -1, count: max+1)

func primeFactorization(x: Int) {
    var x = x
    while(x != 1) { // log n
        print(primeFactor[x])
        x /= primeFactor[x]
    }
}

func main() {
    let n: Int = Int(readLine() ?? "-1")!
    for i in 0...n {
        primeFactor[i] = i
    }

    primeFactor[0] = -1
    primeFactor[1] = -1

    var i = 2
    // for(int i = 2; i * i <= n; i++)
    // ini buat precompute
    while(i * i <= n) {
        // start loop
        if primeFactor[i] != i {
            i += 1
            continue
        }

        
        for j in stride(from: i*i, through: n, by: i) {
            if primeFactor[j] == j {
                primeFactor[j] = i
            }
        }


        // end loop
        i += 1
    }

    // ini buat ngitung
    primeFactorization(x: n)
}

main()
