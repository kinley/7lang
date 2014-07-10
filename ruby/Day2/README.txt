# Day 2 exercise solutions for Ruby

Questions:
- defining module with method, that is not defined at all
- testing module
- adding 2 modules with the same method

Find:
- Find out how to access files with and without code blocks. What is the benefit of the code block?
- How would you translate a hash to an array? Can you translate arrays to hashes?
- Can you iterate through a hash?
- You can use Ruby arrays as stacks. What other common data structures do arrays support?

Do:
- Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now, do the same with each_slice in Enumerable.
- The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface. Let the initializer accept a nested structure with hashes and arrays. You should be able to specify a tree like this: {’grandpa’ => { ’dad’ => {’child 1’ => {}, ’child 2’ => {} }, ’uncle’ => {’child 3’ => {}, ’child 4’ => {} } } }.
- Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line. You will need to do a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.) If you want, include line numbers.

Sources:
http://ru.wikibooks.org/wiki/Ruby/%D0%A0%D0%B0%D0%B1%D0%BE%D1%82%D0%B0_%D1%81_%D1%84%D0%B0%D0%B9%D0%BB%D0%B0%D0%BC%D0%B8
http://www.ruby-doc.org/core-2.1.2/Array.html
http://ruby-doc.org/core-1.9.3/Enumerable.html
http://www.ruby-doc.org/core-2.1.2/Hash.html