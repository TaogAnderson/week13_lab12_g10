# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name: G10 - Taog Anderson & Joshua Milbourne

## Summary
We learned how to implement finite state machines using Verilog in Vivado with two different methods of implementation. We learned the One Hot implementation where each state has its own D-ff and exact direction between states, and the Binary implementation where the states are numbered in binary with only as many D-ffs as it takes to number the states. In binary you must use K-maps to find optimized solutions for moving from state to state.

## Lab Questions

### Compare and contrast One Hot and Binary encodings
Both are used for state machine implementations but One Hot requires D-ffs equal to the number of states while Binary only needs the number of flip flops required to represent the number of states in binary. However, One Hot is easier to implement compared to Binary due to the added step of translating states to binary numbers.

### Which method did your team find easier, and why?
One Hot was far easier to implement as you just have to look at what combinations of states and w leads to each state and write it out directly while in Binary you have to encode the numbers and find K-map optimized equations to transition between them without getting stuck a binary number which does not have a state equivalent.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
If you had a large number of states it would require enormous resources to implement in One Hot and far less to implement in binary. This is because of the number of flip flops to implement One Hot grows far faster than the number required for Binary. If you have a small number of states then it is quicker and easier to just use the One Hot implementation but with a large number of states this is too costly so it's better to use Binary.
