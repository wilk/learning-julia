#=
Basic for Julia programming language.
Julia is a homoiconic programming language, meaning that the source code is also readable and usable like data files
from others Julia files.
=#

println("String interpolation $(10 + 15)")

sum = 10 + 15

try
    undefinedVar
catch e
    println(e)
end

# indexing is 1-based
# arrays (1-dim with comma separated value)
a = [1,2,3]
c = [1;2;3]

println(a == c) # true

matrix = [10 20; 30 40]
println(matrix[3])

# functions terminating with "!" modify their input
push!(a, 12)
append!(a, a)

# end accesses the last element of the array
println(a[end])

println(length(a))
println(in(10, matrix)) # check the presence of an element inside an iterable

# tuples are immutable
tup = (1, 2, 3)
meh, wat, lel = tup # multiple and destructuring

ditto = Dict("ayo" => "nonno", 20 => 30)
println(ditto["ayo"])
println(ditto[20])
println(keys(ditto)) # prints all the dict's keys
println(values(ditto)) # prints all the dict's values
println(in((20 => 30), ditto)) # checks for the pair 20 => 30
println(haskey("ayo", ditto)) # checks for the key "ayo"

# if block
if true
    println("true")
elseif false
    println("false")
end

# super-duper for, check this out
for animal = ["cat", "dog", "pig"]
    println("$animal is an animal!")
end

# what about iterating a dict?
for pair in ditto
    key, value = pair
    println("$key => $value")
end

# or
for (key, value) in ditto
    println("$key => $value")
end

# functiooooooons
function do_sum(a, b)
    return a + b
end

# compact form
f_sum(a, b) = a + b
varargs(args...) = args
# ... is called splat and can be used in function arguments
println(varargs(1, [2,3], (10, 20), [50, 100, 200]...))

# named arguments
named_args(;val1 = 10, name = "wilk") = println("$val1 with $name")

named_args(val1 = 20)
named_args(name = "joe")

positional_args(name; surname = "doe", age = 42) = println("$name $surname - $age")

positional_args("joe")
positional_args("joe", age = 55)
positional_args("joe", surname = "mason")

# lambda anonymous function
lambda = x->x^2
function first_fn(y)
    x->x + y
end

println(lambda(10)) # 100
println(first_fn(10)(20)) # 30

# list comprehension
[x for x in [10, 20, 30, 40, 50] if x > 20] # [30, 40, 50]
