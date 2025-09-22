# Tested with Python 3.13.7 (main, Aug 15 2025, 12:34:02) [GCC 15.2.1 20250813] on linux
import sys

def collatz_rec(x):
  while x != 1:
    print(x)
    if x % 2 == 0:
      x = x // 2
    else:
      x = 3 * x + 1
  print(x)

collatz_rec(int(sys.argv[1]))