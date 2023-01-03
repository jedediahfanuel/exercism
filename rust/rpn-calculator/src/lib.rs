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

    let mut stack: Vec<i32> = Vec::new();
    for input in inputs {
        match input {
            CalculatorInput::Value(n) => stack.push(*n),
            _ => {
                if stack.len() < 2 {
                    return None;
                }

                let n2 = stack.pop().unwrap();
                let n1 = stack.pop().unwrap();

                match input {
                    CalculatorInput::Add => stack.push(n1 + n2),
                    CalculatorInput::Subtract => stack.push(n1 - n2),
                    CalculatorInput::Multiply => stack.push(n1 * n2),
                    CalculatorInput::Divide => stack.push(n1 / n2),
                    _ => (),
                }
            }
        }
    }

    if stack.len() != 1 {
        return None;
    }

    stack.pop()
}
