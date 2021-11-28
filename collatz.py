def collatz(x):
  print(x)
  if x == 1: return 1
  elif x % 2 == 0:
    collatz(x // 2)
  else:
    collatz(3 * x + 1)
