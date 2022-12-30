pub fn divmod(dividend: i16, divisor: i16) -> (i16, i16) {}

pub fn evens<T>(iter: impl Iterator<Item = T>) -> impl Iterator<Item = T> {
    std::iter::empty()
}

pub struct Position(pub i16, pub i16);
impl Position {
    pub fn manhattan(&self) -> i16 {}
}
