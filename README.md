# zen of design pattern
# design patterns in Ruby as code sample

---
## *six design principle
---

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

## chapter 4 Interface Segregation Principle, ISP
1. Clients should not be forced to depened upon interfaces that don't use
2. The dependency of one class to another one should depend on the smallest possible interface
3. build single interface, and the method in the interface should be as the less the better. => As much as possible use specific interface to responsible specific feature

## chapter 5 Law of Demeter, LoD, Least Knowledge Principle, LKP
1. Only talk to your immediate friends
2. The less public method the better
3. if one class need to contact other class by over two redirections => need refactor

## chapter 6 Open Closed Principle, OCP
1. Software entities like classes, modules and functions should be open for extension but closed for modifications
2. when need to have some change, use enlargation to replace modification


---
## *23 design pattern
---

## chapter 7 Singleton Pattern
1. Ensure a class has only one instance, and provide a global point of access to it

## chapter 8 Factory Pattern
1. Define an interface for creating an object, but let subclasses decide which class to instantiate. Factory Method lets a class defer instantiation to subclasses

## chapter 9 Abstract Factory Pattern
1. Provide an interface for creating families of related or dependent objects without specifying their concrete classes

## chapter 10 Template Method Pattern
1. Define the skeleton of an algorithm in an operation, deferring some steps to subclass. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure
2. Define an abstract base class with a master method that performs the basic steps listed above, but that leaves the details of each step to a subclass

## chapter 11 Builder Pattern

### usage scenario
1. same method, different execute sequence, will create different result
2. many components, can be equipmented to one object, but the execute result are different
3. Product categories are very complex or the execute sequence will have different result
4. Builder Pattern focus on the component and equipmented sequence, the main different between the Factory Pattern 