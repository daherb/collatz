# Tested with Python 3.9.7 (default, Nov 24 2021, 22:07:03) [GCC 10.3.0] on linux
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