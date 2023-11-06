fn main() {
    let d1:f32 = 80.0;
    let d2:f32 = 120.0;

    let t1:f32 = 2.0;
    let t2:f32 = 4.0;

    let s1:f32 =1.60934;

    let km1:f32;

    km1 = d1 * s1;
    println!("km1 = {}",km1 );

    let km2:f32;

    km2 = d2 * s1;
    println!("km2 = {}",km2 );
    
    let speed_1:f32; 

     speed_1 = km1 / t1;
    println!("Speed for the first scenario: {} kmp h", speed_1);
    
    let speed_2:f32;

     speed_2 = km2 / t2;
    println!("Speed for the second scenario: {} kmph", speed_2);

}