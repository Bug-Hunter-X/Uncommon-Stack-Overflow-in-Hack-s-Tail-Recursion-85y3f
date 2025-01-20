# Uncommon Stack Overflow in Hack's Tail Recursion

This repository demonstrates a subtle stack overflow bug in Hack that arises from the interaction between tail recursion and HHVM's internal optimizations.  The provided `bug.hack` file contains a seemingly simple factorial function. While it should be tail-recursive, and therefore optimizable, it still leads to a stack overflow for sufficiently large inputs in certain HHVM versions. The solution file offers a non-recursive alternative to avoid this issue completely. 

This issue highlights the importance of understanding the specifics of how HHVM handles optimization, particularly regarding tail recursion. While many languages guarantee tail-call optimization, Hack's behavior might be less predictable in edge cases. 

## How to Reproduce
1. Clone this repository.
2. Run `hhvm bug.hack` (with a high enough input to trigger the overflow)
3. Observe the stack overflow error.
4. Then run `hhvm bugSolution.hack` to see the correct, non-recursive solution.