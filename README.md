# zen of design pattern

------------------------------
## chapter 1 single responsibility principle, SRP
1. interface need to be SRP, and class design as much as possible make it only will changed by one reason

## chapter 2 Liskov Substitution principle, LSP
1. [definition] If for each object o1 of type S there is and object o2 of type T such that for all programs P defined in terms of T, the behavior of P is unchanged when o1 is substitued for o2 then S is a subtype of T
2. [definition] Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it
3. if father appear, child could be appear, and replace father without any error or exception, user doesn't need to know child or father. But, in turn, if child appear, father maybe will not be suitable appear
4. child need to fully implement father's function
	
	if chuld can't fully implement father's function, or some function on child have very different feature, suggested you use include to replace inheritance
5. child could has his own characters
6. when child override father's function, the variable could be enlarge
7. when child override father's function, the output could be narrow

## chapter 3 Dependence Inversion Principle, DIP
1. High level modules should not depend upon low level modules. Both should depend upon abstractions. Abstractions should not depend upon details. Details should depend upon abstractions