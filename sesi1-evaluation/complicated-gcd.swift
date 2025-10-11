// https://codeforces.com/problemset/problem/664/A 

// logic 
/**

GCD -> int terbesar yg bisa membagi a dan b
jadi bisa dibilang 

a % x == 0 dan b % x == 0

atau

a = x * k1 dan b = x * k2 (pake proof math yg pas sma)

a - b = x (k1 * k2)

a - b = x * some int

bayangin kita punya bangunan a dan b yg masing2 x brick.

O
O
O
O
O
O
O O
O O
O O
O O

selisihnya itu x * k (int)
bayangin aja buat dapet x nya berapa, kita tinggal kaliin aja gedung yang b sampe ga lebih dari gedung yang a


k 0: a 35, b 10
k 1: a 10, b 5
k 2: a 5, b 0
res: 5

x * k = a - b
**/

var k = 0 
func gcd(_ a: Int, _ b: Int) -> Int {
    print("k \(k): a \(a), b \(b)")
    if b == 0 {
        print("  res: \(a)")
        return a
    }
    k += 1
    return gcd(b, a % b)
}


func gcd2(_ a: Int, _ b: Int) -> Int {
    print("k \(k): a \(a), b \(b)")
    if a == b {
        print("  res: \(a)")
        return a
    } else if a > b {
        k += 1
        return gcd(a - b, b)
    } else {
        k += 1
        return gcd(a, b - a)
    }
}

func main() {
    // assert(gcd(10, 5) == 5)
    // assert(gcd(12, 8) == 4)
    // assert(gcd(7, 13) == 1)
    // assert(gcd(1, 1) == 1)
    // assert(gcd(1, 999) == 1)
    // assert(gcd(9, 9) == 9)
    // assert(gcd(18, 9) == 9)
    // assert(gcd(100, 25) == 25)
    // assert(gcd(270, 192) == 6)

    // // Coprime and random pairs
    // assert(gcd(17, 31) == 1)
    // assert(gcd(100, 99) == 1)
    assert(gcd2(35, 10) == 5)
    // assert(gcd(81, 27) == 27)

    // // Large but still within Int range
    // assert(gcd(1_000_000_000, 500_000_000) == 500_000_000)
    // assert(gcd(987654321, 123456789) == 9)
    // assert(gcd(999999937, 999999929) == 1) // both primes near 1e9
    print("ok")
}

main()


/*
anti rusty exercise

1. kalo d membagi a dan b, kenapa itu selalu membagi a + b
a = k1 * d dan b = k2 * d
a + b = d (k1 + k2)

2. a = 18, b = 12
prime factor
a -> 2, 3
b -> 2, 3
common divisor -> 1, 2, 3, 6 
gcd -> 6
susbtraction pair when doing a - b -> 6
verify that gcd(a, b) == gcd(b, a-b)
gcd(18, 12) == gcd(12, 6)

proof:
a - b = (k1 - k2)d
show every common divisor of (b, a-b) is also a common divisor of (a, b)

assume d divides both b and a-b
b = d * k1
a-b = d * k2

a = d (k1+k2)

3. trace
func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 { return a }
    return gcd(b, a % b)
}

gcd(18, 12)
gcd(12, 6)
gcd(6, 6)
gcd(6, 0) -> return 6


*/