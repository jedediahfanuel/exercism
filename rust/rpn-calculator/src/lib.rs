#[derive(Debug)]
pub enum CalculatorInput {
    Add,
    Subtract,
    Multiply,
    Divide,
    Value(i32),
}

pub fn evaluate(inputs: &[CalculatorInput]) -> Option<i32> {
    if inputs.len() < 1 {
        return None;
    }

    if inputs.len() == 1 {
        return match inputs[0] {
            CalculatorInput::Value(n) => Some(n),
            _ => None,
        };
    }

    None
}
