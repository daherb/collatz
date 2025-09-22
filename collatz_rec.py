# Tested with Python 3.9.7 (default, Nov 24 2021, 22:07:03) [GCC 10.3.0] on linux
import sys

def collatz_rec(x):
  print(x)
  if x == 1: return 1
  elif x % 2 == 0:
    collatz_rec(x // 2)
  else:
    collatz_rec(3 * x + 1)

collatz_rec(int(sys.argv[1]))