-- First Lua file, following https://www.youtube.com/watch?v=I549C6SmUnk tutorial on youtube.

--[[

This is a multiline comment.
It can be used to comment out multiple lines of code.

]]


--[[
-- Prints to terminal "Hello World!"
print("Hello World!")

-- Prints to terminal "Hello World!, im coding in Lua!" serperate by a "," comma.
print("Hello World!, im coding in Lua!")

-- Prints the text to terminal, but its conncatonated with the ".." two dots. (Added together)
print("Hello World!" .. " im coding in Lua!")

nil -- This is a keyword, it means nothing.
number = 1 -- This is a number, it can be a decimal or a whole number.
string = "Hello World!" -- This is a string, it can be a word or a sentence.
boolean = true -- This is a boolean, it can be true or false.
table = {} -- This is a table, it can be used to store multiple values.
function() end -- This is a function, it can be used to store code to be called later.
userdata -- This is a userdata, it can be used to store data from C.
thread -- This is a thread, it can be used to store a thread of code.


]]

local x = 0 -- This is a local variable, it can only be used in the scope of the code its in.

print(x + 3) -- Since x = 3, when we do x + 3, it will print 6 to the terminal.

GlobalVar = 8 -- This is a global variable, it can be used anywhere in the code.

