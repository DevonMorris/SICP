# Chapter 1

Lisp was chosen for this book due to homoiconicity and some programming
patterns/techniques can only be viewed with that lense.

## Basics of programming language
- Primitives: gotta start somewhere
- Combinators: combine things in meaningful ways
- Abstractors: rename combinations

Programming language is basically the collection of "special forms" together
with their evaluation rules. Lisp has a notably simple syntax compared to other
languages.

## Evaluation of lisp
You can think about expressions like trees. Evaluating in
the process is called tree accumulation.

Tree accumulation doesn't always work due to special forms like `define`.

Normal-order substitution basically reduces everything to primitives through
substitution and then does tree accumulation to evaluate the expression. It's a
good way to think about how procedures are applied but a bad way to actually do
it.

Applicative order substitutes the arguments and then applied the procedure. It
tends to be more efficient and reduces reduntant evaluations.

## New-If exercise
Note that the new-if exercise 1.6 uses applicative order execution. Which
means that it must evaluate its arguments before substitution. This leads to a
case of infinite recursion, which is bad.
