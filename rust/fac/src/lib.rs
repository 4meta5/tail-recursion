pub fn naive(n: u64) -> u64 {
    match n {
        0 => 1,
        _ => n * naive(n - 1),
    }
}

pub fn optimized(n: u64) -> u64 {
    fn helper(acc: u64, m: u64) -> u64 {
        match m {
            0 => acc,
            _ => helper(acc * m, m - 1),
        }
    }
    helper(1, n)
}

pub fn fac(n: usize) -> usize {
    (1..n + 1).fold(1, |a, b| a * b)
}
