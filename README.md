# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary
In this lab we learned how to implement a two-bit adder 
in a boolean circuit design. We accomplished this by implementing a 
series of increasingly complicated circuits, beginning with a 
dual-lightswitch setup. We applied our half and full adder to the
Basys-3 board and handled many inputs. We also learned the usefulness
of XOR when creating an adder. 

## Lab Questions

### 1 - How might you add more than two bits together?
You can add more than two bits together by inserting another 
adder in the boolean circuit. You can route the carry-out of the
existing circuit into another full adder alongside inputs for the new
bits of A and B.

### 2 - What is the importance of the XOR gate in an adder?
The XOR gate is important in an adder because it controlls when the
output of sum in the adder is one or zero. The XOR gate calculates 
the addition part of the adder which generates the output for the
particular bit. 

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
The largest number a two bit adder can handle is 3, or else it will go over. 
When an adder goes over, it overflows which will give an inaccurate answer. 
This should be reported and the process should terminate.
If the carryout is handled, then the largest number a two-bit adder can handle is 6
because the two highest numbers that can be added are 3 and 3. 