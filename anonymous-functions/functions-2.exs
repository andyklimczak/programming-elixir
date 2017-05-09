fizzbuzz = fn
  0, 0, c -> IO.puts("FizzBuzz")
  0, b, c -> IO.puts("Fizz")
  a, 0, c -> IO.puts("Buzz")
end

fizzbuzz.(0,0,1)
fizzbuzz.(1,0,1)
fizzbuzz.(0,1,1)
