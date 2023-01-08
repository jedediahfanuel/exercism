use std::collections::HashMap;

pub fn can_construct_note(magazine: &[&str], note: &[&str]) -> bool {
    let mut mag = HashMap::new();

    for x in magazine {
        mag.entry(x).and_modify(|c| *c += 1).or_insert(1);
    }

    let mut not = HashMap::new();

    for y in note {
        not.entry(y).and_modify(|c| *c += 1).or_insert(1);
    }

    for k in not.keys() {
        if !mag.contains_key(k) {
            return false;
        }

        if mag.get(k) < not.get(k) {
            return false;
        }
    }

    true
}
