// faktor persekutuan terbesar
// GCD(x, y) = GCD(x, y-x)

// misalkan GCD(x, y) = k
// x = a1 * k
// y = a2 * k
// bisa proof by contradiction

func fpb(x: Int, y: Int) -> Int {
    if y == 0 {
        return x
    }
    return fpb(x: y, y: x % y) // aslinya fpb(y, y-x) yang besar dikurangi yang kecil
}

func main() {
    print(fpb(x: 100, y: 72))
}

main()