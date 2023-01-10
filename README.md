# thaler
Test harnesses and solutions for exercises from and inspired by Justin Thaler's [Arguments, Proofs, and Zero-Knowledge](https://people.cs.georgetown.edu/jthaler/ProofsArgsAndZK.pdf).

## Organization
Implementations follow a common structure outlined by the `/exercises` folder. Each document or directory in `/exercises` corresponds to a module implemented in a given language. Each document may not, however, correspond one-to-one; a document may be implemented as a multi-compiled module.

Implementations are included here as submodules.

Exercises that do not require code are included as markdown documents in `/exercises/__nocode`

## Branches
### This Repo
There is only one meaningful branch, `main`.

### Implementations
Within each of the language-specific submodules, branches are organized as follows:
- `skeleton`: contains only test harnesses and and starter code.
- `solutions` : contains solutions.

`main` is the same as `solutions`.
