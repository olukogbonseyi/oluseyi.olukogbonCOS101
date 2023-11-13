use std::io;

fn main() {
    // Read the coefficients a, b, and c from the user
    let a: f64 = input("Enter value of a: ");
    let b: f64 = input("Enter value of b: ");
    let c: f64 = input("Enter value c: ");

    // Calculate the discriminant
    let discriminant = b * b - 4.0 * a * c;

    if discriminant > 0.0 {
        // Two real and distinct roots
        let root1 = (-b + discriminant.sqrt()) / (2.0 * a);
        let root2 = (-b - discriminant.sqrt()) / (2.0 * a);
        println!("Root 1: {}", root1);
        println!("Root 2: {}", root2);
    } else if discriminant == 0.0 {
        // One real root (double root)
        let root = -b / (2.0 * a);
        println!("Root: {}", root);
    } else {
        // Complex roots (no real roots)
        let real_part = -b / (2.0 * a);
        let imaginary_part = (discriminant.abs().sqrt()) / (2.0 * a);
        println!("Root 1: {} + {}i", real_part, imaginary_part);
        println!("Root 2: {} - {}i", real_part, imaginary_part);
    }
}

fn input(prompt: &str) -> f64 {
    let mut input = String::new();
    println!("{}", prompt);
    io::stdin().read_line(&mut input).expect("Failed to read input.");
    input.trim().parse().expect("Invalid input. Please enter a number.")
}