use std::io::Write;

fn main() {
    
    let announce = "Week 9 - Rust File Input and Output\n";
    let dept = "Department of Computer Science";

    let mut file = std::fs::File::create("data.txt").expect("create failed");
    file.write_all("Welcome to Rust Programming\n"
        .as_bytes()).expect("write failed");
file.write_all(announce.as_bytes()).expect("write failed");
file.write_all(dept.as_bytes()).expect("write failed");
println!("\nData written to file." );

use std::io::Read;

    let mut file = std::fs::File::open("data.txt").unwrap();
    let mut contents = String::new();
    file.read_to_string(&mut contents).unwrap();
    print!("{}", contents);
}
