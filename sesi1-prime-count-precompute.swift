// misal punya 
// 2 3 4 5 6 7 8 9 10
// ketika kita tau 2 bukan prima, maka kelipatan 2 juga bukan prima
//  3 5 7 9 
// dan seterusnya

let max = 1000
var isPrime = Array(repeating: true, count: max)

func main() {
    let n: Int = Int(readLine() ?? "-1")!
    isPrime[0] = false
    isPrime[1] = false
    for i in 2..<n { // ini iterasi setiap angka sampe n (list aslinya)
        for j in (i+1)...n { // ini iterasi array isPrime sampe angka yang dicek tsb buat nyari kelipatannya
            if j % i == 0 {
                isPrime[j] = false
            }
        }
    }
    for i in 0...n {
        if isPrime[i] == true {
            print(i)
        }
    }
}

main()
