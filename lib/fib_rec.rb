def fib_rec(n, a = [0, 1])
  return a[0] if n == 1
  return a if n == 2

  a.push(a[-1] + a[-2])
  fib_rec(n - 1, a)
  a.join(', ')
end