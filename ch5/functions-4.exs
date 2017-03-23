prefix = fn prefix ->
  fn name ->
    IO.puts("#{prefix} #{name}")
  end
end

mrs = prefix.("Mrs")
mrs.("Smith")
prefix.("Elixir").("Rocks")
