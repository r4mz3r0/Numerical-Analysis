# MATLAB for Numerical Analysis 

## Chapter 2
### Exercise 2-1 

Find the number of ways of choosing 12 elements from 30 without repetition, the remainder of the division of \(2^{134}\) by 3,
the prime decomposition of 18900, the factorial of 200 and the smalleset number N which when divided by 16,24,30 and 32 leaves remainder 5.

``` js
factorial(30)/(factorial(12)*factorial(30-12))
rem(2^134,3)
factor(18900)
factorial(100)
lcm(lcm(16.24), lcm(30,32))
```
### Exercise 2-2

In base 5 find the result of the operation defined by \(a25aaff6_{16} + 6789aba_{12} + 35671_{8} + 1100221_{3} - 1250\). 
In base 13 find the result of the operation \((666551_{7})*(aa199800a_{11}) + (fffaaa125_{16})/(33331_{4} + 6)\)

``` js
number = base2dec('a25aaf6', 16) + base2dec('6789aba', 12) + base2dec('35671', 8) + base2dec('1100221', 3) - 1250
base5 = dec2base(number, 5)
```
In base 5: '342131042134'

## Chapter 3 
### Exercise 3-1
