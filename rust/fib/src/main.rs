use fibonacci::{naive, optimized};

fn main() {
    println!("Fib(5) == 5 == {}", naive(5));
    println!("Fib(5) == 5 == {}", optimized(5));
}
