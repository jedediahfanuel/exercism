// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

// 1 to  4  : 100% success rate.
// 5 to  8  : 90% success rate.
// 9 and 10 : 77% success rate.
// 221 cars per hour

pub fn production_rate_per_hour(speed: u8) -> f64 {    
    match speed {
      1..=4  => (speed as u16 * 221) as f64       ,
      5..=8  => (speed as u16 * 221) as f64 * 0.9 ,
      9..=10 => (speed as u16 * 221) as f64 * 0.77,
      _      => 0_f64
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    unimplemented!("calculate the amount of working items at speed: {}", speed)
}
