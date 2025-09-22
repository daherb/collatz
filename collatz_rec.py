# Tested with Python 3.13.7 (main, Aug 15 2025, 12:34:02) [GCC 15.2.1 20250813] on linux
import sys

def collatz_rec(x):
  print(x)
  if x == 1: return 1
  elif x % 2 == 0:
    collatz_rec(x // 2)
  else:
    collatz_rec(3 * x + 1)

collatz_rec(int(sys.argv[1]))