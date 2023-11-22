use std::io;

fn main() {
    // Input the value of n
    let mut n = String::new();

    println!("Enter the value of n: ");
    io::stdin().read_line(&mut n).expect("Failed to read line");

    let n: u32 = match n.trim().parse() {
        Ok(num) => num,
        Err(_) => {
            println!("Please enter a valid number.");
            return;
        }
    };
    // Display the multiplication table vertically
    for i in 1..=n {
        for j in 1..=10 {
            let result = i * j;
            println!("{} x {} = {}", i, j, result);
        }
        println!(); // Add an empty line between tables
    }
}