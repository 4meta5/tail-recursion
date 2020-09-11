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

#[cfg(test)]
mod test {
    use super::*;
    #[test]
    fn fac_tests() {
        assert_eq!(naive(5), 120);
        assert_eq!(optimized(5), 120);
        assert_eq!(fac(5), 120);
        assert_eq!(naive(6), 720);
        assert_eq!(optimized(6), 720);
        assert_eq!(fac(6), 720);
        assert_eq!(naive(7), 5040);
        assert_eq!(optimized(7), 5040);
        assert_eq!(fac(7), 5040);
        assert_eq!(naive(8), 40320);
        assert_eq!(optimized(8), 40320);
        assert_eq!(fac(8), 40320);
        assert_eq!(naive(9), 362880);
        assert_eq!(optimized(9), 362880);
        assert_eq!(fac(9), 362880);
        assert_eq!(naive(10), 3628800);
        assert_eq!(optimized(10), 3628800);
        assert_eq!(fac(10), 3628800);
    }
}
