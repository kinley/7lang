IO: Day#1
=========

Find
----
- Some Io example problems
- An Io community that will answer questions
- A style guide with Io idioms

Answer
------
- Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed? Support your answer with code.
- Is 0 true or false? What about the empty string? Is nil true or false? Support your answer with code.
- How can you tell what slots a prototype supports?
- What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?

Do
--
- Run an Io program from a file.
- Execute the code in a slot given its name.

Notes
-----

###doFile and doString

A script can be run from the interactive mode using the doFile method:
`doFile("scriptName.io")`

The evaluation context of doFile is the receiver, which in this case would be the lobby. To evaluate the script in the context of some other object, simply send the doFile message to it:
`someObject doFile("scriptName.io")`

The doString method can be used to evaluate a string:
`Io> doString("1+1")`
`==> 2`

And to evaluate a string in the context of a particular object:
`someObject doString("1 + 1")`

Sources
--------
- [Io guide](http://iolanguage.org/scm/io/docs/IoGuide.html)
- [Article about Day#1](http://nickknowlson.com/blog/2011/12/18/seven-languages-week-2-day-1/)
- [Io style guide](http://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide)