
### Notes about things to do to the code after it's been completed.

* Add integers to the type system.
* Add a "%" operator.
* Add multi-line comments to the scanner.
* Do not require the "fun" keyword to introduce a function. The reason this is required is that there could be
code outside of a class. The Simple language does not allow this. That means that the repl() function is no longer
possible without making a lot of changes. Decision required.
* Do string formatting as the challenges section in chapter 16 talks about. This involves changing the way that
variables are stored and accessed.
* Change the Simple language to be a duck-typed language instead of a strong typed language.
* Make the VM stack dynamic.
* Support != <= >=
* Add strings "+" operator for other types. (ch 19)

See chapter 18 for how to add a type.
