fn main() {
    let a:i32 = 10;
    let b:i32 = 20;

    println!("Value of A: {} ",a);
    println!("Value of B: {} ",b);

    let mut res = a>b ;
    println!("a greater than b: {} ",res);

    res = a<b ;
    println!("a lesser than b: {} ",res);

    res = a>=b ;
    println!("a greater than or equal to a: {} ",res);

    res = a<=b ;
    println!("A lesser than or equal to B: {} ",res);

    res = a==b ;
    println!("A is equal to B: {} ",res);

    res = a!=b ;
    println!("a is not equal to b:{}",res);

}