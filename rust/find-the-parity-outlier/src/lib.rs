pub fn find_outlier(values: &[i32]) -> i32 { 
    // line 3 ~ 4 handle first position number
    let is_first_position = handle_first(values);
    if is_first_position.0 == true { return is_first_position.1 }
    
    // this func handle mid or last position
    is_mid_last(values)
}

pub fn handle_first(v: &[i32]) -> (bool, i32) {
    if is_even(&v[0]) != is_even(&v[1]) {
        if is_even(&v[1]) == is_even(&v[2]) {
            return (true, v[0]); // true :: lets return this as an answer
        }
    }
    (false, 0) // false :: not here
}

pub fn is_mid_last(v: &[i32]) -> i32 {
    let t: bool = is_even(&v[0]);
    for n in v {
        // this logic handle 
        // mid & last posiiton number
        // a.k.a as exlusive OR
        if is_even(n) ^ t {
            return n.clone();
        }
    }
    0
}

pub fn is_even(n: &i32) -> bool {
    if n % 2 == 0 {
        return true;
    }
    false
}
