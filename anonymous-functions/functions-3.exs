fizzbuzz = fn
  0, 0, c -> IO.puts("FizzBuzz")
  0, b, c -> IO.puts("Fizz")
  a, 0, c -> IO.puts("Buzz")
  _, _, c -> IO.puts(c)
end

fizzbuzzfunc = fn
  a -> fizzbuzz.(rem(a, 3), rem(a, 5), a)
end

fizzbuzzfunc.(10)
fizzbuzzfunc.(11)
fizzbuzzfunc.(12)
fizzbuzzfunc.(13)
fizzbuzzfunc.(14)
fizzbuzzfunc.(15)
fizzbuzzfunc.(16)
