# Vending Machine:

You are tasked with implementaing a program for a beverage vending machine. The vending machine offers the following beverage choices:
- Aqua 2000
- Sosro 5000
- Cola 5000
- Milo 9000

The program should accept inputs of money in the form of integers, with a nominal value of 2000 and 5000. The machine accepts a maximum of 3 bills. 
Write a function that takes a list of bills as input and returns the possible beverage combinations according to the bills inputted.

```
Example:
Input: [2000]
output: 1 Aqua

Input: [2000, 2000]
Output: 2 Aqua

Input: [5000, 2000]
Output: 1 Cola

Input: [1000]
Output: invalid denomination

Input: [5000, 5000]
Output: 2 Sosro
