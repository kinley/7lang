# io 1-answers.io
doFile("1-answers.io")
someObject := Object clone
someObject doFile("1-answers.io")

MyObj = Object clone
MyObj hello := method("hello, world" println)
MyObj hello_str := method("\"hello, string\" println")
MyObj hello_exec := method(doString(MyObj hello_str))
MyObj perform("hello_exec")
MyObj specify_macro := method(name, perform(name))
MyObj hello
MyObj hello_str
MyObj hello_exec
MyObj specify_macro("hello_exec")
