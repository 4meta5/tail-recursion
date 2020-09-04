pub fn naive(n: u64) -> u64 {
    match n {
        0 => 0,
        1 => 1,
        _ => naive(n - 1) + naive(n - 2),
    }
}

pub fn optimized(n: u64) -> u64 {
    fn helper(a: u64, b: u64, m: u64) -> u64 {
        match m {
            0 => a,
            1 => b,
            _ => helper(b, a + b, m - 1),
        }
    }
    helper(0, 1, n)
}
