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
##### phi Function

##### Freivald's Algorithm
Take as input two $n \times n$ matrices $A$ and $B$ over $\mathbb{F}$ where $p > n^2$ is a prime number. Choose a random $r \in \mathbb{F}_p$, and let $x = (1,r,r^2,...,r^n-1)$. Then compute $y=Cx$ and $z=A \cdot Bx$, outputing TRUE if $y=z$ and FALSE otherwise. [Fre77]

Implement Freivald's algorithm for small inputs $n^2 < p < 16^2 + 1 = 257$. (257 is prime.) Call this function `freivald_sm` cased according to your chosen language.

Implement Freivald's algorithm for an arbitrarily large set of inputs. Call this function `freivald`. 

#### Freivald's Algorithm over an Arbitrary Field
Realize implementations of the abstraction `FieldElement`:
```
FieldElement {
    add(FieldElement right)->FieldElement;
    subtract(FieldElement right)->FieldElement;
    multiply(FieldElement right)->FieldElement;
    divide(FieldElement right)->FieldElement;
    equals(FieldElement right)->Boolean;
}
```

Implement `arb_freivald` which may take as input matrices A and B of `FieldElements` and runs `Freivald's` algorithm. Should the soundness and completeness properties of this algorithm be the same as for $\mathbb{F_p}$? Why or why not?


### 3. Definitions and Technical Preliminaries
#### From the Text
##### 3.1/Freivald's Algorithm
Let $A, B, C$ be $n \times n$ matrices over the field $\mathbb{F}$. In Section 2.2, we presented a randomized algorithm for checking that $C = A \cdot B$. The algorithm picked a random field element $r$ let $x=(r, r^2, ..., r^n)$,
and output EQUAL if $Cx = A \cdot (Bx)$, and output NOT-EQUAL otherwise. Suppose instead that each entry of the vectore $x$ is chose independently and uniformly at random from $\mathbb{F}$. Shot that:
- If $C_{ij} = (AB)_{ij}$ for all $i = 1,...,n, j = 1,...,n$, then the algorithm outputs EQUAL for every possible choice of $x$.
- If there is even one $(i,j) \in [n] \times [n]$ such that $C_ij \neq (AB)_{ij}$, then the algorithm outpus NOT-EQUAL with probability at least $1 - 1/|\mathbb{F}|$.

*See implementation at `/exercises/__nocode/freivalds/Prove.*`*