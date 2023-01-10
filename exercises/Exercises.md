# Exercises
The below maps exercises to their appropriate modules by chapter. Modules are organized according to the concepts being leveraged, so an exercise may not be presented in the same module as its sibling.

### 1. Introduction
#### From the text
[none]
#### Inspired by the Text
[none]

### 2. The Power of Randomness: Fingerprinting and Freivald's Algorithm
#### From the Text
[none]
#### Inspired by the Text
[none]

### 3. Definitions and Technical Preliminaries
#### From the Text
##### 3.1/Freivald's Algorithm
Let $A, B, C$ be $n \times n$ matrices over the field $\mathbb{F}$. In Section 2.2, we presented a randomized algorithm for checking that $C = A \cdot B$. The algorithm picked a random field element $r$ let $x=(r, r^2, ..., r^n)$,
and output EQUAL if $Cx = A \cdot (Bx)$, and output NOT-EQUAL otherwise. Suppose instead that each entry of the vectore $x$ is chose independently and uniformly at random from $\mathbb{F}$. Shot that:
- If $C_{ij} = (AB)_{ij}$ for all $i = 1,...,n, j = 1,...,n$, then the algorithm outputs EQUAL for every possible choice of $x$.
- If there is even one $(i,j) \in [n] \times [n]$ such that $C_ij \neq (AB)_{ij}$, then the algorithm outpus NOT-EQUAL with probability at least $1 - 1/|\mathbb{F}|$