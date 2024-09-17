using System;

public class CalculationException : Exception {
    public CalculationException(int operand1, int operand2, string message, Exception inner) {
        Inner    = inner        ;
        Operand1 = operand1     ;
        Operand2 = operand2     ; }

    public Exception Inner { get; }
    public int Operand1    { get; }
    public int Operand2    { get; } }

public class CalculatorTestHarness {
    private Calculator calculator;

    public CalculatorTestHarness(Calculator calculator) => this.calculator = calculator;

    public string TestMultiplication(int x, int y) {
        try {
            Multiply(x, y);
            return $"Multiply succeeded"; }

        catch (CalculationException ex) when (ex.Operand1 < 0 && ex.Operand2 < 0) {
            return $"Multiply failed for negative operands. " + ex.Inner.Message; }

        catch (CalculationException ex) when (ex.Operand1 >= 0 || ex.Operand2 >= 0) {
            return $"Multiply failed for mixed or positive operands. " + ex.Inner.Message; } }

    public void Multiply(int x, int y) {
        try { this.calculator.Multiply(x, y); }
        catch (Exception ex) {
            throw new CalculationException (x, y, ex.Message, ex);
        } } }


// Please do not modify the code below.
// If there is an overflow in the multiplication operation
// then a System.OverflowException is thrown.
public class Calculator { public int Multiply(int x, int y) { checked { return x * y; } } }
