# Tested with Python 3.9.7 (default, Nov 24 2021, 22:07:03) [GCC 10.3.0] on linux
def collatz(x):
  print(x)
  if x == 1: return 1
  elif x % 2 == 0:
    collatz(x // 2)
  else:
    collatz(3 * x + 1)
