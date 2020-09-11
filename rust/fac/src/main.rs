use factorial::{fac, naive, optimized};

fn main() {
    println!("Expected 120 == {}", naive(5));
    println!("Expected 120 == {}", optimized(5));
    println!("Expected 720 == {}", fac(6));
}
