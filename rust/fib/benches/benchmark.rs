use criterion::{black_box, criterion_group, criterion_main, Criterion};
use fibonacci::{naive, optimized};

pub fn naive_benchmark(c: &mut Criterion) {
    c.bench_function("naive", |b| b.iter(|| naive(black_box(20))));
}

pub fn optimized_benchmark(c: &mut Criterion) {
    c.bench_function("optimized", |b| b.iter(|| optimized(black_box(20))));
}

criterion_group!(benches, naive_benchmark, optimized_benchmark);
criterion_main!(benches);
